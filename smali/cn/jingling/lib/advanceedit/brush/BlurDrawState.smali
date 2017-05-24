.class public Lcn/jingling/lib/advanceedit/brush/BlurDrawState;
.super Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;
.source "BlurDrawState.java"


# static fields
.field private static final DEFAULT_BLUR_RADIUS:I = 0x6


# instance fields
.field mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "pathBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;-><init>(Landroid/graphics/Bitmap;)V

    .line 16
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x40c00000    # 6.0f

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcn/jingling/lib/advanceedit/brush/BlurDrawState;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 23
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/BlurDrawState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    iget-object v1, p0, Lcn/jingling/lib/advanceedit/brush/BlurDrawState;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 24
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/BlurDrawState;->mWholePathPaint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    iget-object v1, p0, Lcn/jingling/lib/advanceedit/brush/BlurDrawState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    invoke-virtual {v1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setColor(I)V

    .line 25
    return-void
.end method


# virtual methods
.method protected doDraw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 41
    iget-object v1, p0, Lcn/jingling/lib/advanceedit/brush/BlurDrawState;->mWholePath:Landroid/graphics/Path;

    if-ne p2, v1, :cond_0

    .line 42
    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    .line 43
    .local v0, "width":F
    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    add-float/2addr v1, v2

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 45
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 46
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 47
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    iget-object v1, p0, Lcn/jingling/lib/advanceedit/brush/BlurDrawState;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 49
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 52
    .end local v0    # "width":F
    :cond_0
    return-void
.end method

.method protected getShaderWidth()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x6

    return v0
.end method

.method public setPenColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->setPenColor(I)V

    .line 36
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/BlurDrawState;->mWholePathPaint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    invoke-virtual {v0, p1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setColor(I)V

    .line 37
    return-void
.end method

.method public setPenWidth(I)V
    .locals 2
    .param p1, "pWidth"    # I

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->setPenWidth(I)V

    .line 30
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/BlurDrawState;->mWholePathPaint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setStrokeWidth(F)V

    .line 31
    return-void
.end method
