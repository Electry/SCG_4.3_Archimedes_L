.class public Lcom/lenovo/scg/common/utils/bitmap/ScreenShotUtils;
.super Ljava/lang/Object;
.source "ScreenShotUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertViewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 40
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public static getScreenShot(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 28
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 29
    invoke-virtual {v1}, Landroid/view/View;->buildDrawingCache()V

    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 31
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method
