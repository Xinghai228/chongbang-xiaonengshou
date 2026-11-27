package com.rootclicker.app;

/* JADX INFO: loaded from: classes.dex */
public class ClickPoint {
    public String name;
    public float nx;
    public float ny;

    public ClickPoint(float f, float f2, String str) {
        this.nx = f;
        this.ny = f2;
        this.name = str;
    }

    public ClickPoint copy() {
        return new ClickPoint(this.nx, this.ny, this.name);
    }
}
