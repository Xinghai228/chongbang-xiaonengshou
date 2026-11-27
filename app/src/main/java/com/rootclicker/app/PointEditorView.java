package com.rootclicker.app;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class PointEditorView extends View {
    private final Callback callback;
    private final Paint cross;
    private final float density;
    private final RectF doneRect;
    private final ClickPoint draft;
    private boolean dragging;
    private final Paint fill;
    private final RectF hintRect;
    private final String label;
    private final Paint panel;
    private boolean pendingDone;
    private final Paint stroke;
    private final Paint text;
    private int viewHeight;
    private int viewWidth;

    public interface Callback {
        void onComplete(ClickPoint clickPoint);
    }

    public PointEditorView(Context context, ClickPoint clickPoint, String str, Callback callback) {
        super(context);
        Paint paint = new Paint(1);
        this.fill = paint;
        Paint paint2 = new Paint(1);
        this.stroke = paint2;
        Paint paint3 = new Paint(1);
        this.text = paint3;
        Paint paint4 = new Paint(1);
        this.panel = paint4;
        Paint paint5 = new Paint(1);
        this.cross = paint5;
        this.doneRect = new RectF();
        this.hintRect = new RectF();
        this.viewWidth = 1;
        this.viewHeight = 1;
        this.density = context.getResources().getDisplayMetrics().density;
        this.draft = clickPoint != null ? clickPoint.copy() : new ClickPoint(0.5f, 0.5f, "坐标点1");
        this.label = str;
        this.callback = callback;
        paint.setColor(Color.argb(225, 86, 181, 90));
        paint2.setColor(-1);
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeWidth(dp(2.0f));
        paint3.setColor(-1);
        paint3.setTextAlign(Paint.Align.CENTER);
        paint3.setTypeface(Typeface.DEFAULT_BOLD);
        paint4.setColor(Color.rgb(250, 250, 252));
        paint5.setColor(Color.argb(90, 60, 61, 70));
        paint5.setStrokeWidth(dp(1.0f));
        setWillNotDraw(false);
    }

    private float dp(float f) {
        return this.density * f;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.viewWidth = Math.max(1, i);
        this.viewHeight = Math.max(1, i2);
        float fDp = dp(16.0f);
        float f = i - fDp;
        this.doneRect.set(f - dp(88.0f), dp(36.0f), f, dp(80.0f));
        this.hintRect.set(fDp, dp(92.0f), f, dp(132.0f));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        super.onDraw(canvas);
        float f2 = this.draft.nx * this.viewWidth;
        float f3 = this.draft.ny * this.viewHeight;
        canvas.drawLine(0.0f, f3, this.viewWidth, f3, this.cross);
        canvas.drawLine(f2, 0.0f, f2, this.viewHeight, this.cross);
        canvas.drawCircle(f2, f3, dp(17.0f), this.fill);
        canvas.drawCircle(f2, f3, dp(17.0f), this.stroke);
        this.text.setColor(-1);
        Paint paint = this.text;
        if (this.label.length() > 5) {
            f = 7.0f;
        } else {
            f = this.label.length() > 4 ? 8.0f : 10.0f;
        }
        paint.setTextSize(dp(f));
        drawCenteredText(canvas, this.label, f2, f3);
        canvas.drawRoundRect(this.doneRect, dp(22.0f), dp(22.0f), this.fill);
        this.text.setTextSize(dp(16.0f));
        drawCenteredText(canvas, "完成", this.doneRect.centerX(), this.doneRect.centerY());
        canvas.drawRoundRect(this.hintRect, dp(20.0f), dp(20.0f), this.panel);
        this.text.setColor(Color.rgb(70, 71, 82));
        this.text.setTextSize(dp(14.0f));
        this.text.setTypeface(Typeface.DEFAULT);
        drawCenteredText(canvas, "拖动圆球到点击位置，然后点完成", this.hintRect.centerX(), this.hintRect.centerY());
        this.text.setTypeface(Typeface.DEFAULT_BOLD);
        this.text.setColor(-1);
    }

    private void drawCenteredText(Canvas canvas, String str, float f, float f2) {
        canvas.drawText(str, f, f2 - ((this.text.ascent() + this.text.descent()) / 2.0f), this.text);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                if (this.pendingDone && this.doneRect.contains(x, y)) {
                    this.callback.onComplete(this.draft.copy());
                }
                this.pendingDone = false;
                this.dragging = false;
                invalidate();
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                    this.pendingDone = false;
                    this.dragging = false;
                }
            } else if (this.dragging) {
                movePoint(x, y);
            }
        } else if (this.doneRect.contains(x, y)) {
            this.pendingDone = true;
        } else {
            this.dragging = true;
            movePoint(x, y);
        }
        return true;
    }

    private void movePoint(float f, float f2) {
        this.draft.nx = Math.max(0.0f, Math.min(1.0f, f / this.viewWidth));
        this.draft.ny = Math.max(0.0f, Math.min(1.0f, f2 / this.viewHeight));
        invalidate();
    }
}
