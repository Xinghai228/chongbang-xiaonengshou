package com.rootclicker.app;

import android.accessibilityservice.AccessibilityService;
import android.accessibilityservice.GestureDescription;
import android.content.Context;
import android.graphics.Path;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.accessibility.AccessibilityEvent;

/* JADX INFO: loaded from: classes.dex */
public final class ClickAccessibilityService extends AccessibilityService {
    private static volatile ClickAccessibilityService instance;

    @Override // android.accessibilityservice.AccessibilityService
    public void onAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
    }

    @Override // android.accessibilityservice.AccessibilityService
    public void onInterrupt() {
    }

    public static ClickAccessibilityService get() {
        return instance;
    }

    public static boolean isEnabled(Context context) {
        if (instance != null) {
            return true;
        }
        String str = context.getPackageName() + "/" + ClickAccessibilityService.class.getName();
        String string = Settings.Secure.getString(context.getContentResolver(), "enabled_accessibility_services");
        if (string == null) {
            return false;
        }
        TextUtils.SimpleStringSplitter simpleStringSplitter = new TextUtils.SimpleStringSplitter(':');
        simpleStringSplitter.setString(string);
        while (simpleStringSplitter.hasNext()) {
            String next = simpleStringSplitter.next();
            if (!next.equalsIgnoreCase(str)) {
                if (next.endsWith("/" + ClickAccessibilityService.class.getName())) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // android.accessibilityservice.AccessibilityService
    protected void onServiceConnected() {
        super.onServiceConnected();
        instance = this;
    }

    @Override // android.accessibilityservice.AccessibilityService
    public boolean onKeyEvent(KeyEvent keyEvent) {
        int keyCode;
        if (keyEvent.getAction() != 0 || ((keyCode = keyEvent.getKeyCode()) != 24 && keyCode != 25)) {
            return false;
        }
        OverlayService.interruptByKey(keyCode);
        return false;
    }

    @Override // android.app.Service
    public void onDestroy() {
        if (instance == this) {
            instance = null;
        }
        super.onDestroy();
    }

    public boolean tap(float f, float f2, long j) {
        Path path = new Path();
        path.moveTo(Math.max(0.0f, f), Math.max(0.0f, f2));
        try {
            return dispatchGesture(new GestureDescription.Builder().addStroke(new GestureDescription.StrokeDescription(path, 0L, Math.max(1L, j))).build(), null, null);
        } catch (Exception unused) {
            return false;
        }
    }
}
