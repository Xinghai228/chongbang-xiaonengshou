package com.rootclicker.app;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.provider.Settings;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public final class MainActivity extends Activity {
    private static boolean launched;
    private static boolean pendingExternalReset;
    private static MainActivity resumeInstance;
    private static volatile boolean visible;
    private TextView aboutButton;
    private LinearLayout aboutCard;
    private TapButton blueTapButton;
    private int blueTapCount;
    private TextView dialogStatus;
    private long lastTapAt;
    private LinearLayout logList;
    private ScrollView logScroll;
    private int logSeq;
    private LinearLayout permissionPanel;
    private TextView permissionStatus;
    private Boolean rootOk;
    private TapButton tapButton;
    private int tapCount;
    private Vibrator vibrator;
    private static final int GREEN = Color.rgb(7, 193, 96);
    private static final int BLUE = Color.rgb(25, 118, 210);
    private static final int RED = Color.rgb(229, 57, 53);
    private final List<String> logs = new ArrayList();
    private final List<Integer> logColors = new ArrayList();
    private final SimpleDateFormat clock = new SimpleDateFormat("HH:mm:ss", Locale.CHINA);

    private void toast(String str) {
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.vibrator = (Vibrator) getSystemService("vibrator");
        if (!launched) {
            launched = true;
            Prefs.setCurrent(this, 0);
            OverlayService.resetCurrentCount();
        }
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(Color.rgb(242, 242, 242));
        linearLayout.setFitsSystemWindows(true);
        setContentView(linearLayout);
        linearLayout.addView(buildHeader(), new LinearLayout.LayoutParams(-1, dp(56.0f)));
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        linearLayout2.setBackgroundColor(Color.rgb(242, 242, 242));
        linearLayout.addView(linearLayout2, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        int iRound = Math.round(getResources().getDisplayMetrics().widthPixels * 0.55f);
        ScrollView scrollView = new ScrollView(this);
        this.logScroll = scrollView;
        scrollView.setClipToPadding(false);
        LinearLayout linearLayout3 = new LinearLayout(this);
        this.logList = linearLayout3;
        linearLayout3.setOrientation(1);
        this.logList.setPadding(dp(10.0f), dp(10.0f), dp(6.0f), dp(16.0f));
        this.logScroll.addView(this.logList, new FrameLayout.LayoutParams(-1, -2));
        linearLayout2.addView(this.logScroll, new LinearLayout.LayoutParams(iRound, -1));
        View view = new View(this);
        view.setBackgroundColor(Color.rgb(224, 224, 224));
        linearLayout2.addView(view, new LinearLayout.LayoutParams(dp(1.0f), -1));
        buildPermissionPanel(linearLayout2);
        LinearLayout linearLayoutBuildAboutCard = buildAboutCard();
        this.aboutCard = linearLayoutBuildAboutCard;
        linearLayoutBuildAboutCard.setVisibility(8);
        linearLayout.addView(this.aboutCard, new LinearLayout.LayoutParams(-1, dp(380.0f)));
        linearLayout.addView(buildBottomBar(), new LinearLayout.LayoutParams(-1, -2));
        renderLogs();
        autoDetectPermissions();
    }

    private void autoDetectPermissions() {
        refreshPermissionStatus();
        new Thread(new Runnable() { // from class: com.rootclicker.app.MainActivity.1
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m2lambda$autoDetectPermissions$0$comrootclickerappMainActivity();
            }
        }, "RootClicker-autodetect").start();
    }

    void m2lambda$autoDetectPermissions$0$comrootclickerappMainActivity() {
        final boolean zIsRooted = RootClient.isRooted();
        runOnUiThread(new Runnable(this) { // from class: com.rootclicker.app.MainActivity.2
            final /* synthetic */ MainActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.this$0.m3lambda$autoDetectPermissions$1$comrootclickerappMainActivity(zIsRooted);
            }
        });
    }

    void m3lambda$autoDetectPermissions$1$comrootclickerappMainActivity(boolean z) {
        this.rootOk = Boolean.valueOf(z);
        refreshPermissionStatus();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        resumeInstance = this;
        visible = true;
        if (pendingExternalReset) {
            pendingExternalReset = false;
            resetLogs(false);
        }
        refreshPermissionStatus();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        visible = false;
        if (resumeInstance == this) {
            resumeInstance = null;
        }
    }

    static boolean isVisible() {
        return visible;
    }

    static void requestExternalReset() {
        MainActivity mainActivity = resumeInstance;
        if (mainActivity == null) {
            pendingExternalReset = true;
        } else {
            mainActivity.resetLogs(false);
        }
    }

    private LinearLayout buildAboutCard() {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(-1);
        View view = new View(this);
        view.setBackgroundColor(Color.rgb(224, 224, 224));
        linearLayout.addView(view, new LinearLayout.LayoutParams(-1, dp(1.0f)));
        ScrollView scrollView = new ScrollView(this);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(1);
        linearLayout2.setPadding(dp(16.0f), dp(12.0f), dp(16.0f), dp(14.0f));
        TextView textView = new TextView(this);
        textView.setText("使用说明");
        textView.setTextSize(15.0f);
        textView.setTextColor(Color.rgb(25, 25, 25));
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        linearLayout2.addView(textView);
        TextView textView2 = new TextView(this);
        textView2.setText("1、作者@贝吉塔，如有问题或有更好的思路，请联系小红书leiya_e。\n\n2、给予软件root权限或无障碍权限才可使用，同时也要打开悬浮窗权限。\n\n3、点击速度：根据测试进行调整，建议在软件主页测试或直播间以1g进行测试，因手机性能差异化问题，在直播间中可能会多点1~2次，建议多多测试设置好点击速度。\n\n4、调整坐标点：字面意思，选取你要点击的位置后点完成即可，每次打开软件会按照上次设置的位置默认选择。\n\n5、点击设置：点击是按10x1888=18880(向上取整1.89w)计算。当前就是你现在已经贡献数量，比如已贡献1.89w，当前设为1.89w；如果你已贡献的数量是2.3w，那么按个人感觉选择是1.88w或 3.78w。举例:当前值为5时，选择目标10次按钮，执行时就会点击5次。(双击目标处的次数即可执行点击)。\n\n6、可自行在本软件主页面测试，熟悉之后再进行实际操作，如果中途想要停止点击操作，音量+或音量-即可停止操作。");
        textView2.setTextSize(13.0f);
        textView2.setTextColor(Color.rgb(70, 70, 70));
        textView2.setLineSpacing(dp(3.0f), 1.2f);
        textView2.setPadding(0, dp(10.0f), 0, 0);
        linearLayout2.addView(textView2);
        scrollView.addView(linearLayout2, new FrameLayout.LayoutParams(-1, -2));
        linearLayout.addView(scrollView, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        return linearLayout;
    }

    private void toggleAbout() {
        LinearLayout linearLayout = this.aboutCard;
        if (linearLayout == null) {
            return;
        }
        boolean z = linearLayout.getVisibility() != 0;
        this.aboutCard.setVisibility(z ? 0 : 8);
        TextView textView = this.aboutButton;
        if (textView != null) {
            textView.setTextColor(z ? GREEN : Color.rgb(88, 88, 88));
        }
        if (z) {
            vibrate(10);
        }
    }

    private View buildHeader() {
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setBackgroundColor(Color.rgb(237, 237, 237));
        TextView textView = new TextView(this);
        textView.setText("控制中心");
        textView.setTextSize(17.0f);
        textView.setTextColor(Color.rgb(25, 25, 25));
        textView.setGravity(17);
        frameLayout.addView(textView, new FrameLayout.LayoutParams(-1, -1));
        return frameLayout;
    }

    private View buildBottomBar() {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(-1);
        View view = new View(this);
        view.setBackgroundColor(Color.rgb(224, 224, 224));
        linearLayout.addView(view, new LinearLayout.LayoutParams(-1, dp(1.0f)));
        FrameLayout frameLayout = new FrameLayout(this);
        TextView textView = new TextView(this);
        textView.setText("清除");
        textView.setTextSize(13.0f);
        textView.setTextColor(Color.rgb(88, 88, 88));
        textView.setGravity(17);
        textView.setPadding(dp(12.0f), dp(9.0f), dp(12.0f), dp(9.0f));
        textView.setBackground(roundRect(Color.rgb(234, 234, 234), 22.0f));
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.rootclicker.app.MainActivity.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MainActivity.this.m4lambda$buildBottomBar$0$comrootclickerappMainActivity(view2);
            }
        });
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 8388627);
        layoutParams.leftMargin = dp(16.0f);
        frameLayout.addView(textView, layoutParams);
        this.tapButton = new TapButton(RED, false);
        this.blueTapButton = new TapButton(BLUE, true);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        linearLayout2.addView(this.tapButton, new LinearLayout.LayoutParams(dp(50.0f), dp(50.0f)));
        linearLayout2.addView(new View(this), new LinearLayout.LayoutParams(dp(36.0f), dp(1.0f)));
        linearLayout2.addView(this.blueTapButton, new LinearLayout.LayoutParams(dp(50.0f), dp(50.0f)));
        frameLayout.addView(linearLayout2, new FrameLayout.LayoutParams(-2, -2, 17));
        TextView textView2 = new TextView(this);
        this.aboutButton = textView2;
        textView2.setText("使用说明");
        this.aboutButton.setTextSize(13.0f);
        this.aboutButton.setTextColor(Color.rgb(88, 88, 88));
        this.aboutButton.setGravity(17);
        this.aboutButton.setPadding(dp(12.0f), dp(9.0f), dp(12.0f), dp(9.0f));
        this.aboutButton.setBackground(roundRect(Color.rgb(234, 234, 234), 22.0f));
        this.aboutButton.setOnClickListener(new View.OnClickListener() { // from class: com.rootclicker.app.MainActivity.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MainActivity.this.m5lambda$buildBottomBar$1$comrootclickerappMainActivity(view2);
            }
        });
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2, 8388629);
        layoutParams2.rightMargin = dp(16.0f);
        frameLayout.addView(this.aboutButton, layoutParams2);
        linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(-1, dp(72.0f)));
        return linearLayout;
    }

    void m4lambda$buildBottomBar$0$comrootclickerappMainActivity(View view) {
        resetLogs();
    }

    void m5lambda$buildBottomBar$1$comrootclickerappMainActivity(View view) {
        toggleAbout();
    }

    public void recordTap(long j) {
        recordTap(j, false);
    }

    public void recordTap(long j, boolean blue) {
        String str;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j2 = this.lastTapAt;
        long j3 = j2 == 0 ? -1L : jCurrentTimeMillis - j2;
        this.lastTapAt = jCurrentTimeMillis;
        if (blue) {
            this.blueTapCount++;
        } else {
            this.tapCount++;
        }
        this.logSeq++;
        List<String> list = this.logs;
        StringBuilder sb = new StringBuilder("第 ");
        sb.append(this.logSeq);
        sb.append(" 次\n按压 ");
        sb.append(j);
        sb.append(" ms ｜ 间隔 ");
        if (j3 < 0) {
            str = "—";
        } else {
            str = j3 + " ms";
        }
        sb.append(str);
        list.add(sb.toString());
        this.logColors.add(Integer.valueOf(blue ? BLUE : RED));
        while (this.logs.size() > 200) {
            this.logs.remove(0);
            this.logColors.remove(0);
        }
        renderLogs();
        TapButton tapButton = this.tapButton;
        if (tapButton != null) {
            tapButton.invalidate();
        }
        TapButton tapButton2 = this.blueTapButton;
        if (tapButton2 != null) {
            tapButton2.invalidate();
        }
        if (Prefs.getMainTapVibrate(this)) {
            vibrate(12);
        }
    }

    private void resetLogs() {
        resetLogs(true);
    }

    private void resetLogs(boolean z) {
        this.logs.clear();
        this.logColors.clear();
        this.tapCount = 0;
        this.blueTapCount = 0;
        this.logSeq = 0;
        this.lastTapAt = 0L;
        renderLogs();
        TapButton tapButton = this.tapButton;
        if (tapButton != null) {
            tapButton.invalidate();
        }
        TapButton tapButton2 = this.blueTapButton;
        if (tapButton2 != null) {
            tapButton2.invalidate();
        }
        if (z) {
            OverlayService.resetCountDefaults(this);
            vibrate(40);
            toast("已清除次数和日志");
        }
    }

    private void renderLogs() {
        LinearLayout linearLayout = this.logList;
        if (linearLayout == null) {
            return;
        }
        linearLayout.removeAllViews();
        if (this.logs.isEmpty()) {
            TextView textView = new TextView(this);
            textView.setText("暂无点击日志\n点击下方按钮开始记录");
            textView.setTextSize(13.0f);
            textView.setTextColor(Color.rgb(150, 150, 150));
            textView.setLineSpacing(0.0f, 1.3f);
            textView.setPadding(dp(6.0f), dp(18.0f), dp(6.0f), dp(6.0f));
            this.logList.addView(textView);
            return;
        }
        int i = 0;
        while (i < this.logs.size()) {
            String[] strArrSplit = this.logs.get(i).split("\n");
            FrameLayout frameLayout = new FrameLayout(this);
            frameLayout.setBackground(roundRect(-1, 12.0f));
            frameLayout.setPadding(dp(12.0f), dp(10.0f), dp(12.0f), dp(10.0f));
            LinearLayout linearLayout2 = new LinearLayout(this);
            linearLayout2.setOrientation(1);
            TextView textView2 = new TextView(this);
            textView2.setText(strArrSplit[0]);
            textView2.setTextSize(14.0f);
            textView2.setTextColor(Color.rgb(30, 30, 30));
            textView2.setTypeface(Typeface.DEFAULT_BOLD);
            linearLayout2.addView(textView2);
            TextView textView3 = new TextView(this);
            textView3.setText(strArrSplit[1]);
            textView3.setTextSize(12.0f);
            textView3.setTextColor(Color.rgb(96, 96, 96));
            textView3.setPadding(0, dp(4.0f), 0, 0);
            linearLayout2.addView(textView3);
            frameLayout.addView(linearLayout2, new FrameLayout.LayoutParams(-1, -2));
            View view = new View(this);
            view.setBackground(circle(i < this.logColors.size() ? this.logColors.get(i).intValue() : RED));
            frameLayout.addView(view, new FrameLayout.LayoutParams(dp(9.0f), dp(9.0f), 8388661));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.setMargins(0, 0, 0, dp(8.0f));
            this.logList.addView(frameLayout, layoutParams);
            i++;
        }
        final ScrollView scrollView = this.logScroll;
        if (scrollView != null) {
            scrollView.post(new Runnable(this) { // from class: com.rootclicker.app.MainActivity.5
                final /* synthetic */ MainActivity this$0;

                {
                    this.this$0 = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    scrollView.fullScroll(130);
                }
            });
        }
    }

    private void buildPermissionPanel(LinearLayout linearLayout) {
        LinearLayout linearLayout2 = new LinearLayout(this);
        this.permissionPanel = linearLayout2;
        linearLayout2.setOrientation(1);
        this.permissionPanel.setBackgroundColor(Color.rgb(242, 242, 242));
        TextView textView = new TextView(this);
        textView.setText("权限检测中心");
        textView.setTextSize(14.0f);
        textView.setTextColor(Color.rgb(43, 44, 53));
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setPadding(dp(12.0f), dp(12.0f), dp(12.0f), dp(6.0f));
        this.permissionPanel.addView(textView);
        TextView textView2 = new TextView(this);
        this.permissionStatus = textView2;
        textView2.setTextSize(12.0f);
        this.permissionStatus.setTextColor(Color.rgb(100, 102, 113));
        this.permissionStatus.setLineSpacing(0.0f, 1.3f);
        this.permissionStatus.setPadding(dp(12.0f), dp(0.0f), dp(12.0f), dp(8.0f));
        this.permissionPanel.addView(this.permissionStatus);
        refreshPermissionStatus();
        View view = new View(this);
        view.setBackgroundColor(Color.rgb(224, 224, 224));
        this.permissionPanel.addView(view, new LinearLayout.LayoutParams(-1, dp(1.0f)));
        int iDp = dp(14.0f);
        int iDp2 = dp(7.0f);
        int iDp3 = dp(6.0f);
        this.permissionPanel.addView(buildPanelButton("授予悬浮窗权限", new Runnable() { // from class: com.rootclicker.app.MainActivity.6
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m6lambda$buildPermissionPanel$0$comrootclickerappMainActivity();
            }
        }, iDp, iDp2), marginParams(iDp3));
        this.permissionPanel.addView(buildPanelButton("打开悬浮窗", new Runnable() { // from class: com.rootclicker.app.MainActivity.7
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m7lambda$buildPermissionPanel$1$comrootclickerappMainActivity();
            }
        }, iDp, iDp2), marginParams(iDp3));
        this.permissionPanel.addView(buildPanelButton("关闭悬浮窗", new Runnable() { // from class: com.rootclicker.app.MainActivity.8
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m8lambda$buildPermissionPanel$2$comrootclickerappMainActivity();
            }
        }, iDp, iDp2), marginParams(iDp3));
        this.permissionPanel.addView(buildPanelButton("检测 Root 权限", new Runnable() { // from class: com.rootclicker.app.MainActivity.9
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m9lambda$buildPermissionPanel$3$comrootclickerappMainActivity();
            }
        }, iDp, iDp2), marginParams(iDp3));
        this.permissionPanel.addView(buildPanelButton("跳转打开无障碍", new Runnable() { // from class: com.rootclicker.app.MainActivity.10
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m10lambda$buildPermissionPanel$4$comrootclickerappMainActivity();
            }
        }, iDp, iDp2), marginParams(iDp3));
        this.permissionPanel.addView(buildPanelButton("检测无障碍权限", new Runnable() { // from class: com.rootclicker.app.MainActivity.11
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m11lambda$buildPermissionPanel$5$comrootclickerappMainActivity();
            }
        }, iDp, iDp2), marginParams(iDp3));
        this.permissionPanel.addView(buildPanelButton("GitHub 源码", new Runnable() { // from class: com.rootclicker.app.MainActivity.12
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m12lambda$buildPermissionPanel$6$comrootclickerappMainActivity();
            }
        }, iDp, iDp2), marginParams(iDp3));
        this.permissionPanel.addView(buildPanelButton("关于", new MainActivity$$ExternalSyntheticLambda10(this), iDp, iDp2), marginParams(iDp3));
        TextView textView3 = new TextView(this);
        textView3.setText("版本 " + currentVersionName());
        textView3.setTextSize(12.0f);
        textView3.setTextColor(Color.rgb(68, 68, 76));
        textView3.setGravity(17);
        textView3.setPadding(iDp, iDp2, iDp, iDp2);
        textView3.setBackground(roundRect(-1, 10.0f));
        this.permissionPanel.addView(textView3, marginParams(iDp3));
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setOrientation(0);
        linearLayout3.setGravity(16);
        linearLayout3.setPadding(iDp, iDp2, iDp, iDp2);
        linearLayout3.setBackground(roundRect(-1, 10.0f));
        TextView textView4 = new TextView(this);
        textView4.setText("主页点击震动");
        textView4.setTextSize(12.0f);
        textView4.setTextColor(Color.rgb(68, 68, 76));
        textView4.setGravity(17);
        linearLayout3.addView(textView4, new LinearLayout.LayoutParams(0, -2, 1.0f));
        linearLayout3.addView(panelSwitch(Prefs.getMainTapVibrate(this), new Consumer() { // from class: com.rootclicker.app.MainActivity.13
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                MainActivity.this.m13lambda$buildPermissionPanel$7$comrootclickerappMainActivity((Boolean) obj);
            }
        }), new LinearLayout.LayoutParams(dp(26.0f), dp(14.0f)));
        this.permissionPanel.addView(linearLayout3, marginParams(iDp3));
        LinearLayout linearLayout4 = new LinearLayout(this);
        linearLayout4.setOrientation(0);
        linearLayout4.setGravity(16);
        linearLayout4.setPadding(iDp, iDp2, iDp, iDp2);
        linearLayout4.setBackground(roundRect(-1, 10.0f));
        TextView textView5 = new TextView(this);
        textView5.setText("结束时震动");
        textView5.setTextSize(12.0f);
        textView5.setTextColor(Color.rgb(68, 68, 76));
        textView5.setGravity(17);
        linearLayout4.addView(textView5, new LinearLayout.LayoutParams(0, -2, 1.0f));
        linearLayout4.addView(panelSwitch(Prefs.getEndVibrate(this), new Consumer() { // from class: com.rootclicker.app.MainActivity.14
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Prefs.setEndVibrate(MainActivity.this, ((Boolean) obj).booleanValue());
            }
        }), new LinearLayout.LayoutParams(dp(26.0f), dp(14.0f)));
        this.permissionPanel.addView(linearLayout4, marginParams(iDp3));
        final TextView textView6 = new TextView(this);
        textView6.setText("设备名称：" + Prefs.getDeviceName(this));
        textView6.setTextSize(12.0f);
        textView6.setTextColor(Color.rgb(68, 68, 76));
        textView6.setGravity(17);
        textView6.setPadding(iDp, iDp2, iDp, iDp2);
        textView6.setBackground(roundRect(-1, 10.0f));
        textView6.setOnClickListener(new View.OnClickListener(this) { // from class: com.rootclicker.app.MainActivity.15
            final /* synthetic */ MainActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.this$0.m14lambda$buildPermissionPanel$8$comrootclickerappMainActivity(textView6, view2);
            }
        });
        this.permissionPanel.addView(textView6, marginParams(iDp3));
        linearLayout.addView(this.permissionPanel, new LinearLayout.LayoutParams(0, -1, 1.0f));
    }

    void m6lambda$buildPermissionPanel$0$comrootclickerappMainActivity() {
        requestOverlay();
        refreshPermissionStatus();
    }

    void m7lambda$buildPermissionPanel$1$comrootclickerappMainActivity() {
        startOverlay();
        refreshPermissionStatus();
    }

    void m8lambda$buildPermissionPanel$2$comrootclickerappMainActivity() {
        OverlayService.setRequestedRunning(false);
        refreshPermissionStatus();
        stopService(new Intent(this, (Class<?>) OverlayService.class));
        toast("悬浮窗已关闭");
        refreshPermissionStatus();
    }

    void m9lambda$buildPermissionPanel$3$comrootclickerappMainActivity() {
        checkRoot();
        refreshPermissionStatus();
    }

    void m10lambda$buildPermissionPanel$4$comrootclickerappMainActivity() {
        try {
            startActivity(new Intent("android.settings.ACCESSIBILITY_SETTINGS"));
        } catch (Exception unused) {
            toast("无法打开无障碍设置");
        }
    }

    void m11lambda$buildPermissionPanel$5$comrootclickerappMainActivity() {
        checkAccessibility();
        refreshPermissionStatus();
    }

    void m12lambda$buildPermissionPanel$6$comrootclickerappMainActivity() {
        try {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://github.com/leiya228/RootClicker")));
        } catch (Exception unused) {
            toast("未找到可用的浏览器");
        }
    }

    void m13lambda$buildPermissionPanel$7$comrootclickerappMainActivity(Boolean bool) {
        Prefs.setMainTapVibrate(this, bool.booleanValue());
    }

    void m14lambda$buildPermissionPanel$8$comrootclickerappMainActivity(TextView textView, View view) {
        showDeviceNameDialog(textView);
    }

    private void showDeviceNameDialog(final TextView textView) {
        final EditText editText = new EditText(this);
        editText.setText(Prefs.getDeviceName(this));
        editText.setSingleLine(true);
        editText.setSelection(editText.getText().length());
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setPadding(dp(18.0f), 0, dp(18.0f), 0);
        frameLayout.addView(editText, new FrameLayout.LayoutParams(-1, -2));
        new AlertDialog.Builder(this).setTitle("修改设备名称").setView(frameLayout).setNegativeButton("取消", (DialogInterface.OnClickListener) null).setPositiveButton("保存", new DialogInterface.OnClickListener(this) { // from class: com.rootclicker.app.MainActivity.16
            final /* synthetic */ MainActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.this$0.m22lambda$showDeviceNameDialog$0$comrootclickerappMainActivity(editText, textView, dialogInterface, i);
            }
        }).show();
    }

    void m22lambda$showDeviceNameDialog$0$comrootclickerappMainActivity(EditText editText, TextView textView, DialogInterface dialogInterface, int i) {
        Prefs.setDeviceName(this, editText.getText().toString());
        textView.setText("设备名称：" + Prefs.getDeviceName(this));
        OverlayService.updateDeviceName();
        vibrate(10);
        toast("设备名称已修改");
    }

    private View panelSwitch(boolean z, final Consumer<Boolean> consumer) {
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
        frameLayout.setOnClickListener(new View.OnClickListener(this) { // from class: com.rootclicker.app.MainActivity.17
            final /* synthetic */ MainActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.this$0.m17lambda$panelSwitch$0$comrootclickerappMainActivity(zArr, viewArr, iDp, i4, iDp3, frameLayout, iDp2, consumer, view2);
            }
        });
        return frameLayout;
    }

    void m17lambda$panelSwitch$0$comrootclickerappMainActivity(boolean[] zArr, View[] viewArr, int i, int i2, int i3, FrameLayout frameLayout, int i4, Consumer consumer, View view) {
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
        if (zArr[0]) {
            vibrate(12);
        }
    }

    private String currentVersionName() {
        try {
            return getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
        } catch (Exception unused) {
            return "";
        }
    }

    private LinearLayout.LayoutParams marginParams(int i) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(dp(8.0f), i, dp(8.0f), 0);
        return layoutParams;
    }

    private TextView buildPanelButton(String str, final Runnable runnable, int i, int i2) {
        TextView textView = new TextView(this);
        textView.setText(str);
        textView.setTextSize(12.0f);
        textView.setTextColor(Color.rgb(68, 68, 76));
        textView.setGravity(17);
        textView.setPadding(i, i2, i, i2);
        textView.setBackground(roundRect(-1, 10.0f));
        textView.setOnClickListener(new View.OnClickListener(this) { // from class: com.rootclicker.app.MainActivity.18
            final /* synthetic */ MainActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                runnable.run();
            }
        });
        return textView;
    }

    private void refreshPermissionStatus() {
        TextView textView = this.permissionStatus;
        if (textView != null) {
            textView.setText(statusText());
        }
    }

    private void showControlDialog() {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(dp(20.0f), dp(8.0f), dp(20.0f), dp(4.0f));
        TextView textView = new TextView(this);
        this.dialogStatus = textView;
        textView.setTextSize(13.0f);
        this.dialogStatus.setTextColor(Color.rgb(80, 80, 80));
        this.dialogStatus.setLineSpacing(0.0f, 1.25f);
        this.dialogStatus.setText(statusText());
        linearLayout.addView(this.dialogStatus, new LinearLayout.LayoutParams(-1, -2));
        linearLayout.addView(actionButton("授予悬浮窗权限", new Runnable() { // from class: com.rootclicker.app.MainActivity.19
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.requestOverlay();
            }
        }));
        linearLayout.addView(actionButton("检测 Root 权限", new Runnable() { // from class: com.rootclicker.app.MainActivity.20
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.checkRoot();
            }
        }));
        linearLayout.addView(actionButton("跳转打开无障碍", new Runnable() { // from class: com.rootclicker.app.MainActivity.21
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m18lambda$showControlDialog$0$comrootclickerappMainActivity();
            }
        }));
        linearLayout.addView(actionButton("检测无障碍权限", new Runnable() { // from class: com.rootclicker.app.MainActivity.22
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.checkAccessibility();
            }
        }));
        linearLayout.addView(actionButton("打开悬浮窗", new Runnable() { // from class: com.rootclicker.app.MainActivity.23
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.startOverlay();
            }
        }));
        linearLayout.addView(actionButton("关闭悬浮窗", new Runnable() { // from class: com.rootclicker.app.MainActivity.24
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m19lambda$showControlDialog$1$comrootclickerappMainActivity();
            }
        }));
        linearLayout.addView(actionButton("在 GitHub 查看源码", new Runnable() { // from class: com.rootclicker.app.MainActivity.25
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m21lambda$showControlDialog$3$comrootclickerappMainActivity();
            }
        }));
        linearLayout.addView(actionButton("关于", new MainActivity$$ExternalSyntheticLambda10(this)));
        AlertDialog alertDialogCreate = new AlertDialog.Builder(this).setTitle("权限检测中心").setView(linearLayout).setNegativeButton("关闭", (DialogInterface.OnClickListener) null).create();
        roundDialog(alertDialogCreate);
        alertDialogCreate.show();
    }

    void m18lambda$showControlDialog$0$comrootclickerappMainActivity() {
        try {
            startActivity(new Intent("android.settings.ACCESSIBILITY_SETTINGS"));
        } catch (Exception unused) {
            toast("无法打开无障碍设置");
        }
    }

    void m19lambda$showControlDialog$1$comrootclickerappMainActivity() {
        stopService(new Intent(this, (Class<?>) OverlayService.class));
        toast("悬浮窗已关闭");
        TextView textView = this.dialogStatus;
        if (textView != null) {
            textView.postDelayed(new Runnable() { // from class: com.rootclicker.app.MainActivity.26
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.this.m20lambda$showControlDialog$2$comrootclickerappMainActivity();
                }
            }, 400L);
        }
    }

    void m20lambda$showControlDialog$2$comrootclickerappMainActivity() {
        this.dialogStatus.setText(statusText());
    }

    void m21lambda$showControlDialog$3$comrootclickerappMainActivity() {
        try {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://github.com/leiya228/RootClicker")));
        } catch (Exception unused) {
            toast("未找到可用的浏览器");
        }
    }

    public void showTermsDialog() {
        int iDp = dp(16.0f);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(iDp);
        linearLayout.setBackground(gradientDrawable);
        TextView textView = new TextView(this);
        textView.setText("使用条款");
        textView.setTextSize(16.0f);
        textView.setTextColor(Color.rgb(25, 25, 25));
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setPadding(dp(20.0f), dp(18.0f), dp(20.0f), dp(6.0f));
        linearLayout.addView(textView);
        View view = new View(this);
        view.setBackgroundColor(Color.rgb(228, 228, 228));
        linearLayout.addView(view, new LinearLayout.LayoutParams(-1, dp(1.0f)));
        ScrollView scrollView = new ScrollView(this);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(1);
        linearLayout2.setPadding(dp(20.0f), dp(12.0f), dp(20.0f), dp(8.0f));
        TextView textView2 = new TextView(this);
        textView2.setText("本项目仅供学习与研究使用，不得用于任何形式的商业行为。\n使用者因违反本声明规定而触犯法律的，后果自负，作者不承担责任。\n本项目完全免费开源，请勿二次贩卖。\n本APP是为了学习研究用，不得进行任何形式的转发、发布、传播。请于24小时内卸载本APP。\n若使用期间造成任何损失，作者不负任何责任。\n本APP不篡改、不修改、不获取任何个人信息及其它app信息。\n本APP使用者因为违反本声明的规定而触犯中华人民共和国法律的，一切后果自负，作者不承担任何责任。\n凡以任何方式直接、间接使用APP者，视为自愿接受本声明的约束。\n本APP如无意中侵犯了某个媒体或个人的知识产权，请来信或来电告之，作者将立即删除。");
        textView2.setTextSize(13.0f);
        textView2.setTextColor(Color.rgb(60, 60, 60));
        textView2.setLineSpacing(dp(3.0f), 1.25f);
        linearLayout2.addView(textView2);
        scrollView.addView(linearLayout2, new FrameLayout.LayoutParams(-1, -2));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
        layoutParams.weight = 1.0f;
        linearLayout.addView(scrollView, layoutParams);
        View view2 = new View(this);
        view2.setBackgroundColor(Color.rgb(228, 228, 228));
        linearLayout.addView(view2, new LinearLayout.LayoutParams(-1, dp(1.0f)));
        TextView textView3 = new TextView(this);
        textView3.setText("我已阅读");
        textView3.setTextSize(15.0f);
        textView3.setTextColor(Color.rgb(75, 91, 165));
        textView3.setGravity(17);
        textView3.setPadding(dp(10.0f), dp(14.0f), dp(10.0f), dp(14.0f));
        FrameLayout frameLayout = new FrameLayout(this);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2, 8388629);
        layoutParams2.setMargins(0, 0, dp(14.0f), dp(10.0f));
        frameLayout.addView(textView3, layoutParams2);
        linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(-1, -2));
        final Dialog dialog = new Dialog(this);
        dialog.setContentView(linearLayout);
        if (dialog.getWindow() != null) {
            dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            dialog.getWindow().setDimAmount(0.45f);
        }
        textView3.setOnClickListener(new View.OnClickListener(this) { // from class: com.rootclicker.app.MainActivity.27
            final /* synthetic */ MainActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                dialog.dismiss();
            }
        });
        dialog.show();
    }

    private void roundDialog(AlertDialog alertDialog) {
        if (alertDialog.getWindow() == null) {
            return;
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(dp(16.0f));
        alertDialog.getWindow().setBackgroundDrawable(gradientDrawable);
        try {
            View decorView = alertDialog.getWindow().getDecorView();
            if (decorView instanceof ViewGroup) {
                ((ViewGroup) decorView).setBackground(null);
            }
        } catch (Exception unused) {
        }
    }

    private View actionButton(String str, final Runnable runnable) {
        Button button = new Button(this);
        button.setText(str);
        button.setAllCaps(false);
        button.setTextSize(15.0f);
        button.setOnClickListener(new View.OnClickListener(this) { // from class: com.rootclicker.app.MainActivity.28
            final /* synthetic */ MainActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                runnable.run();
            }
        });
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, dp(46.0f));
        layoutParams.setMargins(0, dp(8.0f), 0, 0);
        button.setLayoutParams(layoutParams);
        return button;
    }

    private CharSequence statusText() {
        String str;
        boolean zCanDrawOverlays = Settings.canDrawOverlays(this);
        Boolean bool = this.rootOk;
        if (bool == null) {
            str = "未检测";
        } else {
            str = bool.booleanValue() ? "已授权" : "未授权";
        }
        boolean zIsEnabled = ClickAccessibilityService.isEnabled(this);
        String str2 = zIsEnabled ? "已开启" : "未开启";
        boolean zIsRunning = OverlayService.isRunning();
        boolean z = Boolean.TRUE.equals(this.rootOk) || zIsEnabled;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) "悬浮窗权限：").append((CharSequence) (zCanDrawOverlays ? "已授权" : "未授权")).append((CharSequence) "\nRoot 权限：").append((CharSequence) str).append((CharSequence) "\n无障碍服务：").append((CharSequence) str2).append((CharSequence) "\n悬浮窗服务：").append((CharSequence) (zIsRunning ? "运行中" : "未运行")).append((CharSequence) "\n可使用状态：");
        String str3 = z ? "✔" : "✖";
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) str3);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(z ? Color.rgb(46, 160, 67) : Color.rgb(220, 60, 60)), length, spannableStringBuilder.length(), 33);
        return spannableStringBuilder;
    }

    public void checkAccessibility() {
        boolean zIsEnabled = ClickAccessibilityService.isEnabled(this);
        TextView textView = this.dialogStatus;
        if (textView != null) {
            textView.setText(statusText());
        }
        toast(zIsEnabled ? "无障碍服务已开启" : "无障碍服务未开启，请先在设置中启用");
    }

    public void requestOverlay() {
        if (Settings.canDrawOverlays(this)) {
            toast("悬浮窗权限已授权");
            return;
        }
        startActivity(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + getPackageName())));
    }

    public void checkRoot() {
        TextView textView = this.dialogStatus;
        if (textView != null) {
            textView.setText(((Object) statusText()) + "\n正在检测 Root…");
        }
        new Thread(new Runnable() { // from class: com.rootclicker.app.MainActivity.29
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m15lambda$checkRoot$0$comrootclickerappMainActivity();
            }
        }, "RootClicker-check").start();
    }

    void m15lambda$checkRoot$0$comrootclickerappMainActivity() {
        final boolean zIsRooted = RootClient.isRooted();
        runOnUiThread(new Runnable(this) { // from class: com.rootclicker.app.MainActivity.30
            final /* synthetic */ MainActivity this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.this$0.m16lambda$checkRoot$1$comrootclickerappMainActivity(zIsRooted);
            }
        });
    }

    void m16lambda$checkRoot$1$comrootclickerappMainActivity(boolean z) {
        this.rootOk = Boolean.valueOf(z);
        TextView textView = this.dialogStatus;
        if (textView != null) {
            textView.setText(statusText());
        }
        toast(z ? "Root 已授权" : "未获取到 Root 权限");
    }

    public void startOverlay() {
        if (!Settings.canDrawOverlays(this)) {
            toast("请先授予悬浮窗权限");
            requestOverlay();
            return;
        }
        OverlayService.setRequestedRunning(true);
        startForegroundService(new Intent(this, (Class<?>) OverlayService.class));
        refreshPermissionStatus();
        toast("悬浮窗已启动");
        TextView textView = this.dialogStatus;
        if (textView != null) {
            textView.postDelayed(new Runnable() { // from class: com.rootclicker.app.MainActivity.31
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.this.m23lambda$startOverlay$0$comrootclickerappMainActivity();
                }
            }, 600L);
        }
    }

    void m23lambda$startOverlay$0$comrootclickerappMainActivity() {
        this.dialogStatus.setText(statusText());
    }

    private void vibrate(int i) {
        Vibrator vibrator = this.vibrator;
        if (vibrator == null || !vibrator.hasVibrator()) {
            return;
        }
        try {
            this.vibrator.vibrate(VibrationEffect.createOneShot(i, -1));
        } catch (Exception unused) {
        }
    }

    private GradientDrawable roundRect(int i, float f) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadius(dp(f));
        return gradientDrawable;
    }

    private GradientDrawable circle(int i) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(i);
        return gradientDrawable;
    }

    public int dp(float f) {
        return Math.round(f * getResources().getDisplayMetrics().density);
    }

    private final class TapButton extends View {
        private final boolean blue;
        private final Paint circle;
        private long downAt;
        private float downX;
        private float downY;
        private final Paint label;
        private boolean moved;
        private final Paint number;

        TapButton(int color, boolean blue) {
            super(MainActivity.this);
            this.blue = blue;
            Paint paint = new Paint(1);
            this.circle = paint;
            Paint paint2 = new Paint(1);
            this.number = paint2;
            Paint paint3 = new Paint(1);
            this.label = paint3;
            paint.setColor(color);
            paint2.setColor(-1);
            paint2.setTextAlign(Paint.Align.CENTER);
            paint2.setTypeface(Typeface.DEFAULT_BOLD);
            paint3.setColor(-1);
            paint3.setTextAlign(Paint.Align.CENTER);
            paint3.setTextSize(MainActivity.this.dp(9.0f));
            setContentDescription(blue ? "蓝色点击计数按钮" : "红色点击计数按钮");
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float f;
            super.onDraw(canvas);
            float width = getWidth() / 2.0f;
            float height = getHeight() / 2.0f;
            canvas.drawCircle(width, height, (Math.min(getWidth(), getHeight()) / 2.0f) - MainActivity.this.dp(2.0f), this.circle);
            String strValueOf = String.valueOf(this.blue ? MainActivity.this.blueTapCount : MainActivity.this.tapCount);
            Paint paint = this.number;
            MainActivity mainActivity = MainActivity.this;
            if (strValueOf.length() > 3) {
                f = 14.0f;
            } else {
                f = strValueOf.length() > 2 ? 17.0f : 20.0f;
            }
            paint.setTextSize(mainActivity.dp(f));
            canvas.drawText(strValueOf, width, (height - MainActivity.this.dp(7.0f)) - ((this.number.ascent() + this.number.descent()) / 2.0f), this.number);
            canvas.drawText("点击", width, height + MainActivity.this.dp(19.0f), this.label);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.downAt = System.currentTimeMillis();
                this.downX = motionEvent.getX();
                this.downY = motionEvent.getY();
                this.moved = false;
            } else if (actionMasked == 1) {
                if (!this.moved) {
                    MainActivity.this.recordTap(Math.max(1L, System.currentTimeMillis() - this.downAt), this.blue);
                }
                this.moved = false;
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                    this.moved = false;
                }
            } else if (!this.moved && (Math.abs(motionEvent.getX() - this.downX) > MainActivity.this.dp(16.0f) || Math.abs(motionEvent.getY() - this.downY) > MainActivity.this.dp(16.0f))) {
                this.moved = true;
            }
            return true;
        }
    }
}
