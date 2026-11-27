package com.rootclicker.app;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class Prefs {
    private static final String FILE = "rootclicker";
    private static final String K_CROSS_INTERVAL = "cross_interval_ms";
    private static final String K_CURRENT = "current_count";
    private static final String K_DEVICE_ID = "device_id";
    private static final String K_DEVICE_NAME = "device_name";
    private static final String K_END_VIB = "end_vibrate";
    private static final String K_HOLD = "hold_ms";
    private static final String K_INTERVAL = "interval_ms";
    private static final String K_MAIN_TAP_VIB = "main_tap_vibrate";
    private static final String K_PANEL_H = "count_panel_h";
    private static final String K_PANEL_W = "count_panel_w";
    private static final String K_PANEL_X = "count_panel_x";
    private static final String K_PANEL_Y = "count_panel_y";
    private static final String K_POINTS = "points";
    private static final String K_POINT_ACTIVE = "point_active";
    private static final String K_POINT_ACTIVE_LIST = "point_active_list";
    private static final String K_POINT_LIST = "point_list";
    private static final String K_POINT_NAME = "point_name";
    private static final String K_POINT_SET = "point_set";
    private static final String K_POINT_X = "point_x";
    private static final String K_POINT_Y = "point_y";
    private static final String K_SEQUENTIAL = "run_sequential";
    private static final String K_SEQ_GAP = "seq_point_gap_ms";
    private static final String K_TARGET = "target_count";
    private static final String K_WIN_AFTER = "win_show_after";
    private static final String K_WIN_DURING = "win_show_during";
    private static final int MAX_POINTS = 4;

    public static int getMaxPoints() {
        return MAX_POINTS;
    }

    private static SharedPreferences sp(Context context) {
        return context.getApplicationContext().getSharedPreferences(FILE, 0);
    }

    public static int getInterval(Context context) {
        return Math.max(1, sp(context).getInt(K_INTERVAL, 100));
    }

    public static void setInterval(Context context, int i) {
        sp(context).edit().putInt(K_INTERVAL, Math.max(1, i)).apply();
    }

    public static int getHold(Context context) {
        return Math.max(1, sp(context).getInt(K_HOLD, 40));
    }

    public static void setHold(Context context, int i) {
        sp(context).edit().putInt(K_HOLD, Math.max(1, i)).apply();
    }

    public static ArrayList<ClickPoint> getPoints(Context context) {
        ClickPoint legacyPoint;
        ArrayList<ClickPoint> arrayList = new ArrayList<>();
        String string = sp(context).getString(K_POINT_LIST, "");
        if (string != null && !string.isEmpty()) {
            try {
                JSONArray jSONArray = new JSONArray(string);
                int i = 0;
                while (i < jSONArray.length() && i < MAX_POINTS) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    i++;
                    arrayList.add(new ClickPoint((float) jSONObject.getDouble("nx"), (float) jSONObject.getDouble("ny"), jSONObject.optString("name", "坐标点" + i)));
                }
            } catch (Exception unused) {
                arrayList.clear();
            }
        }
        if (arrayList.isEmpty() && (legacyPoint = getLegacyPoint(context)) != null) {
            arrayList.add(legacyPoint);
        }
        return arrayList;
    }

    private static ClickPoint getLegacyPoint(Context context) {
        SharedPreferences sharedPreferencesSp = sp(context);
        if (sharedPreferencesSp.getBoolean(K_POINT_SET, false)) {
            return new ClickPoint(sharedPreferencesSp.getFloat(K_POINT_X, 0.5f), sharedPreferencesSp.getFloat(K_POINT_Y, 0.5f), sharedPreferencesSp.getString(K_POINT_NAME, "坐标点1"));
        }
        String string = sharedPreferencesSp.getString(K_POINTS, "");
        if (string != null && !string.isEmpty()) {
            String[] strArrSplit = string.split(";")[0].split(",");
            if (strArrSplit.length == 2) {
                try {
                    return new ClickPoint(Float.parseFloat(strArrSplit[0]), Float.parseFloat(strArrSplit[1]), "坐标点1");
                } catch (NumberFormatException unused) {
                }
            }
        }
        return null;
    }

    public static void savePoints(Context context, ArrayList<ClickPoint> arrayList, List<Integer> activeOrder) {
        JSONArray jSONArray = new JSONArray();
        int iMin = Math.min(arrayList.size(), MAX_POINTS);
        for (int i = 0; i < iMin; i++) {
            ClickPoint clickPoint = arrayList.get(i);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("nx", clickPoint.nx);
                jSONObject.put("ny", clickPoint.ny);
                jSONObject.put("name", clickPoint.name == null ? "坐标点" + (i + 1) : clickPoint.name);
                jSONArray.put(jSONObject);
            } catch (Exception unused) {
            }
        }
        StringBuilder sb = new StringBuilder();
        if (activeOrder != null) {
            ArrayList arrayList2 = new ArrayList();
            for (Integer num : activeOrder) {
                if (num != null && num.intValue() >= 0 && num.intValue() < iMin && !arrayList2.contains(num)) {
                    arrayList2.add(num);
                    if (sb.length() > 0) {
                        sb.append(',');
                    }
                    sb.append(num);
                }
            }
        }
        sp(context).edit().putString(K_POINT_LIST, jSONArray.toString()).putString(K_POINT_ACTIVE_LIST, sb.toString()).remove(K_POINT_ACTIVE).putBoolean(K_POINT_SET, false).remove(K_POINT_X).remove(K_POINT_Y).remove(K_POINTS).apply();
    }

    public static ArrayList<Integer> getActiveIndices(Context context) {
        ArrayList<Integer> arrayList = new ArrayList<>();
        String string = sp(context).getString(K_POINT_ACTIVE_LIST, null);
        if (string != null) {
            if (!string.isEmpty()) {
                for (String str : string.split(",")) {
                    try {
                        int i = Integer.parseInt(str.trim());
                        if (i >= 0 && !arrayList.contains(Integer.valueOf(i))) {
                            arrayList.add(Integer.valueOf(i));
                        }
                    } catch (NumberFormatException unused) {
                    }
                }
            }
            return arrayList;
        }
        int activeIndex = getActiveIndex(context);
        if (activeIndex >= 0) {
            arrayList.add(Integer.valueOf(activeIndex));
        }
        return arrayList;
    }

    public static int getActiveIndex(Context context) {
        return sp(context).getInt(K_POINT_ACTIVE, -1);
    }

    public static int getCurrent(Context context) {
        return clamp(sp(context).getInt(K_CURRENT, 0), 0, 80);
    }

    public static void setCurrent(Context context, int i) {
        sp(context).edit().putInt(K_CURRENT, clamp(i, 0, 80)).apply();
    }

    public static int getTarget(Context context) {
        return clamp(sp(context).getInt(K_TARGET, 10), 1, 80);
    }

    public static void setTarget(Context context, int i) {
        sp(context).edit().putInt(K_TARGET, clamp(i, 1, 80)).apply();
    }

    public static boolean getShowDuringRun(Context context) {
        return sp(context).getBoolean(K_WIN_DURING, true);
    }

    public static void setShowDuringRun(Context context, boolean z) {
        sp(context).edit().putBoolean(K_WIN_DURING, z).apply();
    }

    public static boolean getShowAfterRun(Context context) {
        return sp(context).getBoolean(K_WIN_AFTER, true);
    }

    public static boolean getSequential(Context context) {
        return sp(context).getBoolean(K_SEQUENTIAL, false);
    }

    public static int getCrossInterval(Context context) {
        return Math.max(1, sp(context).getInt(K_CROSS_INTERVAL, 100));
    }

    public static void setCrossInterval(Context context, int i) {
        sp(context).edit().putInt(K_CROSS_INTERVAL, Math.max(1, i)).apply();
    }

    public static int getSequentialGap(Context context) {
        return Math.max(1, sp(context).getInt(K_SEQ_GAP, 500));
    }

    public static void setSequentialGap(Context context, int i) {
        sp(context).edit().putInt(K_SEQ_GAP, Math.max(1, i)).apply();
    }

    public static void setSequential(Context context, boolean z) {
        sp(context).edit().putBoolean(K_SEQUENTIAL, z).apply();
    }

    public static void setShowAfterRun(Context context, boolean z) {
        sp(context).edit().putBoolean(K_WIN_AFTER, z).apply();
    }

    public static boolean getMainTapVibrate(Context context) {
        return sp(context).getBoolean(K_MAIN_TAP_VIB, true);
    }

    public static void setMainTapVibrate(Context context, boolean z) {
        sp(context).edit().putBoolean(K_MAIN_TAP_VIB, z).apply();
    }

    public static boolean getEndVibrate(Context context) {
        return sp(context).getBoolean(K_END_VIB, true);
    }

    public static void setEndVibrate(Context context, boolean z) {
        sp(context).edit().putBoolean(K_END_VIB, z).apply();
    }

    public static String getDeviceName(Context context) {
        SharedPreferences sharedPreferencesSp = sp(context);
        String string = sharedPreferencesSp.getString(K_DEVICE_NAME, "");
        if (string != null && !string.trim().isEmpty()) {
            return string;
        }
        String str = "冲榜小能手" + (((int) (Math.random() * 9000.0d)) + 1000);
        sharedPreferencesSp.edit().putString(K_DEVICE_NAME, str).apply();
        return str;
    }

    public static String getDeviceId(Context context) {
        SharedPreferences sharedPreferencesSp = sp(context);
        String string = sharedPreferencesSp.getString(K_DEVICE_ID, "");
        if (string != null && !string.trim().isEmpty()) {
            return string;
        }
        String str = "rc-" + UUID.randomUUID().toString().replace("-", "").substring(0, 12);
        sharedPreferencesSp.edit().putString(K_DEVICE_ID, str).apply();
        return str;
    }

    public static void setDeviceName(Context context, String str) {
        if (str == null || str.trim().isEmpty()) {
            return;
        }
        String strTrim = str.trim();
        if (strTrim.length() > 16) {
            strTrim = strTrim.substring(0, 16);
        }
        sp(context).edit().putString(K_DEVICE_NAME, strTrim).apply();
    }

    private static int clamp(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i3, i));
    }

    public static int[] getCountPanelRect(Context context) {
        SharedPreferences sharedPreferencesSp = sp(context);
        return new int[]{sharedPreferencesSp.getInt(K_PANEL_X, -1), sharedPreferencesSp.getInt(K_PANEL_Y, -1), sharedPreferencesSp.getInt(K_PANEL_W, -1), sharedPreferencesSp.getInt(K_PANEL_H, -1)};
    }

    public static void saveCountPanelRect(Context context, int i, int i2, int i3, int i4) {
        sp(context).edit().putInt(K_PANEL_X, i).putInt(K_PANEL_Y, i2).putInt(K_PANEL_W, i3).putInt(K_PANEL_H, i4).apply();
    }
}
