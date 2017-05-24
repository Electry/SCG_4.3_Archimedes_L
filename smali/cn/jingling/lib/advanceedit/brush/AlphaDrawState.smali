.class public Lcn/jingling/lib/advanceedit/brush/AlphaDrawState;
.super Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;
.source "AlphaDrawState.java"


# static fields
.field private static final DEFAULT_ALPHA:I = 0x99


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "pathBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;-><init>(Landroid/graphics/Bitmap;)V

    .line 20
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/AlphaDrawState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 21
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/AlphaDrawState;->mWholePathPaint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    const/16 v1, 0x99

    invoke-virtual {v0, v1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setAlpha(I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected doDraw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/AlphaDrawState;->mWholePath:Landroid/graphics/Path;

    if-ne p2, v0, :cond_0

    .line 27
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/AlphaDrawState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 28
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/AlphaDrawState;->mWholePathPaint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 31
    :cond_0
    return-void
.end method

.method public setPenColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->setPenColor(I)V

    .line 42
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/AlphaDrawState;->mWholePathPaint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    invoke-virtual {v0, p1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setColor(I)V

    .line 43
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/AlphaDrawState;->mWholePathPaint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    const/16 v1, 0x99

    invoke-virtual {v0, v1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setAlpha(I)V

    .line 44
    return-void
.end method

.method public setPenWidth(I)V
    .locals 2
    .param p1, "pWidth"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/AlphaDrawState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setStrokeWidth(F)V

    .line 36
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/AlphaDrawState;->mWholePathPaint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setStrokeWidth(F)V

    .line 37
    return-void
.end method
