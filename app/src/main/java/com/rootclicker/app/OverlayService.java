package com.rootclicker.app;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemClock;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.provider.Settings;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public final class OverlayService extends Service {
    public static final String ACTION_STOP = "com.rootclicker.app.action.STOP";
    private static final int FGS_TYPE_SPECIAL_USE = 1073741824;
    private static OverlayService instance;
    private static volatile boolean requestedRunning;
    private boolean a11yMode;
    private TextView addPointButton;
    private GradientDrawable cellLockedBg;
    private GradientDrawable cellLockedSelectedBg;
    private GradientDrawable cellNormalBg;
    private GradientDrawable cellSelectedBg;
    private Handler clock;
    private HandlerThread clockThread;
    private WindowManager.LayoutParams confirmParams;
    private View confirmView;
    private ControlBarView controlBar;
    private boolean controlBarShown;
    private WindowManager.LayoutParams controlParams;
    private GridLayout countGrid;
    private View countPanel;
    private WindowManager.LayoutParams countPanelParams;
    private boolean countPanelPinned;
    private int countPanelWidth;
    private ScrollView countScroll;
    private TextView countSummary;
    private int crossIntervalMs;
    private int current;
    private TextView currentTab;
    private boolean dimFrozen;
    private PointEditorView editor;
    private int holdMs;
    private int intervalMs;
    private LanLink lanLink;
    private long lastCellTapAt;
    private int lastCellTapValue;
    private boolean lastCellTapWasTarget;
    private boolean pendingTrim;
    private LinearLayout pointsList;
    private boolean pointsUiSync;
    private LinearLayout relationList;
    private TextView relationStatus;
    private TextView relationTitle;
    private boolean reopenCountAfterEdit;
    private int runHeight;
    private int runNeeded;
    private boolean runSequential;
    private volatile int runSession;
    private int runStart;
    private long runStartedAt;
    private int runWidth;
    private boolean running;
    private int sequentialGapMs;
    private boolean starting;
    private TextView statusView;
    private int target;
    private TextView targetTab;
    private Vibrator vibrator;
    private WindowManager wm;
    private final ArrayList<MarkerView> markers = new ArrayList<>();
    private final ArrayList<WindowManager.LayoutParams> markerParamsList = new ArrayList<>();
    private final Handler ui = new Handler(Looper.getMainLooper());
    private final RootClient root = new RootClient();
    private final KeyInterruptMonitor keys = new KeyInterruptMonitor(new KeyInterruptMonitor.Callback() { // from class: com.rootclicker.app.OverlayService.1
        @Override // com.rootclicker.app.KeyInterruptMonitor.Callback
        public final void onInterrupt(int i) {
            OverlayService.this.m38lambda$new$0$comrootclickerappOverlayService(i);
        }
    });
    private int helperWidth = -1;
    private int helperHeight = -1;
    private boolean editingCurrent = true;
    private final ArrayList<ClickPoint> pointItems = new ArrayList<>();
    private final ArrayList<Integer> activeIndices = new ArrayList<>();
    private ArrayList<ClickPoint> runPoints = new ArrayList<>();
    private int runSubInterval = 100;
    private int runHold = 50;
    private final Object tapLock = new Object();
    private String relationText = "没有从属关系";
    private long lastRunMs = -1;
    private final ArrayList<LinearLayout> gridCells = new ArrayList<>();

    private int overlayType() {
        return 2038;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    public void toast(String str) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void successToast(final String str) {
        this.ui.post(new Runnable(this) { // from class: com.rootclicker.app.OverlayService.2
            final /* synthetic */ OverlayService this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.this$0.m56lambda$toast$0$comrootclickerappOverlayService(str);
            }
        });
    }

    void m38lambda$new$0$comrootclickerappOverlayService(final int i) {
        this.ui.post(new Runnable(this) { // from class: com.rootclicker.app.OverlayService.3
            final /* synthetic */ OverlayService this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.this$0.m39lambda$new$1$comrootclickerappOverlayService(i);
            }
        });
    }

    public static OverlayService get() {
        return instance;
    }

    public static boolean isRunning() {
        return requestedRunning;
    }

    public static void setRequestedRunning(boolean z) {
        requestedRunning = z;
    }

    public static void resetCountDefaults(Context context) {
        Prefs.setCurrent(context, 0);
        Prefs.setTarget(context, 10);
        OverlayService overlayService = instance;
        if (overlayService == null) {
            return;
        }
        overlayService.ui.post(new Runnable() { // from class: com.rootclicker.app.OverlayService.4
            @Override // java.lang.Runnable
            public final void run() {
                OverlayService.lambda$resetCountDefaults$0(OverlayService.this);
            }
        });
        LanLink lanLink = overlayService.lanLink;
        if (lanLink == null || !lanLink.isMaster()) {
            return;
        }
        overlayService.lanLink.sendReset();
    }

    static void lambda$resetCountDefaults$0(OverlayService overlayService) {
        overlayService.current = 0;
        overlayService.target = 10;
        overlayService.dimFrozen = false;
        overlayService.pendingTrim = false;
        overlayService.refreshCountGrid();
        overlayService.applyCellStyles();
        overlayService.scrollTargetRowToTop();
    }

    public static void resetCurrentCount() {
        OverlayService overlayService = instance;
        if (overlayService == null) {
            return;
        }
        overlayService.ui.post(new Runnable() { // from class: com.rootclicker.app.OverlayService.5
            @Override // java.lang.Runnable
            public final void run() {
                OverlayService.lambda$resetCurrentCount$0(OverlayService.this);
            }
        });
    }

    static void lambda$resetCurrentCount$0(OverlayService overlayService) {
        overlayService.current = 0;
        Prefs.setCurrent(overlayService, 0);
        overlayService.updateMarkers();
        overlayService.updateLiveCount();
        overlayService.refreshCountGrid();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        instance = this;
        requestedRunning = true;
        this.wm = (WindowManager) getSystemService("window");
        this.vibrator = (Vibrator) getSystemService("vibrator");
        HandlerThread handlerThread = new HandlerThread("RootClicker-clock");
        this.clockThread = handlerThread;
        handlerThread.start();
        this.clock = new Handler(this.clockThread.getLooper());
        this.intervalMs = Prefs.getInterval(this);
        this.holdMs = Prefs.getHold(this);
        this.crossIntervalMs = Prefs.getCrossInterval(this);
        this.sequentialGapMs = Prefs.getSequentialGap(this);
        loadPoints();
        this.current = Prefs.getCurrent(this);
        this.target = Prefs.getTarget(this);
        startForegroundNotification();
        if (!Settings.canDrawOverlays(this)) {
            toast("缺少悬浮窗权限");
            stopSelf();
        } else {
            showControlBar();
            updateMarkers();
            startLanLink();
        }
    }

    private void startLanLink() {
        LanLink lanLink = new LanLink(this);
        this.lanLink = lanLink;
        lanLink.setListener(new LanLink.Listener() { // from class: com.rootclicker.app.OverlayService.6
            @Override // com.rootclicker.app.LanLink.Listener
            public void onPeers(List<LanLink.Peer> list) {
                OverlayService.this.refreshRelationPanel();
            }

            @Override // com.rootclicker.app.LanLink.Listener
            public void onRoleChanged(int i, int i2) {
                String str;
                OverlayService overlayService = OverlayService.this;
                if (i == 2) {
                    str = "当前关系：从";
                } else if (i == 1) {
                    str = "主" + i2;
                } else {
                    str = "没有从属关系";
                }
                overlayService.relationText = str;
                OverlayService.this.updateRelationStatus();
                OverlayService.this.refreshRelationPanel();
                if (i != 1 || OverlayService.this.lanLink == null) {
                    return;
                }
                OverlayService.this.lanLink.sendTarget(OverlayService.this.target);
            }

            @Override // com.rootclicker.app.LanLink.Listener
            public void onRemoteTarget(int i) {
                if (OverlayService.this.countPanel == null) {
                    return;
                }
                OverlayService.this.applyRemoteTarget(i);
            }

            @Override // com.rootclicker.app.LanLink.Listener
            public void onRemoteRun() {
                if (OverlayService.this.countPanel == null) {
                    return;
                }
                OverlayService.this.startRun(true);
            }

            @Override // com.rootclicker.app.LanLink.Listener
            public void onRemoteReset() {
                if (OverlayService.this.countPanel == null) {
                    return;
                }
                OverlayService.this.applyRemoteReset();
            }

            @Override // com.rootclicker.app.LanLink.Listener
            public void onNotice(String str) {
                OverlayService.this.toast(str);
            }
        });
        this.lanLink.start();
        updateRelationStatus();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent == null || !ACTION_STOP.equals(intent.getAction())) {
            return 1;
        }
        requestedRunning = false;
        stopSelf();
        return 2;
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.runSession++;
        this.running = false;
        this.starting = false;
        Handler handler = this.clock;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        HandlerThread handlerThread = this.clockThread;
        if (handlerThread != null) {
            handlerThread.quitSafely();
            this.clockThread = null;
            this.clock = null;
        }
        LanLink lanLink = this.lanLink;
        if (lanLink != null) {
            lanLink.stop();
            this.lanLink = null;
        }
        removeEditor();
        hideCountPanel();
        ControlBarView controlBarView = this.controlBar;
        if (controlBarView != null) {
            try {
                this.wm.removeView(controlBarView);
                this.controlBarShown = false;
            } catch (Exception unused) {
            }
            this.controlBar = null;
        }
        removeAllMarkers();
        new Thread(new Runnable() { // from class: com.rootclicker.app.OverlayService.7
            @Override // java.lang.Runnable
            public final void run() {
                OverlayService.this.m41lambda$onDestroy$0$comrootclickerappOverlayService();
            }
        }, "RootClicker-shutdown").start();
        instance = null;
        requestedRunning = false;
        stopForeground(true);
        super.onDestroy();
    }

    void m41lambda$onDestroy$0$comrootclickerappOverlayService() {
        this.keys.stop();
        this.root.stop();
    }

    public int dp(float f) {
        return Math.round(f * getResources().getDisplayMetrics().density);
    }

    private void startForegroundNotification() {
        NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
        if (notificationManager != null) {
            notificationManager.createNotificationChannel(new NotificationChannel("rc", "冲榜小能手", 2));
        }
        Notification notificationBuild = new Notification.Builder(this, "rc").setContentTitle("冲榜小能手 运行中").setContentText("音量加、音量减或电源键可中断点击").setSmallIcon(android.R.drawable.ic_menu_myplaces).setOngoing(true).build();
        if (Build.VERSION.SDK_INT >= 34) {
            try {
                startForeground(1001, notificationBuild, FGS_TYPE_SPECIAL_USE);
                return;
            } catch (Exception unused) {
            }
        }
        startForeground(1001, notificationBuild);
    }

    private void showControlBar() {
        this.controlBar = new ControlBarView();
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(dp(62.0f), dp(52.0f), overlayType(), 264, -3);
        this.controlParams = layoutParams;
        layoutParams.gravity = 8388659;
        this.controlParams.x = dp(16.0f);
        this.controlParams.y = dp(110.0f);
        try {
            this.wm.addView(this.controlBar, this.controlParams);
            this.controlBarShown = true;
        } catch (Exception e) {
            toast("无法显示悬浮窗: " + e.getMessage());
            stopSelf();
        }
    }

    private void loadPoints() {
        this.pointItems.clear();
        this.pointItems.addAll(Prefs.getPoints(this));
        this.activeIndices.clear();
        ArrayList<Integer> activeIndices = Prefs.getActiveIndices(this);
        ArrayList arrayList = new ArrayList();
        for (Integer num : activeIndices) {
            if (num.intValue() >= 0 && num.intValue() < this.pointItems.size() && !arrayList.contains(num)) {
                arrayList.add(num);
                this.activeIndices.add(num);
            }
        }
    }

    private ClickPoint activePoint() {
        int iIntValue;
        if (!this.activeIndices.isEmpty() && (iIntValue = this.activeIndices.get(0).intValue()) >= 0 && iIntValue < this.pointItems.size()) {
            return this.pointItems.get(iIntValue);
        }
        return null;
    }

    private boolean isPointActive(int i) {
        return this.activeIndices.contains(Integer.valueOf(i));
    }

    private int activeOrderOf(int i) {
        int iIndexOf = this.activeIndices.indexOf(Integer.valueOf(i));
        if (iIndexOf < 0) {
            return -1;
        }
        return iIndexOf + 1;
    }

    private ArrayList<ClickPoint> activePoints() {
        ArrayList<ClickPoint> arrayList = new ArrayList<>();
        Iterator<Integer> it = this.activeIndices.iterator();
        while (it.hasNext()) {
            int iIntValue = it.next().intValue();
            if (iIntValue >= 0 && iIntValue < this.pointItems.size()) {
                arrayList.add(this.pointItems.get(iIntValue));
            }
        }
        return arrayList;
    }

    public void persistPoints() {
        Prefs.savePoints(this, this.pointItems, this.activeIndices);
    }

    public void closeFloatingWindow() {
        this.runSession++;
        this.running = false;
        this.starting = false;
        this.dimFrozen = false;
        this.pendingTrim = false;
        Handler handler = this.clock;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        Prefs.setCurrent(this, this.current);
        this.keys.stop();
        removeConfirm();
        removeEditor();
        hideCountPanel();
        setPanelFocusable(false);
        removeAllMarkers();
        setControlBarVisible(false);
        stopSelf();
    }

    private void setPanelFocusable(boolean z) {
        WindowManager.LayoutParams layoutParams;
        if (this.countPanel == null || (layoutParams = this.countPanelParams) == null) {
            return;
        }
        int i = (z ? 0 : 8) | 32;
        if (layoutParams.flags == i) {
            return;
        }
        this.countPanelParams.flags = i;
        try {
            this.wm.updateViewLayout(this.countPanel, this.countPanelParams);
        } catch (Exception unused) {
        }
    }

    private void clearPanelFocus() {
        View viewFindFocus;
        View view = this.countPanel;
        if (view != null && (viewFindFocus = view.findFocus()) != null) {
            viewFindFocus.clearFocus();
        }
        setPanelFocusable(false);
    }

    private void setControlBarVisible(boolean z) {
        ControlBarView controlBarView = this.controlBar;
        if (controlBarView == null || z == this.controlBarShown) {
            return;
        }
        try {
            if (z) {
                this.wm.addView(controlBarView, this.controlParams);
            } else {
                this.wm.removeView(controlBarView);
            }
            this.controlBarShown = z;
        } catch (Exception unused) {
        }
    }

    private void addCollapsible(LinearLayout linearLayout, String str, LinearLayout linearLayout2, boolean z) {
        sectionHeader(linearLayout, str, linearLayout2, z);
        linearLayout.addView(linearLayout2, new LinearLayout.LayoutParams(-1, -2));
    }

    private LinearLayout buildRelationBody() {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(dp(10.0f), dp(8.0f), dp(10.0f), dp(8.0f));
        linearLayout.setBackground(roundRect(Color.rgb(239, 240, 244), 12.0f));
        TextView textViewText = text(this.relationText, 12.0f, Color.rgb(49, 50, 59));
        this.relationStatus = textViewText;
        textViewText.setTypeface(Typeface.DEFAULT_BOLD);
        this.relationStatus.setPadding(0, 0, 0, dp(4.0f));
        linearLayout.addView(this.relationStatus);
        TextView textViewText2 = text("同一 WiFi 下打开本软件的设备会自动出现在这里，打开开关即可连接，对方无需同意。", 11.0f, Color.rgb(120, 122, 133));
        textViewText2.setLineSpacing(dp(1.0f), 1.15f);
        linearLayout.addView(textViewText2);
        LinearLayout linearLayout2 = new LinearLayout(this);
        this.relationList = linearLayout2;
        linearLayout2.setOrientation(1);
        linearLayout.addView(this.relationList, new LinearLayout.LayoutParams(-1, -2));
        refreshRelationPanel();
        return linearLayout;
    }

    public void refreshRelationPanel() {
        TextView textView = this.relationStatus;
        if (textView != null) {
            textView.setText(this.relationText);
        }
        LinearLayout linearLayout = this.relationList;
        if (linearLayout == null) {
            return;
        }
        linearLayout.removeAllViews();
        LanLink lanLink = this.lanLink;
        List<LanLink.Peer> arrayList = lanLink == null ? new ArrayList<>() : lanLink.getPeers();
        if (arrayList.isEmpty()) {
            TextView textViewText = text("暂未发现同 WiFi 下的设备", 11.0f, Color.rgb(120, 122, 133));
            textViewText.setPadding(0, dp(6.0f), 0, dp(2.0f));
            this.relationList.addView(textViewText);
            return;
        }
        for (final LanLink.Peer peer : arrayList) {
            LinearLayout linearLayout2 = new LinearLayout(this);
            linearLayout2.setOrientation(0);
            linearLayout2.setGravity(16);
            linearLayout2.setPadding(0, dp(4.0f), 0, dp(4.0f));
            linearLayout2.addView(text(peer.name, 13.0f, Color.rgb(49, 50, 59)), new LinearLayout.LayoutParams(0, -2, 1.0f));
            linearLayout2.addView(smallSwitch(peer.connected, new Consumer(this) { // from class: com.rootclicker.app.OverlayService.8
                final /* synthetic */ OverlayService this$0;

                {
                    this.this$0 = this;
                }

                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.this$0.m47lambda$refreshRelationPanel$0$comrootclickerappOverlayService(peer, (Boolean) obj);
                }
            }), new LinearLayout.LayoutParams(dp(26.0f), dp(14.0f)));
            this.relationList.addView(linearLayout2, new LinearLayout.LayoutParams(-1, -2));
        }
    }

    void m47lambda$refreshRelationPanel$0$comrootclickerappOverlayService(LanLink.Peer peer, Boolean bool) {
        if (bool.booleanValue()) {
            LanLink lanLink = this.lanLink;
            if (lanLink != null) {
                lanLink.connect(peer);
                return;
            }
            return;
        }
        LanLink lanLink2 = this.lanLink;
        if (lanLink2 != null) {
            lanLink2.disconnect(peer.id);
        }
    }

    public void updateRelationStatus() {
        TextView textView = this.relationStatus;
        if (textView != null) {
            textView.setText(this.relationText);
        }
        TextView textView2 = this.relationTitle;
        if (textView2 != null) {
            textView2.setText(this.relationText);
        }
    }

    static void updateDeviceName() {
        LanLink lanLink;
        OverlayService overlayService = instance;
        if (overlayService == null || (lanLink = overlayService.lanLink) == null) {
            return;
        }
        lanLink.updateName(Prefs.getDeviceName(overlayService));
    }

    public void applyRemoteTarget(int i) {
        int iClamp = clamp(i, 1, 80);
        this.target = iClamp;
        Prefs.setTarget(this, iClamp);
        if (this.countGrid != null) {
            selectCountMode(false);
            scrollTargetRowToTop();
        } else {
            applyCellStyles();
        }
        updateLiveCount();
    }

    public void applyRemoteReset() {
        this.current = 0;
        this.target = 10;
        Prefs.setCurrent(this, 0);
        Prefs.setTarget(this, 10);
        this.dimFrozen = false;
        this.pendingTrim = false;
        refreshCountGrid();
        applyCellStyles();
        scrollTargetRowToTop();
        updateLiveCount();
        MainActivity.requestExternalReset();
    }

    private LinearLayout buildTimingBody() {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(dp(4.0f), dp(6.0f), dp(4.0f), dp(4.0f));
        final EditText editTextNumberInput = numberInput(this.intervalMs);
        final EditText editTextNumberInput2 = numberInput(this.holdMs);
        final EditText editTextNumberInput3 = numberInput(this.crossIntervalMs);
        final EditText editTextNumberInput4 = numberInput(this.sequentialGapMs);
        linearLayout.addView(inputRow("点击间隔", "毫秒", editTextNumberInput));
        linearLayout.addView(inputRow("按压时间", "毫秒", editTextNumberInput2));
        linearLayout.addView(inputRow("交叉间隔", "毫秒", editTextNumberInput3));
        linearLayout.addView(inputRow("顺序点位间隔", "毫秒", editTextNumberInput4));
        TextWatcher textWatcher = new TextWatcher(this) { // from class: com.rootclicker.app.OverlayService.9
            final /* synthetic */ OverlayService this$0;

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            {
                this.this$0 = this;
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                boolean z;
                Integer numPositiveNumber = this.this$0.positiveNumber(editTextNumberInput);
                boolean z2 = true;
                if (numPositiveNumber == null || numPositiveNumber.intValue() == this.this$0.intervalMs) {
                    z = false;
                } else {
                    this.this$0.intervalMs = numPositiveNumber.intValue();
                    OverlayService overlayService = this.this$0;
                    Prefs.setInterval(overlayService, overlayService.intervalMs);
                    z = true;
                }
                Integer numPositiveNumber2 = this.this$0.positiveNumber(editTextNumberInput2);
                if (numPositiveNumber2 != null && numPositiveNumber2.intValue() != this.this$0.holdMs) {
                    this.this$0.holdMs = numPositiveNumber2.intValue();
                    OverlayService overlayService2 = this.this$0;
                    Prefs.setHold(overlayService2, overlayService2.holdMs);
                    z = true;
                }
                Integer numPositiveNumber3 = this.this$0.positiveNumber(editTextNumberInput3);
                if (numPositiveNumber3 != null && numPositiveNumber3.intValue() != this.this$0.crossIntervalMs) {
                    this.this$0.crossIntervalMs = numPositiveNumber3.intValue();
                    OverlayService overlayService3 = this.this$0;
                    Prefs.setCrossInterval(overlayService3, overlayService3.crossIntervalMs);
                    z = true;
                }
                Integer numPositiveNumber4 = this.this$0.positiveNumber(editTextNumberInput4);
                if (numPositiveNumber4 == null || numPositiveNumber4.intValue() == this.this$0.sequentialGapMs) {
                    z2 = z;
                } else {
                    this.this$0.sequentialGapMs = numPositiveNumber4.intValue();
                    OverlayService overlayService4 = this.this$0;
                    Prefs.setSequentialGap(overlayService4, overlayService4.sequentialGapMs);
                }
                if (z2) {
                    this.this$0.reconfigureRunning();
                }
            }
        };
        editTextNumberInput.addTextChangedListener(textWatcher);
        editTextNumberInput2.addTextChangedListener(textWatcher);
        editTextNumberInput3.addTextChangedListener(textWatcher);
        editTextNumberInput4.addTextChangedListener(textWatcher);
        return linearLayout;
    }

    private TextView sectionHeader(LinearLayout linearLayout, final String str, final LinearLayout linearLayout2, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(z ? "  ▾" : "  ▸");
        final TextView textViewText = text(sb.toString(), 11.0f, Color.rgb(43, 44, 53));
        textViewText.setTypeface(Typeface.DEFAULT_BOLD);
        textViewText.setGravity(16);
        textViewText.setPadding(dp(8.0f), dp(4.0f), dp(6.0f), dp(4.0f));
        textViewText.setBackground(roundRect(Color.rgb(232, 233, 239), 9.0f));
        linearLayout.addView(textViewText, layoutMargins(-1, -2, 0, 4, 0, 0));
        linearLayout2.setVisibility(z ? 0 : 8);
        textViewText.setOnClickListener(new View.OnClickListener(this) { // from class: com.rootclicker.app.OverlayService.10
            final /* synthetic */ OverlayService this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OverlayService.lambda$sectionHeader$0(linearLayout2, textViewText, str, view);
            }
        });
        return textViewText;
    }

    static void lambda$sectionHeader$0(LinearLayout linearLayout, TextView textView, String str, View view) {
        boolean z = linearLayout.getVisibility() != 0;
        linearLayout.setVisibility(z ? 0 : 8);
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(z ? "  ▾" : "  ▸");
        textView.setText(sb.toString());
    }

    private View inputRow(String str, String str2, EditText editText) {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(0, dp(8.0f), 0, 0);
        linearLayout.addView(text(str, 12.0f, Color.rgb(120, 122, 133)));
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        linearLayout2.addView(stepButton("−", editText, -1), new LinearLayout.LayoutParams(dp(22.0f), dp(24.0f)));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dp(58.0f), dp(26.0f));
        layoutParams.setMargins(dp(6.0f), 0, dp(6.0f), 0);
        linearLayout2.addView(editText, layoutParams);
        linearLayout2.addView(stepButton("＋", editText, 1), new LinearLayout.LayoutParams(dp(22.0f), dp(24.0f)));
        TextView textViewText = text(str2, 12.0f, -7829368);
        textViewText.setPadding(dp(6.0f), 0, 0, 0);
        linearLayout2.addView(textViewText, new LinearLayout.LayoutParams(-2, -2));
        linearLayout.addView(linearLayout2, new LinearLayout.LayoutParams(-1, -2));
        return linearLayout;
    }

    private TextView stepButton(String str, final EditText editText, final int i) {
        TextView textView = new TextView(this);
        textView.setText(str);
        textView.setTextSize(11.0f);
        textView.setTextColor(Color.rgb(55, 56, 65));
        textView.setGravity(17);
        textView.setBackground(roundRect(Color.rgb(232, 233, 239), 7.0f));
        textView.setOnClickListener(new View.OnClickListener(this) { // from class: com.rootclicker.app.OverlayService.11
            final /* synthetic */ OverlayService this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.this$0.m54lambda$stepButton$0$comrootclickerappOverlayService(editText, i, view);
            }
        });
        return textView;
    }

    void m54lambda$stepButton$0$comrootclickerappOverlayService(EditText editText, int i, View view) {
        Integer numPositiveNumber = positiveNumber(editText);
        editText.setText(String.valueOf(Math.max(10, Math.min(60000, (numPositiveNumber == null ? 0 : numPositiveNumber.intValue()) + (i * 10)))));
        editText.setSelection(editText.getText().length());
    }

    private EditText numberInput(int i) {
        EditText editText = new EditText(this);
        editText.setText(String.valueOf(i));
        editText.setTextSize(13.0f);
        editText.setGravity(17);
        editText.setSingleLine(true);
        editText.setIncludeFontPadding(false);
        editText.setMinHeight(0);
        editText.setMinimumHeight(0);
        editText.setPadding(0, 0, 0, 0);
        editText.setInputType(2);
        editText.setSelectAllOnFocus(true);
        editText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.rootclicker.app.OverlayService.12
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                OverlayService.this.m40lambda$numberInput$0$comrootclickerappOverlayService(view, z);
            }
        });
        return editText;
    }

    void m40lambda$numberInput$0$comrootclickerappOverlayService(View view, boolean z) {
        setPanelFocusable(z);
    }

    public Integer positiveNumber(EditText editText) {
        try {
            int i = Integer.parseInt(editText.getText().toString().trim());
            if (i > 0) {
                return Integer.valueOf(i);
            }
        } catch (NumberFormatException unused) {
        }
        return null;
    }

    private LinearLayout buildWindowSettingsBody() {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(dp(10.0f), dp(10.0f), dp(10.0f), dp(6.0f));
        linearLayout.setBackground(roundRect(Color.rgb(239, 240, 244), 12.0f));
        linearLayout.addView(switchRow("执行时显示窗口", Prefs.getShowDuringRun(this), new Consumer() { // from class: com.rootclicker.app.OverlayService.13
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                OverlayService.this.m29x253fcb89((Boolean) obj);
            }
        }));
        linearLayout.addView(switchRow("执行完成后显示窗口", Prefs.getShowAfterRun(this), new Consumer() { // from class: com.rootclicker.app.OverlayService.14
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                OverlayService.this.m30x997f03e8((Boolean) obj);
            }
        }));
        return linearLayout;
    }

    void m29x253fcb89(Boolean bool) {
        Prefs.setShowDuringRun(this, bool.booleanValue());
        if (this.running || this.starting) {
            if (bool.booleanValue() && this.countPanel == null) {
                buildCountPanel();
            } else {
                if (bool.booleanValue() || this.countPanel == null) {
                    return;
                }
                hideCountPanel();
            }
        }
    }

    void m30x997f03e8(Boolean bool) {
        Prefs.setShowAfterRun(this, bool.booleanValue());
    }

    private View switchRow(String str, boolean z, Consumer<Boolean> consumer) {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        linearLayout.setPadding(0, dp(4.0f), 0, dp(4.0f));
        linearLayout.addView(text(str, 14.0f, Color.rgb(49, 50, 59)), new LinearLayout.LayoutParams(0, -2, 1.0f));
        linearLayout.addView(smallSwitch(z, consumer), new LinearLayout.LayoutParams(dp(26.0f), dp(14.0f)));
        return linearLayout;
    }

    private View smallSwitch(boolean z, final Consumer<Boolean> consumer) {
        int i;
        int i2;
        int i3;
        final int iDp = dp(26.0f);
        final int iDp2 = dp(14.0f);
        final int iDp3 = dp(2.0f);
        final int i4 = iDp2 - (iDp3 * 2);
        final FrameLayout frameLayout = new FrameLayout(this);
        final boolean[] zArr = {z};
        View view = new View(this);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(-1);
        view.setBackground(gradientDrawable);
        view.setElevation(dp(1.0f));
        final View[] viewArr = {view};
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i4, i4);
        layoutParams.gravity = 8388627;
        layoutParams.leftMargin = z ? (iDp - i4) - iDp3 : iDp3;
        frameLayout.addView(view, layoutParams);
        if (z) {
            i = 91;
            i2 = 165;
            i3 = 75;
        } else {
            i = 199;
            i2 = 206;
            i3 = 198;
        }
        frameLayout.setBackground(roundRect(Color.rgb(i3, i, i2), iDp2 / 2));
        frameLayout.setOnClickListener(new View.OnClickListener(this) { // from class: com.rootclicker.app.OverlayService.15
            final /* synthetic */ OverlayService this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.this$0.m49lambda$smallSwitch$0$comrootclickerappOverlayService(zArr, viewArr, iDp, i4, iDp3, frameLayout, iDp2, consumer, view2);
            }
        });
        return frameLayout;
    }

    void m49lambda$smallSwitch$0$comrootclickerappOverlayService(boolean[] zArr, View[] viewArr, int i, int i2, int i3, FrameLayout frameLayout, int i4, Consumer consumer, View view) {
        int i5;
        int i6;
        int i7;
        zArr[0] = !zArr[0];
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) viewArr[0].getLayoutParams();
        if (zArr[0]) {
            i3 = (i - i2) - i3;
        }
        layoutParams.leftMargin = i3;
        viewArr[0].setLayoutParams(layoutParams);
        if (zArr[0]) {
            i5 = 91;
            i6 = 165;
            i7 = 75;
        } else {
            i5 = 199;
            i6 = 206;
            i7 = 198;
        }
        frameLayout.setBackground(roundRect(Color.rgb(i7, i5, i6), i4 / 2));
        consumer.accept(Boolean.valueOf(zArr[0]));
    }

    private void addPointClicked() {
        if (this.pointItems.size() >= Prefs.getMaxPoints()) {
            toast("最多保存" + Prefs.getMaxPoints() + "个坐标，请先删除一个坐标");
            return;
        }
        enterEdit();
    }

    private LinearLayout buildCoordinateBlock() {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(dp(10.0f), dp(10.0f), dp(10.0f), dp(10.0f));
        linearLayout.setBackground(roundRect(Color.rgb(239, 240, 244), 12.0f));
        TextView textView = new TextView(this);
        this.addPointButton = textView;
        textView.setText("新增坐标点");
        this.addPointButton.setTextSize(12.0f);
        this.addPointButton.setTextColor(-1);
        this.addPointButton.setTypeface(Typeface.DEFAULT_BOLD);
        this.addPointButton.setGravity(17);
        this.addPointButton.setAllCaps(false);
        this.addPointButton.setBackground(roundRect(Color.rgb(75, 91, 165), 8.0f));
        this.addPointButton.setOnClickListener(new View.OnClickListener() { // from class: com.rootclicker.app.OverlayService.16
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OverlayService.this.m25lambda$buildCoordinateBlock$0$comrootclickerappOverlayService(view);
            }
        });
        linearLayout.addView(this.addPointButton, new LinearLayout.LayoutParams(-1, dp(20.0f)));
        LinearLayout linearLayout2 = new LinearLayout(this);
        this.pointsList = linearLayout2;
        linearLayout2.setOrientation(1);
        linearLayout.addView(this.pointsList, new LinearLayout.LayoutParams(-1, -2));
        return linearLayout;
    }

    void m25lambda$buildCoordinateBlock$0$comrootclickerappOverlayService(View view) {
        addPointClicked();
    }

    private void refreshCoordinateViews() {
        if (this.pointsList == null) {
            return;
        }
        this.addPointButton.setText(this.pointItems.isEmpty() ? "添加坐标点" : "新增坐标点");
        this.pointsUiSync = true;
        this.pointsList.removeAllViews();
        for (int i = 0; i < this.pointItems.size(); i++) {
            this.pointsList.addView(pointCard(i));
        }
        this.pointsUiSync = false;
    }

    private View pointCard(final int i) {
        int i2;
        int i3;
        int i4;
        final ClickPoint clickPoint = this.pointItems.get(i);
        boolean zIsPointActive = isPointActive(i);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(dp(4.0f), dp(4.0f), dp(4.0f), dp(4.0f));
        linearLayout.setBackground(roundRect(zIsPointActive ? Color.rgb(226, 230, 246) : -1, 8.0f));
        new LinearLayout.LayoutParams(-1, -2).setMargins(0, dp(3.0f), 0, 0);
        EditText editText = new EditText(this);
        editText.setSingleLine(true);
        editText.setTextSize(11.0f);
        editText.setText(clickPoint.name);
        editText.setBackground(roundRect(Color.rgb(245, 246, 249), 8.0f));
        editText.setPadding(dp(8.0f), 0, dp(8.0f), 0);
        editText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.rootclicker.app.OverlayService.17
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z2) {
                OverlayService.this.m42lambda$pointCard$0$comrootclickerappOverlayService(view, z2);
            }
        });
        editText.addTextChangedListener(new TextWatcher(this) { // from class: com.rootclicker.app.OverlayService.18
            final /* synthetic */ OverlayService this$0;

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
            }

            {
                this.this$0 = this;
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (this.this$0.pointsUiSync) {
                    return;
                }
                String strTrim = editable.toString().trim();
                if (strTrim.isEmpty()) {
                    return;
                }
                clickPoint.name = strTrim;
                this.this$0.persistPoints();
            }
        });
        linearLayout.addView(editText, new LinearLayout.LayoutParams(-1, dp(20.0f)));
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        TextView textViewText = text("删除", 11.0f, Color.rgb(196, 60, 60));
        textViewText.setGravity(17);
        textViewText.setBackground(roundRect(Color.rgb(246, 234, 234), 8.0f));
        textViewText.setOnClickListener(new View.OnClickListener(this) { // from class: com.rootclicker.app.OverlayService.19
            final /* synthetic */ OverlayService this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.this$0.m43lambda$pointCard$1$comrootclickerappOverlayService(i, view);
            }
        });
        linearLayout2.addView(textViewText, new LinearLayout.LayoutParams(0, dp(20.0f), 1.0f));
        TextView textViewText2 = text(zIsPointActive ? "使用中" : "应用", 11.0f, -1);
        textViewText2.setGravity(17);
        textViewText2.setTypeface(Typeface.DEFAULT_BOLD);
        if (zIsPointActive) {
            i2 = 134;
            i3 = 191;
            i4 = 122;
        } else {
            i2 = 91;
            i3 = 165;
            i4 = 75;
        }
        textViewText2.setBackground(roundRect(Color.rgb(i4, i2, i3), 8.0f));
        textViewText2.setOnClickListener(new View.OnClickListener(this) { // from class: com.rootclicker.app.OverlayService.20
            final /* synthetic */ OverlayService this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.this$0.m44lambda$pointCard$2$comrootclickerappOverlayService(i, view);
            }
        });
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, dp(20.0f), 1.0f);
        layoutParams.setMargins(dp(3.0f), 0, 0, 0);
        linearLayout2.addView(textViewText2, layoutParams);
        linearLayout.addView(linearLayout2, new LinearLayout.LayoutParams(-1, -2));
        return linearLayout;
    }

    void m42lambda$pointCard$0$comrootclickerappOverlayService(View view, boolean z) {
        setPanelFocusable(z);
    }

    void m43lambda$pointCard$1$comrootclickerappOverlayService(int i, View view) {
        confirmDeletePoint(i);
    }

    void m44lambda$pointCard$2$comrootclickerappOverlayService(int i, View view) {
        togglePoint(i);
    }

    private void togglePoint(int i) {
        if (i < 0 || i >= this.pointItems.size()) {
            return;
        }
        if (this.running || this.starting) {
            stopRun();
        }
        ClickPoint clickPoint = this.pointItems.get(i);
        if (isPointActive(i)) {
            this.activeIndices.remove(Integer.valueOf(i));
            toast("已取消：" + clickPoint.name);
        } else {
            this.activeIndices.add(Integer.valueOf(i));
            toast("已应用：" + clickPoint.name + "（" + this.activeIndices.size() + "号）");
        }
        persistPoints();
        refreshCoordinateViews();
        updateMarkers();
    }

    private void confirmDeletePoint(final int i) {
        if (this.confirmView != null || i < 0 || i >= this.pointItems.size()) {
            return;
        }
        ClickPoint clickPoint = this.pointItems.get(i);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setBackgroundColor(1711276032);
        frameLayout.setClickable(true);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(dp(16.0f), dp(16.0f), dp(16.0f), dp(12.0f));
        linearLayout.setBackground(roundRect(Color.rgb(250, 250, 252), 14.0f));
        frameLayout.addView(linearLayout, new FrameLayout.LayoutParams(dp(260.0f), -2, 17));
        TextView textViewText = text("删除坐标点", 15.0f, Color.rgb(43, 44, 53));
        textViewText.setTypeface(Typeface.DEFAULT_BOLD);
        linearLayout.addView(textViewText);
        TextView textViewText2 = text("确定删除 " + clickPoint.name + " 吗？删除后不可恢复。", 13.0f, Color.rgb(120, 122, 133));
        textViewText2.setPadding(0, dp(8.0f), 0, dp(12.0f));
        linearLayout.addView(textViewText2);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        TextView textViewText3 = text("取消", 13.0f, Color.rgb(55, 56, 65));
        textViewText3.setGravity(17);
        textViewText3.setBackground(roundRect(Color.rgb(228, 229, 235), 10.0f));
        textViewText3.setOnClickListener(new View.OnClickListener() { // from class: com.rootclicker.app.OverlayService.21
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OverlayService.this.m34lambda$confirmDeletePoint$0$comrootclickerappOverlayService(view);
            }
        });
        linearLayout2.addView(textViewText3, new LinearLayout.LayoutParams(0, dp(38.0f), 1.0f));
        TextView textViewText4 = text("删除", 13.0f, -1);
        textViewText4.setGravity(17);
        textViewText4.setTypeface(Typeface.DEFAULT_BOLD);
        textViewText4.setBackground(roundRect(Color.rgb(196, 60, 60), 10.0f));
        textViewText4.setOnClickListener(new View.OnClickListener(this) { // from class: com.rootclicker.app.OverlayService.22
            final /* synthetic */ OverlayService this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.this$0.m35lambda$confirmDeletePoint$1$comrootclickerappOverlayService(i, view);
            }
        });
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, dp(38.0f), 1.0f);
        layoutParams.setMargins(dp(6.0f), 0, 0, 0);
        linearLayout2.addView(textViewText4, layoutParams);
        linearLayout.addView(linearLayout2, new LinearLayout.LayoutParams(-1, -2));
        this.confirmView = frameLayout;
        WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams(-1, -1, overlayType(), 8, -3);
        this.confirmParams = layoutParams2;
        try {
            this.wm.addView(frameLayout, layoutParams2);
        } catch (Exception e) {
            this.confirmView = null;
            toast("无法显示确认窗口: " + e.getMessage());
        }
    }

    void m34lambda$confirmDeletePoint$0$comrootclickerappOverlayService(View view) {
        removeConfirm();
    }

    void m35lambda$confirmDeletePoint$1$comrootclickerappOverlayService(int i, View view) {
        removeConfirm();
        deletePoint(i);
    }

    private void removeConfirm() {
        View view = this.confirmView;
        if (view != null) {
            try {
                this.wm.removeView(view);
            } catch (Exception unused) {
            }
            this.confirmView = null;
        }
    }

    private void deletePoint(int i) {
        if (i < 0 || i >= this.pointItems.size()) {
            return;
        }
        ClickPoint clickPoint = this.pointItems.get(i);
        this.pointItems.remove(i);
        this.activeIndices.remove(Integer.valueOf(i));
        for (int i2 = 0; i2 < this.activeIndices.size(); i2++) {
            if (this.activeIndices.get(i2).intValue() > i) {
                ArrayList<Integer> arrayList = this.activeIndices;
                arrayList.set(i2, Integer.valueOf(arrayList.get(i2).intValue() - 1));
            }
        }
        persistPoints();
        refreshCoordinateViews();
        updateMarkers();
        toast("已删除：" + clickPoint.name);
    }

    public void toggleCountPanel() {
        if (this.countPanel != null) {
            hideCountPanel();
        } else {
            buildCountPanel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void buildCountPanel() {
        int[] iArrDisplaySize = displaySize();
        int[] countPanelRect = Prefs.getCountPanelRect(this);
        int i = countPanelRect[2];
        int iClamp = i > 0 ? clamp(i, dp(214.0f), iArrDisplaySize[0] - dp(24.0f)) : Math.max(dp(232.0f), Math.min(dp(332.0f), iArrDisplaySize[0] - dp(78.0f)));
        int i2 = countPanelRect[3];
        int iClamp2 = i2 > 0 ? clamp(i2, dp(260.0f), iArrDisplaySize[1] - dp(48.0f)) : Math.min(dp(492.0f), Math.round(iArrDisplaySize[1] * 0.58f));
        this.countPanelWidth = iClamp;
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(dp(2.0f), dp(0.0f), dp(2.0f), dp(0.0f));
        linearLayout.setBackground(roundRect(Color.rgb(250, 250, 252), 16.0f));
        FrameLayout frameLayout = new FrameLayout(this);
        View view = new View(this);
        view.setBackground(roundRect(Color.rgb(206, 207, 215), 6.0f));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(dp(46.0f), dp(12.0f));
        layoutParams.gravity = 17;
        frameLayout.addView(view, layoutParams);
        frameLayout.setOnTouchListener(new PanelGesture(false));
        linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(-1, dp(14.0f)));
        FrameLayout frameLayout2 = new FrameLayout(this);
        frameLayout2.setPadding(dp(10.0f), 0, dp(8.0f), 0);
        TextView textViewText = text("设置", 15.0f, Color.rgb(43, 44, 53));
        textViewText.setIncludeFontPadding(false);
        textViewText.setTypeface(Typeface.DEFAULT_BOLD);
        frameLayout2.addView(textViewText, new FrameLayout.LayoutParams(-2, -2, 8388627));
        TextView textViewText2 = text(this.relationText, 10.0f, Color.rgb(75, 91, 165));
        this.relationTitle = textViewText2;
        textViewText2.setTypeface(Typeface.DEFAULT_BOLD);
        this.relationTitle.setGravity(17);
        this.relationTitle.setSingleLine(true);
        this.relationTitle.setPadding(dp(8.0f), dp(3.0f), dp(8.0f), dp(3.0f));
        this.relationTitle.setBackground(roundRect(Color.rgb(236, 238, 248), 9.0f));
        frameLayout2.addView(this.relationTitle, new FrameLayout.LayoutParams(-2, -2, 17));
        TextView textViewText3 = text("✕", 14.0f, Color.rgb(43, 44, 53));
        textViewText3.setGravity(17);
        textViewText3.setPadding(dp(0.0f), dp(0.0f), dp(0.0f), dp(0.0f));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.rgb(231, 232, 238));
        textViewText3.setBackground(gradientDrawable);
        int iDp = dp(26.0f);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(iDp, iDp, 8388629);
        layoutParams2.setMargins(0, 0, dp(2.0f), 0);
        textViewText3.setLayoutParams(layoutParams2);
        textViewText3.setOnClickListener(new View.OnClickListener() { // from class: com.rootclicker.app.OverlayService.23
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                OverlayService.this.m26lambda$buildCountPanel$0$comrootclickerappOverlayService(view2);
            }
        });
        frameLayout2.addView(textViewText3);
        linearLayout.addView(frameLayout2, new LinearLayout.LayoutParams(-1, dp(40.0f)));
        ScrollView scrollView = new ScrollView(this);
        this.countScroll = scrollView;
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(1);
        linearLayout2.setPadding(dp(2.0f), dp(2.0f), dp(2.0f), dp(2.0f));
        addCollapsible(linearLayout2, "从属关系", buildRelationBody(), false);
        addCollapsible(linearLayout2, "① 窗口设置", buildWindowSettingsBody(), false);
        addCollapsible(linearLayout2, "② 点击速度", buildTimingBody(), false);
        addCollapsible(linearLayout2, "③ 点击坐标（最多4个）", buildCoordinateBlock(), false);
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setOrientation(0);
        linearLayout3.setGravity(16);
        TextView textViewText4 = text("④ 点击设置", 11.0f, Color.rgb(43, 44, 53));
        textViewText4.setTypeface(Typeface.DEFAULT_BOLD);
        textViewText4.setPadding(dp(8.0f), dp(8.0f), dp(4.0f), dp(4.0f));
        linearLayout3.addView(textViewText4, new LinearLayout.LayoutParams(0, -2, 1.0f));
        Switch r8 = new Switch(this);
        r8.setText(Prefs.getSequential(this) ? "点位顺序执行" : "点位交叉执行");
        r8.setTextSize(10.0f);
        r8.setTextColor(Color.rgb(55, 56, 65));
        int[][] iArr = {new int[]{android.R.attr.state_checked}, new int[0]};
        r8.setThumbTintList(new ColorStateList(iArr, new int[]{Color.rgb(75, 91, 165), Color.rgb(255, 255, 255)}));
        r8.setTrackTintList(new ColorStateList(iArr, new int[]{Color.rgb(201, 207, 232), Color.rgb(227, 229, 238)}));
        r8.setChecked(Prefs.getSequential(this));
        r8.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.rootclicker.app.OverlayService.24
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                ((Switch) compoundButton).setText(z ? "点位顺序执行" : "点位交叉执行");
                Prefs.setSequential(OverlayService.this, z);
            }
        });
        linearLayout3.addView(r8);
        linearLayout2.addView(linearLayout3);
        LinearLayout linearLayout4 = new LinearLayout(this);
        linearLayout4.setOrientation(0);
        this.currentTab = tab("当前");
        this.targetTab = tab("目标");
        this.currentTab.setOnClickListener(new View.OnClickListener() { // from class: com.rootclicker.app.OverlayService.25
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                OverlayService.this.m27lambda$buildCountPanel$1$comrootclickerappOverlayService(view2);
            }
        });
        this.targetTab.setOnClickListener(new View.OnClickListener() { // from class: com.rootclicker.app.OverlayService.26
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                OverlayService.this.m28lambda$buildCountPanel$2$comrootclickerappOverlayService(view2);
            }
        });
        linearLayout4.addView(this.currentTab, new LinearLayout.LayoutParams(0, dp(29.0f), 1.0f));
        linearLayout4.addView(this.targetTab, new LinearLayout.LayoutParams(0, dp(29.0f), 1.0f));
        linearLayout2.addView(linearLayout4, new LinearLayout.LayoutParams(-1, -2));
        GridLayout gridLayout = new GridLayout(this);
        this.countGrid = gridLayout;
        gridLayout.setColumnCount(4);
        this.countGrid.setRowCount(20);
        linearLayout2.addView(this.countGrid, new LinearLayout.LayoutParams(-1, -2));
        scrollView.addView(linearLayout2, new FrameLayout.LayoutParams(-1, -2));
        linearLayout.addView(scrollView, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        FrameLayout frameLayout3 = new FrameLayout(this);
        TextView textViewText5 = text("未执行", 12.0f, Color.rgb(120, 122, 133));
        this.statusView = textViewText5;
        textViewText5.setPadding(dp(12.0f), 0, 0, 0);
        this.statusView.setIncludeFontPadding(false);
        frameLayout3.addView(this.statusView, new FrameLayout.LayoutParams(-2, -1, 8388627));
        frameLayout3.addView(new ResizeGrip(), new FrameLayout.LayoutParams(dp(36.0f), dp(18.0f), 8388629));
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, dp(18.0f));
        layoutParams3.setMargins(0, 0, 0, 0);
        linearLayout.addView(frameLayout3, layoutParams3);
        this.countPanel = linearLayout;
        WindowManager.LayoutParams layoutParams4 = new WindowManager.LayoutParams(iClamp, iClamp2, overlayType(), 40, -3);
        this.countPanelParams = layoutParams4;
        layoutParams4.gravity = 8388659;
        boolean z = false;
        int i3 = countPanelRect[0];
        boolean z2 = i3 >= 0 && countPanelRect[1] >= 0;
        this.countPanelPinned = z2;
        if (z2) {
            this.countPanelParams.x = clamp(i3, 0, iArrDisplaySize[0] - iClamp);
            this.countPanelParams.y = clamp(countPanelRect[1], 0, iArrDisplaySize[1] - iClamp2);
        } else {
            this.countPanelParams.x = clamp(this.controlParams.x, 0, Math.max(0, iArrDisplaySize[0] - iClamp));
            z = false;
            this.countPanelParams.y = clamp(this.controlParams.y + this.controlParams.height + dp(2.0f), 0, Math.max(0, iArrDisplaySize[1] - iClamp2));
        }
        try {
            this.wm.addView(this.countPanel, this.countPanelParams);
            setControlBarVisible(z);
            updateLiveCount();
            refreshCoordinateViews();
            this.lastCellTapAt = 0L;
            selectCountMode(this.editingCurrent);
            LanLink lanLink = this.lanLink;
            if (lanLink == null || !lanLink.isSlave()) {
                return;
            }
            this.lanLink.resyncMasterTarget();
        } catch (Exception e) {
            this.countPanel = null;
            toast("无法打开次数面板: " + e.getMessage());
        }
    }

    void m26lambda$buildCountPanel$0$comrootclickerappOverlayService(View view) {
        hideCountPanel();
    }

    void m27lambda$buildCountPanel$1$comrootclickerappOverlayService(View view) {
        selectCountMode(true);
    }

    void m28lambda$buildCountPanel$2$comrootclickerappOverlayService(View view) {
        selectCountMode(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideCountPanel() {
        View view = this.countPanel;
        if (view != null) {
            try {
                this.wm.removeView(view);
            } catch (Exception unused) {
            }
            this.countPanel = null;
            this.countPanelParams = null;
        }
        setControlBarVisible(true);
        this.countSummary = null;
        this.currentTab = null;
        this.targetTab = null;
        this.countGrid = null;
        this.countScroll = null;
        this.statusView = null;
        this.gridCells.clear();
        this.addPointButton = null;
        this.pointsList = null;
        this.relationList = null;
        this.relationStatus = null;
        this.relationTitle = null;
    }

    public void positionCountPanel() {
        if (this.countPanel == null || this.countPanelParams == null || this.countPanelPinned) {
            return;
        }
        int[] iArrDisplaySize = displaySize();
        this.countPanelParams.x = clamp(this.controlParams.x, 0, Math.max(0, iArrDisplaySize[0] - this.countPanelParams.width));
        this.countPanelParams.y = clamp(this.controlParams.y + this.controlParams.height + dp(2.0f), 0, Math.max(0, iArrDisplaySize[1] - this.countPanelParams.height));
        try {
            this.wm.updateViewLayout(this.countPanel, this.countPanelParams);
        } catch (Exception unused) {
        }
    }

    private TextView tab(String str) {
        TextView textViewText = text(str, 10.0f, Color.rgb(55, 56, 65));
        textViewText.setGravity(17);
        textViewText.setTypeface(Typeface.DEFAULT_BOLD);
        return textViewText;
    }

    private void selectCountMode(boolean z) {
        this.editingCurrent = z;
        TextView textView = this.currentTab;
        if (textView == null) {
            return;
        }
        textView.setBackground(roundRect(z ? Color.rgb(75, 91, 165) : Color.rgb(231, 232, 238), 10.0f));
        this.targetTab.setBackground(roundRect(!z ? Color.rgb(75, 91, 165) : Color.rgb(231, 232, 238), 10.0f));
        this.currentTab.setTextColor(z ? -1 : Color.rgb(55, 56, 65));
        this.targetTab.setTextColor(z ? Color.rgb(55, 56, 65) : -1);
        refreshCountGrid();
    }

    public void refreshCountGrid() {
        GridLayout gridLayout = this.countGrid;
        if (gridLayout == null || this.countPanelWidth <= 0) {
            return;
        }
        gridLayout.removeAllViews();
        this.gridCells.clear();
        float f = 1.0f;
        int iDp = dp(1.0f);
        int iMax = Math.max(dp(34.0f), ((this.countPanelWidth - dp(8.0f)) / 4) - (iDp * 2));
        Paint paint = new Paint(1);
        paint.setTypeface(Typeface.DEFAULT_BOLD);
        final int i = !this.editingCurrent ? 1 : 0;
        while (i <= 80) {
            LinearLayout linearLayout = new LinearLayout(this);
            linearLayout.setOrientation(1);
            linearLayout.setGravity(17);
            linearLayout.setPadding(dp(f), dp(3.0f), dp(f), dp(3.0f));
            String str = WeightUtil.format(i) + "w";
            paint.setTextSize(dp(17.0f));
            float fMax = Math.max(dp(8.0f), Math.min(dp(17.0f), (dp(17.0f) * (iMax - dp(6.0f))) / Math.max(dp(f), paint.measureText(str))));
            TextView textViewText = text(str, 0.0f, Color.rgb(39, 40, 48));
            textViewText.setTextSize(0, fMax);
            textViewText.setGravity(17);
            textViewText.setSingleLine(true);
            textViewText.setTypeface(Typeface.DEFAULT_BOLD);
            linearLayout.addView(textViewText, new LinearLayout.LayoutParams(-1, -2));
            TextView textViewText2 = text(i + "次", 11.0f, Color.rgb(91, 92, 102));
            textViewText2.setTextSize(0, Math.max((float) dp(8.0f), Math.min((float) dp(11.0f), ((float) iMax) / 4.4f)));
            textViewText2.setGravity(17);
            linearLayout.addView(textViewText2, new LinearLayout.LayoutParams(-1, -2));
            linearLayout.setOnClickListener(new View.OnClickListener(this) { // from class: com.rootclicker.app.OverlayService.27
                final /* synthetic */ OverlayService this$0;

                {
                    this.this$0 = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.this$0.m46lambda$refreshCountGrid$0$comrootclickerappOverlayService(i, view);
                }
            });
            linearLayout.setOnTouchListener(new ViewOnTouchListenerC0000AnonymousClass4());
            GridLayout.LayoutParams layoutParams = new GridLayout.LayoutParams();
            layoutParams.width = iMax;
            layoutParams.height = dp(64.0f);
            layoutParams.setMargins(iDp, iDp, iDp, iDp);
            this.countGrid.addView(linearLayout, layoutParams);
            this.gridCells.add(linearLayout);
            i++;
            f = 1.0f;
        }
        applyCellStyles();
    }

    void m46lambda$refreshCountGrid$0$comrootclickerappOverlayService(int i, View view) {
        boolean z = this.editingCurrent;
        if (z || i > this.current) {
            boolean z2 = !z;
            long jUptimeMillis = SystemClock.uptimeMillis();
            boolean z3 = !z && jUptimeMillis - this.lastCellTapAt < 380 && this.lastCellTapValue == i && this.lastCellTapWasTarget;
            this.lastCellTapAt = jUptimeMillis;
            this.lastCellTapValue = i;
            this.lastCellTapWasTarget = z2;
            onCountSelected(i);
            if (z3) {
                startRun();
            }
        }
    }

    /* JADX INFO: renamed from: com.rootclicker.app.OverlayService$AnonymousClass4, reason: case insensitive filesystem */
    class ViewOnTouchListenerC0000AnonymousClass4 implements View.OnTouchListener {
        private float downX;
        private float downY;
        private boolean longPressed;
        private final Runnable resetRunnable = new Runnable() { // from class: com.rootclicker.app.OverlayService.AnonymousClass4.1
            @Override // java.lang.Runnable
            public final void run() {
                ViewOnTouchListenerC0000AnonymousClass4.this.m57lambda$new$0$comrootclickerappOverlayService$4();
            }
        };

        ViewOnTouchListenerC0000AnonymousClass4() {
        }

        void m57lambda$new$0$comrootclickerappOverlayService$4() {
            Prefs.setCurrent(OverlayService.this, 0);
            Prefs.setTarget(OverlayService.this, 10);
            OverlayService.this.current = 0;
            OverlayService.this.target = 10;
            OverlayService.this.dimFrozen = false;
            OverlayService.this.pendingTrim = false;
            OverlayService.this.refreshCountGrid();
            OverlayService.this.applyCellStyles();
            OverlayService.this.scrollTargetRowToTop();
            OverlayService.this.toast("已重置：当前 0 次 / 目标 10 次");
            MainActivity.requestExternalReset();
            if (OverlayService.this.lanLink != null && OverlayService.this.lanLink.isMaster()) {
                OverlayService.this.lanLink.sendReset();
            }
            this.longPressed = true;
        }

        /* JADX WARN: Code duplicated, block: B:16:0x004a  */
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.longPressed = false;
                this.downX = motionEvent.getRawX();
                this.downY = motionEvent.getRawY();
                OverlayService.this.ui.postDelayed(this.resetRunnable, 1300L);
            } else if (actionMasked == 1) {
                OverlayService.this.ui.removeCallbacks(this.resetRunnable);
            } else if (actionMasked == 2) {
                float rawX = motionEvent.getRawX() - this.downX;
                float rawY = motionEvent.getRawY() - this.downY;
                if (Math.abs(rawX) > OverlayService.this.dp(6.0f) || Math.abs(rawY) > OverlayService.this.dp(6.0f)) {
                    OverlayService.this.ui.removeCallbacks(this.resetRunnable);
                }
            } else if (actionMasked == 3) {
                OverlayService.this.ui.removeCallbacks(this.resetRunnable);
            }
            return this.longPressed;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void applyCellStyles() {
        if (this.gridCells.isEmpty()) {
            return;
        }
        if (this.cellNormalBg == null) {
            this.cellNormalBg = roundRect(Color.rgb(239, 240, 244), 9.0f);
            this.cellSelectedBg = roundRect(Color.rgb(75, 91, 165), 9.0f);
            this.cellLockedBg = roundRect(Color.rgb(228, 229, 235), 9.0f);
            this.cellLockedSelectedBg = roundRect(Color.rgb(186, 191, 210), 9.0f);
        }
        int i = !this.editingCurrent ? 1 : 0;
        for (int i2 = 0; i2 < this.gridCells.size(); i2++) {
            int i3 = i + i2;
            LinearLayout linearLayout = this.gridCells.get(i2);
            boolean z = this.editingCurrent;
            Object[] objArr = (z || this.dimFrozen || i3 > this.current) ? false : true;
            Object[] objArr2 = !z ? i3 != this.target : i3 != this.current;
            if (objArr2 != false) {
                linearLayout.setBackground(objArr != false ? this.cellLockedSelectedBg : this.cellSelectedBg);
            } else {
                linearLayout.setBackground(objArr != false ? this.cellLockedBg : this.cellNormalBg);
            }
            TextView textView = (TextView) linearLayout.getChildAt(0);
            TextView textView2 = (TextView) linearLayout.getChildAt(1);
            if (objArr2 == true) {
                textView.setTextColor(objArr != false ? Color.rgb(244, 245, 249) : -1);
                textView2.setTextColor(objArr != false ? Color.rgb(236, 237, 243) : Color.argb(210, 255, 255, 255));
            } else if (objArr != false) {
                textView.setTextColor(Color.rgb(174, 176, 186));
                textView2.setTextColor(Color.rgb(190, 192, 201));
            } else {
                textView.setTextColor(Color.rgb(39, 40, 48));
                textView2.setTextColor(Color.rgb(91, 92, 102));
            }
        }
    }

    public void scrollTargetRowToTop() {
        if (this.countScroll == null || this.countGrid == null || this.gridCells.isEmpty()) {
            return;
        }
        int i = this.target - (this.gridCells.size() > 80 ? 0 : 1);
        if (i < 0 || i >= this.gridCells.size()) {
            return;
        }
        final LinearLayout linearLayout = this.gridCells.get(i);
        this.countScroll.postDelayed(new Runnable(this) { // from class: com.rootclicker.app.OverlayService.28
            final /* synthetic */ OverlayService this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.this$0.m48lambda$scrollTargetRowToTop$0$comrootclickerappOverlayService(linearLayout);
            }
        }, 90L);
    }

    void m48lambda$scrollTargetRowToTop$0$comrootclickerappOverlayService(View view) {
        if (this.countScroll == null || this.countGrid == null || view.getParent() == null) {
            return;
        }
        int top = this.countGrid.getTop() + view.getTop();
        View view2 = (View) this.countGrid.getParent();
        while (view2 != null && view2 != this.countScroll) {
            top += view2.getTop();
            view2 = view2.getParent() instanceof View ? (View) view2.getParent() : null;
        }
        this.countScroll.smoothScrollTo(0, Math.max(0, top));
    }

    private void onCountSelected(int i) {
        if (this.running || this.starting) {
            stopRun();
        }
        this.dimFrozen = false;
        this.pendingTrim = false;
        if (this.editingCurrent) {
            this.current = i;
            Prefs.setCurrent(this, i);
        } else {
            this.target = i;
            Prefs.setTarget(this, i);
            LanLink lanLink = this.lanLink;
            if (lanLink != null && lanLink.isMaster()) {
                this.lanLink.sendTarget(this.target);
            }
        }
        updateLiveCount();
        refreshCountGrid();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLiveCount() {
        Iterator<MarkerView> it = this.markers.iterator();
        while (it.hasNext()) {
            it.next().invalidate();
        }
        applyCellStyles();
        updateStatus();
    }

    private void updateStatus() {
        TextView textView = this.statusView;
        if (textView == null) {
            return;
        }
        if (this.running) {
            textView.setText("点击 " + this.runNeeded + "/" + Math.max(0, this.current - this.runStart));
            return;
        }
        if (this.lastRunMs >= 0) {
            textView.setText("未执行 · 上次耗时 " + String.format(Locale.CHINA, "%.2f", Float.valueOf(this.lastRunMs / 1000.0f)) + " 秒");
            return;
        }
        textView.setText("未执行");
    }

    private void enterEdit() {
        if (this.editor != null) {
            return;
        }
        if (this.running || this.starting) {
            stopRun();
        }
        this.reopenCountAfterEdit = this.countPanel != null;
        hideCountPanel();
        this.editor = new PointEditorView(this, activePoint(), String.valueOf(this.activeIndices.size() + 1), new PointEditorView.Callback() { // from class: com.rootclicker.app.OverlayService.29
            @Override // com.rootclicker.app.PointEditorView.Callback
            public final void onComplete(ClickPoint clickPoint) {
                OverlayService.this.exitEdit(clickPoint);
            }
        });
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, overlayType(), 776, -3);
        layoutParams.gravity = 8388659;
        try {
            this.wm.addView(this.editor, layoutParams);
            updateMarkers();
        } catch (Exception e) {
            this.editor = null;
            toast("无法显示选点层: " + e.getMessage());
        }
    }

    public void exitEdit(ClickPoint clickPoint) {
        removeEditor();
        if (this.pointItems.size() < Prefs.getMaxPoints()) {
            clickPoint.name = "未命名";
            this.pointItems.add(clickPoint);
            this.activeIndices.add(Integer.valueOf(this.pointItems.size() - 1));
            persistPoints();
            updateMarkers();
            toast("已新增并应用：" + clickPoint.name);
        } else {
            toast("最多保存" + Prefs.getMaxPoints() + "个坐标");
        }
        refreshCoordinateViews();
        if (this.reopenCountAfterEdit) {
            this.reopenCountAfterEdit = false;
            buildCountPanel();
        }
    }

    private void removeEditor() {
        PointEditorView pointEditorView = this.editor;
        if (pointEditorView != null) {
            try {
                this.wm.removeView(pointEditorView);
            } catch (Exception unused) {
            }
            this.editor = null;
        }
    }

    private void removeAllMarkers() {
        Iterator<MarkerView> it = this.markers.iterator();
        while (it.hasNext()) {
            try {
                this.wm.removeView(it.next());
            } catch (Exception unused) {
            }
        }
        this.markers.clear();
        this.markerParamsList.clear();
    }

    private void updateMarkers() {
        removeAllMarkers();
        if (this.editor != null) {
            return;
        }
        int[] iArrDisplaySize = displaySize();
        int iDp = dp(34.0f);
        for (int i = 0; i < this.activeIndices.size(); i++) {
            int iIntValue = this.activeIndices.get(i).intValue();
            if (iIntValue >= 0 && iIntValue < this.pointItems.size()) {
                ClickPoint clickPoint = this.pointItems.get(iIntValue);
                int i2 = iDp / 2;
                int iClamp = clamp(Math.round(clickPoint.nx * iArrDisplaySize[0]) - i2, 0, iArrDisplaySize[0] - iDp);
                int iClamp2 = clamp(Math.round(clickPoint.ny * iArrDisplaySize[1]) - i2, 0, iArrDisplaySize[1] - iDp);
                MarkerView markerView = new MarkerView(String.valueOf(i + 1));
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(iDp, iDp, overlayType(), 280, -3);
                layoutParams.gravity = 8388659;
                layoutParams.x = iClamp;
                layoutParams.y = iClamp2;
                try {
                    this.wm.addView(markerView, layoutParams);
                    this.markers.add(markerView);
                    this.markerParamsList.add(layoutParams);
                } catch (Exception e) {
                    toast("无法显示坐标圆球: " + e.getMessage());
                    return;
                }
            }
        }
    }

    private void startRun() {
        startRun(false);
    }

    public void startRun(boolean z) {
        LanLink lanLink;
        if (z && (this.running || this.starting)) {
            return;
        }
        ArrayList<ClickPoint> arrayListActivePoints = activePoints();
        if (arrayListActivePoints.isEmpty()) {
            toast("请先在第三板块应用一个坐标点");
            return;
        }
        this.current = Prefs.getCurrent(this);
        int target = Prefs.getTarget(this);
        this.target = target;
        if (target <= this.current) {
            if (z) {
                return;
            }
            toast("目标次数必须大于当前次数");
            return;
        }
        if (!z && (lanLink = this.lanLink) != null && lanLink.isMaster()) {
            this.lanLink.sendRun();
        }
        clearPanelFocus();
        int i = this.current;
        this.runStart = i;
        this.runNeeded = this.target - i;
        this.starting = true;
        updateControl();
        final int i2 = this.runSession + 1;
        this.runSession = i2;
        final int[] iArrDisplaySize = displaySize();
        this.runWidth = iArrDisplaySize[0];
        this.runHeight = iArrDisplaySize[1];
        final ArrayList<ClickPoint> arrayList = new ArrayList<>();
        Iterator<ClickPoint> it = arrayListActivePoints.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().copy());
        }
        this.runPoints = arrayList;
        boolean sequential = Prefs.getSequential(this);
        this.runSequential = sequential;
        int iMax = Math.max(1, sequential ? this.intervalMs : this.crossIntervalMs);
        this.runSubInterval = iMax;
        this.runHold = Math.max(1, Math.min(this.holdMs, iMax - 5));
        final boolean z2 = ClickAccessibilityService.get() != null;
        this.a11yMode = z2;
        new Thread(new Runnable(this) { // from class: com.rootclicker.app.OverlayService.30
            final /* synthetic */ OverlayService this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.this$0.m52lambda$startRun$0$comrootclickerappOverlayService(z2, iArrDisplaySize, i2, arrayList);
            }
        }, "RootClicker-start").start();
    }

    void m52lambda$startRun$0$comrootclickerappOverlayService(boolean z, int[] iArr, final int i, List<ClickPoint> points) {
        final boolean z2 = true;
        if (!z) {
            boolean zEnsureHelper = ensureHelper(iArr[0], iArr[1]);
            if (zEnsureHelper && i == this.runSession) {
                this.root.send("STOP");
                this.root.configure(this.runSubInterval, this.runHold, points, iArr[0], iArr[1]);
                this.keys.start();
            }
            z2 = zEnsureHelper;
        }
        this.ui.post(new Runnable(this) { // from class: com.rootclicker.app.OverlayService.31
            final /* synthetic */ OverlayService this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.this$0.m53lambda$startRun$1$comrootclickerappOverlayService(i, z2);
            }
        });
    }

    void m53lambda$startRun$1$comrootclickerappOverlayService(int i, boolean z) {
        if (i != this.runSession) {
            return;
        }
        this.starting = false;
        if (z) {
            this.running = true;
            this.dimFrozen = true;
            this.pendingTrim = false;
            this.runStartedAt = SystemClock.uptimeMillis();
            updateControl();
            updateLiveCount();
            startClock(i);
            if (Prefs.getShowDuringRun(this)) {
                return;
            }
            hideCountPanel();
            return;
        }
        this.keys.stop();
        this.dimFrozen = false;
        updateControl();
        toast("启动失败，请先开启 Root 或无障碍服务");
    }

    private void stopRun() {
        clearPanelFocus();
        stopRun(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopRun(String str) {
        boolean z = this.running || this.starting;
        if (z && this.runStartedAt > 0) {
            this.lastRunMs = Math.max(0L, SystemClock.uptimeMillis() - this.runStartedAt);
        }
        this.runSession++;
        this.running = false;
        this.starting = false;
        if (!this.pendingTrim) {
            this.dimFrozen = false;
        }
        Handler handler = this.clock;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        Prefs.setCurrent(this, this.current);
        updateControl();
        updateLiveCount();
        if (this.countPanel != null) {
            refreshCountGrid();
        }
        new Thread(new Runnable() { // from class: com.rootclicker.app.OverlayService.32
            @Override // java.lang.Runnable
            public final void run() {
                OverlayService.this.m55lambda$stopRun$0$comrootclickerappOverlayService();
            }
        }, "RootClicker-stop").start();
        if (str == null || !z) {
            return;
        }
        toast(str);
    }

    void m55lambda$stopRun$0$comrootclickerappOverlayService() {
        if (this.a11yMode) {
            return;
        }
        this.keys.stop();
        this.root.send("STOP");
    }

    private void startClock(final int i) {
        if (this.clock == null) {
            return;
        }
        int i2 = this.runNeeded;
        int size = this.runPoints.size();
        if (i2 <= 0 || size <= 0) {
            return;
        }
        long j = this.runStartedAt;
        int i3 = 1;
        int iMax = Math.max(1, this.runSubInterval);
        int i4 = i2 * size;
        if (this.runSequential && size > 1) {
            startSequentialClock(i, j, i2, size);
            return;
        }
        int i5 = 0;
        if (this.a11yMode) {
            while (i5 < i4) {
                final int i6 = i5 % size;
                final int i7 = (i5 / size) + 1;
                long j2 = j + (((long) i5) * ((long) iMax));
                this.clock.postAtTime(new Runnable(this) { // from class: com.rootclicker.app.OverlayService.36
                    final /* synthetic */ OverlayService this$0;

                    {
                        this.this$0 = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.this$0.m50lambda$startClock$0$comrootclickerappOverlayService(i, i6);
                    }
                }, j2);
                if (i6 == size - 1) {
                    this.clock.postAtTime(new Runnable(this) { // from class: com.rootclicker.app.OverlayService.37
                        final /* synthetic */ OverlayService this$0;

                        {
                            this.this$0 = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.this$0.m33lambda$clockTap$0$comrootclickerappOverlayService(i, i7);
                        }
                    }, j2 + Math.max(1L, Math.min(iMax, this.runHold)));
                }
                i5++;
            }
            this.clock.postAtTime(new Runnable(this) { // from class: com.rootclicker.app.OverlayService.38
                final /* synthetic */ OverlayService this$0;

                {
                    this.this$0 = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.this$0.m31lambda$clockRelease$0$comrootclickerappOverlayService(i);
                }
            }, j + (((long) i4) * ((long) iMax)) + Math.max(20L, this.runHold));
            return;
        }
        if (i4 <= 1) {
            tapOnceByShell(i);
            return;
        }
        while (i5 < i4) {
            int i8 = i5 % size;
            final int i9 = (i5 / size) + i3;
            long j3 = (((long) i5) * ((long) iMax)) + j;
            final ClickPoint clickPoint = this.runPoints.get(i8);
            this.clock.postAtTime(new Runnable(this) { // from class: com.rootclicker.app.OverlayService.33
                final /* synthetic */ OverlayService this$0;

                {
                    this.this$0 = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    if (i == this.this$0.runSession && this.this$0.running) {
                        this.this$0.tapPointByShellSync(clickPoint);
                    }
                }
            }, j3);
            if (i8 == size - 1) {
                this.clock.postAtTime(new Runnable(this) { // from class: com.rootclicker.app.OverlayService.34
                    final /* synthetic */ OverlayService this$0;

                    {
                        this.this$0 = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.this$0.m33lambda$clockTap$0$comrootclickerappOverlayService(i, i9);
                    }
                }, j3 + Math.max(1L, this.runHold));
            }
            i5++;
            i4 = i4;
            j = j;
            i3 = 1;
        }
        this.clock.postAtTime(new Runnable(this) { // from class: com.rootclicker.app.OverlayService.35
            final /* synthetic */ OverlayService this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.this$0.m31lambda$clockRelease$0$comrootclickerappOverlayService(i);
            }
        }, j + (((long) i4) * ((long) iMax)) + Math.max(50L, this.runHold));
    }

    private void startSequentialClock(final int session, long start, final int rounds, final int count) {
        long j;
        int iMax = Math.max(1, this.intervalMs);
        long jMax = this.a11yMode ? Math.max(1L, this.runHold) : 10L;
        long j2 = start;
        long jMax2 = j2;
        final int i = 0;
        while (i < count) {
            final ClickPoint clickPoint = this.runPoints.get(i);
            if (this.a11yMode) {
                int i2 = 0;
                while (i2 < rounds) {
                    this.clock.postAtTime(new Runnable(this) { // from class: com.rootclicker.app.OverlayService.39
                        final /* synthetic */ OverlayService this$0;

                        {
                            this.this$0 = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.this$0.m50lambda$startClock$0$comrootclickerappOverlayService(session, i);
                        }
                    }, (((long) i2) * ((long) iMax)) + jMax2);
                    i2++;
                    jMax = jMax;
                }
                j = jMax;
            } else {
                j = jMax;
                for (int i3 = 0; i3 < rounds; i3++) {
                    this.clock.postAtTime(new Runnable(this) { // from class: com.rootclicker.app.OverlayService.40
                        final /* synthetic */ OverlayService this$0;

                        {
                            this.this$0 = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            if (session == this.this$0.runSession && this.this$0.running) {
                                this.this$0.tapPointByShellSync(clickPoint);
                            }
                        }
                    }, (((long) i3) * ((long) iMax)) + jMax2);
                }
            }
            j2 = jMax2 + (((long) (rounds - 1)) * ((long) iMax));
            i++;
            final int iMin = Math.min(this.target, this.runStart + ((i * rounds) / count));
            long j3 = j2 + j;
            this.clock.postAtTime(new Runnable(this) { // from class: com.rootclicker.app.OverlayService.41
                final /* synthetic */ OverlayService this$0;

                {
                    this.this$0 = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    Handler handler = this.this$0.ui;
                    final int i4 = session;
                    final int i5 = iMin;
                    handler.post(new Runnable(this) { // from class: com.rootclicker.app.OverlayService.41.1
                        final /* synthetic */ AnonymousClass41 this$1;

                        {
                            this.this$1 = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            if (i4 == this.this$1.this$0.runSession && this.this$1.this$0.running) {
                                this.this$1.this$0.current = i5;
                                Prefs.setCurrent(this.this$1.this$0, this.this$1.this$0.current);
                                this.this$1.this$0.updateLiveCount();
                            }
                        }
                    });
                }
            }, 5 + j3);
            jMax2 = j3 + ((long) Math.max(1, this.sequentialGapMs));
            jMax = j;
        }
        long jMax3 = j2 + Math.max(jMax + 20, 50L);
        this.clock.postAtTime(new Runnable(this) { // from class: com.rootclicker.app.OverlayService.42
            final /* synthetic */ OverlayService this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.this$0.m33lambda$clockTap$0$comrootclickerappOverlayService(session, rounds);
            }
        }, jMax3);
        this.clock.postAtTime(new Runnable(this) { // from class: com.rootclicker.app.OverlayService.43
            final /* synthetic */ OverlayService this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.this$0.m31lambda$clockRelease$0$comrootclickerappOverlayService(session);
            }
        }, jMax3 + 5);
    }

    private void tapPointByShell(final ClickPoint clickPoint) {
        final int iMax = Math.max(0, Math.min(this.runWidth - 1, Math.round(clickPoint.nx * this.runWidth)));
        final int iMax2 = Math.max(0, Math.min(this.runHeight - 1, Math.round(clickPoint.ny * this.runHeight)));
        new Thread(new Runnable(this) { // from class: com.rootclicker.app.OverlayService.44
            final /* synthetic */ OverlayService this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                try {
                    synchronized (this.this$0.tapLock) {
                        if (this.this$0.running) {
                            new ProcessBuilder("su", "-c", "input tap " + iMax + " " + iMax2).start().waitFor();
                        }
                    }
                } catch (Exception unused) {
                }
            }
        }, "RootClicker-tap").start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tapPointByShellSync(ClickPoint clickPoint) {
        int iMax = Math.max(0, Math.min(this.runWidth - 1, Math.round(clickPoint.nx * this.runWidth)));
        int iMax2 = Math.max(0, Math.min(this.runHeight - 1, Math.round(clickPoint.ny * this.runHeight)));
        synchronized (this.tapLock) {
            try {
                new ProcessBuilder("su", "-c", "input tap " + iMax + " " + iMax2).start().waitFor();
            } catch (Exception unused) {
            }
        }
    }

    private void tapOnceByShell(final int session) {
        if (this.runPoints.isEmpty()) {
            return;
        }
        ClickPoint clickPoint = this.runPoints.get(0);
        final int iMax = Math.max(0, Math.min(this.runWidth - 1, Math.round(clickPoint.nx * this.runWidth)));
        final int iMax2 = Math.max(0, Math.min(this.runHeight - 1, Math.round(clickPoint.ny * this.runHeight)));
        new Thread(new Runnable(this) { // from class: com.rootclicker.app.OverlayService.45
            final /* synthetic */ OverlayService this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                try {
                    new ProcessBuilder("su", "-c", "input tap " + iMax + " " + iMax2).start().waitFor();
                } catch (Exception unused) {
                }
                Handler handler = this.this$0.ui;
                final int i = session;
                handler.post(new Runnable(this) { // from class: com.rootclicker.app.OverlayService.45.1
                    final /* synthetic */ AnonymousClass45 this$1;

                    {
                        this.this$1 = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        if (i == this.this$1.this$0.runSession && this.this$1.this$0.running) {
                            this.this$1.this$0.current = this.this$1.this$0.target;
                            Prefs.setCurrent(this.this$1.this$0, this.this$1.this$0.current);
                            this.this$1.this$0.updateLiveCount();
                            this.this$1.this$0.m31lambda$clockRelease$0$comrootclickerappOverlayService(i);
                        }
                    }
                });
            }
        }, "RootClicker-single").start();
    }

    public void m50lambda$startClock$0$comrootclickerappOverlayService(final int i, final int i2) {
        if (i == this.runSession && this.running) {
            if (this.a11yMode) {
                dispatchAccessibilityTap(i, i2);
            } else {
                this.root.send("START");
            }
        }
    }

    void m33lambda$clockTap$0$comrootclickerappOverlayService(final int i, final int i2) {
        this.ui.post(new Runnable(this) { // from class: com.rootclicker.app.OverlayService.46
            final /* synthetic */ OverlayService this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                if (i == this.this$0.runSession && this.this$0.running) {
                    OverlayService overlayService = this.this$0;
                    overlayService.current = Math.min(overlayService.target, this.this$0.runStart + i2);
                    OverlayService overlayService2 = this.this$0;
                    Prefs.setCurrent(overlayService2, overlayService2.current);
                    this.this$0.updateLiveCount();
                }
            }
        });
    }

    private boolean dispatchAccessibilityTap(final int i, int pointIndex) {
        if (pointIndex < 0 || pointIndex >= this.runPoints.size()) {
            return false;
        }
        final ClickPoint clickPoint = this.runPoints.get(pointIndex);
        ClickAccessibilityService clickAccessibilityService = ClickAccessibilityService.get();
        if (clickAccessibilityService == null) {
            this.ui.post(new Runnable(this) { // from class: com.rootclicker.app.OverlayService.47
                final /* synthetic */ OverlayService this$0;

                {
                    this.this$0 = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.this$0.m36x56665ea3(i);
                }
            });
            return false;
        }
        if (!clickAccessibilityService.tap(clickPoint.nx * this.runWidth, clickPoint.ny * this.runHeight, this.runHold)) {
            this.clock.postDelayed(new Runnable(this) { // from class: com.rootclicker.app.OverlayService.48
                final /* synthetic */ OverlayService this$0;

                {
                    this.this$0 = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.this$0.m37xcaa59702(i, clickPoint);
                }
            }, 35L);
        }
        return true;
    }

    void m36x56665ea3(int i) {
        if (i == this.runSession) {
            if (this.running || this.starting) {
                stopRun("无障碍服务已断开，已停止");
            }
        }
    }

    void m37xcaa59702(int i, ClickPoint clickPoint) {
        ClickAccessibilityService clickAccessibilityService;
        if (i == this.runSession && this.running && (clickAccessibilityService = ClickAccessibilityService.get()) != null) {
            clickAccessibilityService.tap(clickPoint.nx * this.runWidth, clickPoint.ny * this.runHeight, this.runHold);
        }
    }

    public void m51lambda$startClock$1$comrootclickerappOverlayService(final int i, int i2) {
        if (i != this.runSession) {
            return;
        }
        if (!this.a11yMode) {
            this.root.send("STOP");
        }
        if (i2 >= this.runNeeded) {
            this.ui.post(new Runnable(this) { // from class: com.rootclicker.app.OverlayService.49
                final /* synthetic */ OverlayService this$0;

                {
                    this.this$0 = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.this$0.m31lambda$clockRelease$0$comrootclickerappOverlayService(i);
                }
            });
        }
    }

    void m31lambda$clockRelease$0$comrootclickerappOverlayService(final int i) {
        this.ui.post(new Runnable(this) { // from class: com.rootclicker.app.OverlayService.50
            final /* synthetic */ OverlayService this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                if (i == this.this$0.runSession && this.this$0.running) {
                    this.this$0.pendingTrim = true;
                    String str = "已达到目标 " + this.this$0.target + " 次，自动停止";
                    this.this$0.successToast(str);
                    this.this$0.stopRun(str);
                    this.this$0.scrollTargetRowToTop();
                    if (Prefs.getShowAfterRun(this.this$0)) {
                        if (this.this$0.countPanel == null) {
                            this.this$0.buildCountPanel();
                        }
                    } else {
                        this.this$0.hideCountPanel();
                    }
                    this.this$0.ui.postDelayed(new Runnable() { // from class: com.rootclicker.app.OverlayService.50.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass50.this.this$0.m32lambda$clockRelease$1$comrootclickerappOverlayService();
                        }
                    }, 200L);
                    this.this$0.ui.postDelayed(new Runnable() { // from class: com.rootclicker.app.OverlayService.50.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (Prefs.getEndVibrate(AnonymousClass50.this.this$0)) {
                                AnonymousClass50.this.this$0.vibrate(45);
                            }
                        }
                    }, 500L);
                }
            }
        });
    }

    void m32lambda$clockRelease$1$comrootclickerappOverlayService() {
        this.pendingTrim = false;
        this.dimFrozen = false;
        applyCellStyles();
    }

    public void m39lambda$new$1$comrootclickerappOverlayService(int i) {
        String str;
        if (this.running || this.starting) {
            if (i == 116) {
                str = "电源键";
            } else {
                str = i == 115 ? "音量加" : "音量减";
            }
            stopRun("已通过" + str + "中断点击");
        }
    }

    public static void interruptByKey(int i) {
        final int i2;
        OverlayService overlayService = instance;
        if (overlayService == null) {
            return;
        }
        if (i == 24) {
            i2 = KeyInterruptMonitor.VOLUME_UP;
        } else if (i != 25) {
            return;
        } else {
            i2 = KeyInterruptMonitor.VOLUME_DOWN;
        }
        overlayService.ui.post(new Runnable() { // from class: com.rootclicker.app.OverlayService.51
            @Override // java.lang.Runnable
            public final void run() {
                OverlayService.this.m39lambda$new$1$comrootclickerappOverlayService(i2);
            }
        });
    }

    public void reconfigureRunning() {
        ArrayList<ClickPoint> arrayListActivePoints = activePoints();
        if (arrayListActivePoints.isEmpty() || this.running || this.starting) {
            return;
        }
        final int[] iArrDisplaySize = displaySize();
        final ArrayList arrayList = new ArrayList();
        Iterator<ClickPoint> it = arrayListActivePoints.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().copy());
        }
        final int iMax = Math.max(1, Prefs.getSequential(this) ? this.intervalMs : this.crossIntervalMs);
        new Thread(new Runnable(this) { // from class: com.rootclicker.app.OverlayService.52
            final /* synthetic */ OverlayService this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.this$0.m45lambda$reconfigureRunning$0$comrootclickerappOverlayService(arrayList, iMax, iArrDisplaySize);
            }
        }, "RootClicker-config").start();
    }

    void m45lambda$reconfigureRunning$0$comrootclickerappOverlayService(List<ClickPoint> points, int sub, int[] iArr) {
        if (this.running || this.starting || !this.root.isAlive()) {
            return;
        }
        this.root.configure(sub, Math.max(1, Math.min(this.holdMs, sub - 5)), points, iArr[0], iArr[1]);
    }

    private boolean ensureHelper(int i, int i2) {
        if (this.root.isAlive() && this.helperWidth == i && this.helperHeight == i2) {
            return true;
        }
        this.root.stop();
        boolean zStart = this.root.start(this, i, i2);
        if (zStart) {
            this.helperWidth = i;
            this.helperHeight = i2;
        } else {
            this.helperWidth = -1;
            this.helperHeight = -1;
        }
        return zStart;
    }

    public int[] displaySize() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        this.wm.getDefaultDisplay().getRealMetrics(displayMetrics);
        return new int[]{displayMetrics.widthPixels, displayMetrics.heightPixels};
    }

    private void updateControl() {
        ControlBarView controlBarView = this.controlBar;
        if (controlBarView != null) {
            controlBarView.invalidate();
        }
    }

    private TextView text(String str, float f, int i) {
        TextView textView = new TextView(this);
        textView.setText(str);
        textView.setTextSize(f);
        textView.setTextColor(i);
        return textView;
    }

    public GradientDrawable roundRect(int i, float f) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadius(dp(f));
        return gradientDrawable;
    }

    public int clamp(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i3, i));
    }

    public void vibrate(int i) {
        Vibrator vibrator = this.vibrator;
        if (vibrator == null || !vibrator.hasVibrator() || this.running || this.starting) {
            return;
        }
        try {
            this.vibrator.vibrate(VibrationEffect.createOneShot(i, -1));
        } catch (Exception unused) {
        }
    }

    final class PanelGesture implements View.OnTouchListener {
        private boolean active;
        private float downRawX;
        private float downRawY;
        private final Runnable enable = new Runnable() { // from class: com.rootclicker.app.OverlayService.PanelGesture.1
            @Override // java.lang.Runnable
            public final void run() {
                PanelGesture.this.m59lambda$new$0$comrootclickerappOverlayService$PanelGesture();
            }
        };
        private boolean moved;
        private final boolean resize;
        private int startHeight;
        private int startWidth;
        private int startX;
        private int startY;

        void m59lambda$new$0$comrootclickerappOverlayService$PanelGesture() {
            this.active = true;
            OverlayService.this.vibrate(18);
        }

        PanelGesture(boolean z) {
            this.resize = z;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (OverlayService.this.countPanel == null || OverlayService.this.countPanelParams == null) {
                return false;
            }
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.downRawX = motionEvent.getRawX();
                this.downRawY = motionEvent.getRawY();
                this.startX = OverlayService.this.countPanelParams.x;
                this.startY = OverlayService.this.countPanelParams.y;
                this.startWidth = OverlayService.this.countPanelParams.width;
                this.startHeight = OverlayService.this.countPanelParams.height;
                this.moved = false;
                if (this.resize) {
                    this.active = false;
                    view.postDelayed(this.enable, 300L);
                } else {
                    this.active = true;
                }
            } else if (actionMasked == 1) {
                view.removeCallbacks(this.enable);
                if (this.active && this.moved) {
                    OverlayService.this.countPanelPinned = true;
                    if (this.resize) {
                        OverlayService overlayService = OverlayService.this;
                        overlayService.countPanelWidth = overlayService.countPanelParams.width;
                        OverlayService.this.refreshCountGrid();
                    }
                    OverlayService overlayService2 = OverlayService.this;
                    Prefs.saveCountPanelRect(overlayService2, overlayService2.countPanelParams.x, OverlayService.this.countPanelParams.y, OverlayService.this.countPanelParams.width, OverlayService.this.countPanelParams.height);
                    OverlayService.this.vibrate(12);
                }
                this.active = false;
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                    view.removeCallbacks(this.enable);
                    this.active = false;
                }
            } else if (this.active) {
                int iRound = Math.round(motionEvent.getRawX() - this.downRawX);
                int iRound2 = Math.round(motionEvent.getRawY() - this.downRawY);
                if (Math.abs(iRound) + Math.abs(iRound2) > OverlayService.this.dp(3.0f)) {
                    this.moved = true;
                }
                int[] iArrDisplaySize = OverlayService.this.displaySize();
                if (this.resize) {
                    WindowManager.LayoutParams layoutParams = OverlayService.this.countPanelParams;
                    OverlayService overlayService3 = OverlayService.this;
                    layoutParams.width = overlayService3.clamp(this.startWidth + iRound, overlayService3.dp(180.0f), iArrDisplaySize[0] - OverlayService.this.dp(12.0f));
                    WindowManager.LayoutParams layoutParams2 = OverlayService.this.countPanelParams;
                    OverlayService overlayService4 = OverlayService.this;
                    layoutParams2.height = overlayService4.clamp(this.startHeight + iRound2, overlayService4.dp(240.0f), iArrDisplaySize[1] - OverlayService.this.dp(40.0f));
                    if (Math.abs(OverlayService.this.countPanelParams.width - OverlayService.this.countPanelWidth) >= OverlayService.this.dp(6.0f)) {
                        OverlayService overlayService5 = OverlayService.this;
                        overlayService5.countPanelWidth = overlayService5.countPanelParams.width;
                        OverlayService.this.refreshCountGrid();
                    }
                } else {
                    WindowManager.LayoutParams layoutParams3 = OverlayService.this.countPanelParams;
                    OverlayService overlayService6 = OverlayService.this;
                    layoutParams3.x = overlayService6.clamp(this.startX + iRound, 0, iArrDisplaySize[0] - overlayService6.countPanelParams.width);
                    WindowManager.LayoutParams layoutParams4 = OverlayService.this.countPanelParams;
                    OverlayService overlayService7 = OverlayService.this;
                    layoutParams4.y = overlayService7.clamp(this.startY + iRound2, 0, iArrDisplaySize[1] - overlayService7.countPanelParams.height);
                }
                try {
                    OverlayService.this.wm.updateViewLayout(OverlayService.this.countPanel, OverlayService.this.countPanelParams);
                } catch (Exception unused) {
                }
            }
            return true;
        }
    }

    private final class ResizeGrip extends View {
        private final Paint grip;

        ResizeGrip() {
            super(OverlayService.this);
            Paint paint = new Paint(1);
            this.grip = paint;
            paint.setColor(Color.rgb(158, 160, 172));
            paint.setStrokeWidth(OverlayService.this.dp(2.0f));
            paint.setStrokeCap(Paint.Cap.ROUND);
            Objects.requireNonNull(OverlayService.this);
            setOnTouchListener(OverlayService.this.new PanelGesture(true));
            setContentDescription("调整窗口大小");
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            float width = getWidth() - OverlayService.this.dp(4.0f);
            float height = getHeight() - OverlayService.this.dp(3.0f);
            for (int i = 0; i < 3; i++) {
                float fDp = OverlayService.this.dp(5.0f) * i;
                canvas.drawLine(width - fDp, height, width, height - fDp, this.grip);
            }
        }
    }

    private LinearLayout.LayoutParams layoutMargins(int i, int i2, int i3, int i4, int i5, int i6) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, i2);
        layoutParams.setMargins(dp(i3), dp(i4), dp(i5), dp(i6));
        return layoutParams;
    }

    void m56lambda$toast$0$comrootclickerappOverlayService(String str) {
        Toast.makeText(getApplicationContext(), str, 0).show();
    }

    final class ControlBarView extends View {
        private float downRawX;
        private float downRawY;
        private boolean longFired;
        private final Runnable longPressAction;
        private boolean moved;
        private final Paint paint;
        private int startX;
        private int startY;

        void m58lambda$new$0$comrootclickerappOverlayService$ControlBarView() {
            this.longFired = true;
            OverlayService.this.vibrate(80);
            OverlayService.this.toast("已长按关闭悬浮窗");
            OverlayService.this.closeFloatingWindow();
        }

        ControlBarView() {
            super(OverlayService.this);
            Paint paint = new Paint(1);
            this.paint = paint;
            this.longPressAction = new Runnable() { // from class: com.rootclicker.app.OverlayService.ControlBarView.1
                @Override // java.lang.Runnable
                public final void run() {
                    ControlBarView.this.m58lambda$new$0$comrootclickerappOverlayService$ControlBarView();
                }
            };
            paint.setColor(Color.rgb(60, 61, 70));
            setBackground(OverlayService.this.roundRect(Color.rgb(250, 250, 252), 16.0f));
            setContentDescription("冲榜小能手 控制条");
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            float width = getWidth() / 2.0f;
            float height = getHeight() / 2.0f;
            this.paint.setStyle(Paint.Style.FILL);
            float fDp = OverlayService.this.dp(8.0f);
            float fDp2 = OverlayService.this.dp(4.0f);
            for (int i = 0; i < 2; i++) {
                for (int i2 = 0; i2 < 2; i2++) {
                    float f = fDp + fDp2;
                    float f2 = fDp2 / 2.0f;
                    float f3 = ((i2 - 1) * f) + width + f2;
                    float f4 = ((i - 1) * f) + height + f2;
                    canvas.drawRoundRect(f3, f4, f3 + fDp, f4 + fDp, OverlayService.this.dp(2.0f), OverlayService.this.dp(2.0f), this.paint);
                }
            }
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.downRawX = motionEvent.getRawX();
                this.downRawY = motionEvent.getRawY();
                this.startX = OverlayService.this.controlParams.x;
                this.startY = OverlayService.this.controlParams.y;
                this.moved = false;
                this.longFired = false;
                OverlayService.this.ui.postDelayed(this.longPressAction, 1300L);
            } else if (actionMasked == 1) {
                OverlayService.this.ui.removeCallbacks(this.longPressAction);
                if (!this.moved && !this.longFired) {
                    OverlayService.this.toggleCountPanel();
                }
            } else if (actionMasked == 2) {
                float rawX = motionEvent.getRawX() - this.downRawX;
                float rawY = motionEvent.getRawY() - this.downRawY;
                if (Math.abs(rawX) > OverlayService.this.dp(6.0f) || Math.abs(rawY) > OverlayService.this.dp(6.0f)) {
                    this.moved = true;
                    OverlayService.this.ui.removeCallbacks(this.longPressAction);
                }
                if (this.moved) {
                    OverlayService.this.controlParams.x = this.startX + Math.round(rawX);
                    OverlayService.this.controlParams.y = this.startY + Math.round(rawY);
                    OverlayService.this.wm.updateViewLayout(this, OverlayService.this.controlParams);
                    OverlayService.this.positionCountPanel();
                }
            } else if (actionMasked == 3) {
                this.moved = false;
                OverlayService.this.ui.removeCallbacks(this.longPressAction);
            }
            return true;
        }
    }

    private final class MarkerView extends View {
        private final Paint fill;
        private final String label;
        private final Paint stroke;
        private final Paint text;

        MarkerView(String str) {
            super(OverlayService.this);
            this.label = str;
            Paint paint = new Paint(1);
            this.fill = paint;
            Paint paint2 = new Paint(1);
            this.stroke = paint2;
            Paint paint3 = new Paint(1);
            this.text = paint3;
            paint.setColor(Color.argb(220, 86, 181, 90));
            paint2.setColor(-1);
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setStrokeWidth(OverlayService.this.dp(2.0f));
            paint3.setColor(-1);
            paint3.setTextAlign(Paint.Align.CENTER);
            paint3.setTypeface(Typeface.DEFAULT_BOLD);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            float width = getWidth() / 2.0f;
            float height = getHeight() / 2.0f;
            canvas.drawCircle(width, height, OverlayService.this.dp(16.0f), this.fill);
            canvas.drawCircle(width, height, OverlayService.this.dp(16.0f), this.stroke);
            this.text.setTextSize(OverlayService.this.dp(13.0f));
            canvas.drawText(this.label, width, height - ((this.text.ascent() + this.text.descent()) / 2.0f), this.text);
        }
    }
}
