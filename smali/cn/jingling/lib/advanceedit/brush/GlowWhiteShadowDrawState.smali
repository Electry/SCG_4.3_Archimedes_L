.class public Lcn/jingling/lib/advanceedit/brush/GlowWhiteShadowDrawState;
.super Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;
.source "GlowWhiteShadowDrawState.java"


# static fields
.field private static final CENTER_PERCENT:F = 0.6f

.field private static final DEFAULT_SHADOW_RADIUS:I = 0xa


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "pathBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 14
    invoke-direct {p0, p1}, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;-><init>(Landroid/graphics/Bitmap;)V

    .line 16
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/GlowWhiteShadowDrawState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    invoke-virtual {v0, v3}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setColor(I)V

    .line 17
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/GlowWhiteShadowDrawState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v2, v2, v3}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setShadowLayer(FFFI)V

    .line 18
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/GlowWhiteShadowDrawState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    iget v1, p0, Lcn/jingling/lib/advanceedit/brush/GlowWhiteShadowDrawState;->penWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setStrokeWidth(F)V

    .line 19
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/GlowWhiteShadowDrawState;->mWholePathPaint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    iget v1, p0, Lcn/jingling/lib/advanceedit/brush/GlowWhiteShadowDrawState;->penWidth:I

    int-to-float v1, v1

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setStrokeWidth(F)V

    .line 20
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/GlowWhiteShadowDrawState;->mWholePathPaint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    iget v1, p0, Lcn/jingling/lib/advanceedit/brush/GlowWhiteShadowDrawState;->penColor:I

    invoke-virtual {v0, v1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setColor(I)V

    .line 21
    return-void
.end method


# virtual methods
.method protected getShaderWidth()I
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0xa

    return v0
.end method

.method public setPenColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/GlowWhiteShadowDrawState;->mWholePathPaint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    invoke-virtual {v0, p1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setColor(I)V

    .line 33
    return-void
.end method

.method public setPenWidth(I)V
    .locals 3
    .param p1, "pWidth"    # I

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->setPenWidth(I)V

    .line 26
    const v1, 0x3f19999a    # 0.6f

    int-to-float v2, p1

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 27
    .local v0, "width":I
    iget-object v1, p0, Lcn/jingling/lib/advanceedit/brush/GlowWhiteShadowDrawState;->mWholePathPaint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setStrokeWidth(F)V

    .line 28
    return-void
.end method
