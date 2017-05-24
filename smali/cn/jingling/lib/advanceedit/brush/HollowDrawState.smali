.class public Lcn/jingling/lib/advanceedit/brush/HollowDrawState;
.super Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;
.source "HollowDrawState.java"


# static fields
.field private static final DEFAULT_SHADOW_RADIUS:I = 0xf

.field private static final HOLLOW_PERCENT:F = 0.5f


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "pathBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 20
    invoke-direct {p0, p1}, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;-><init>(Landroid/graphics/Bitmap;)V

    .line 21
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/HollowDrawState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    iget v1, p0, Lcn/jingling/lib/advanceedit/brush/HollowDrawState;->penColor:I

    invoke-virtual {v0, v1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setColor(I)V

    .line 22
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/HollowDrawState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    const/high16 v1, 0x41700000    # 15.0f

    iget v2, p0, Lcn/jingling/lib/advanceedit/brush/HollowDrawState;->penColor:I

    invoke-virtual {v0, v1, v3, v3, v2}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setShadowLayer(FFFI)V

    .line 23
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/HollowDrawState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    iget v1, p0, Lcn/jingling/lib/advanceedit/brush/HollowDrawState;->penWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setStrokeWidth(F)V

    .line 24
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/HollowDrawState;->mWholePathPaint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    iget v1, p0, Lcn/jingling/lib/advanceedit/brush/HollowDrawState;->penWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setStrokeWidth(F)V

    .line 25
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/HollowDrawState;->mWholePathPaint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 26
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 25
    invoke-virtual {v0, v1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 27
    return-void
.end method


# virtual methods
.method public getPenWidth()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcn/jingling/lib/advanceedit/brush/HollowDrawState;->penWidth:I

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getShaderWidth()I
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0xf

    return v0
.end method

.method public setPenColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x0

    .line 39
    iput p1, p0, Lcn/jingling/lib/advanceedit/brush/HollowDrawState;->penColor:I

    .line 40
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/HollowDrawState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    invoke-virtual {v0, p1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setColor(I)V

    .line 41
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/HollowDrawState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2, v2, p1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setShadowLayer(FFFI)V

    .line 42
    return-void
.end method

.method public setPenWidth(I)V
    .locals 3
    .param p1, "pWidth"    # I

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->setPenWidth(I)V

    .line 32
    const/high16 v1, 0x3f000000    # 0.5f

    int-to-float v2, p1

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 33
    .local v0, "width":I
    iget-object v1, p0, Lcn/jingling/lib/advanceedit/brush/HollowDrawState;->mWholePathPaint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setStrokeWidth(F)V

    .line 34
    return-void
.end method
