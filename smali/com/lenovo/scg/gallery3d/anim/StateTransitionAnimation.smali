.class public Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;
.super Lcom/lenovo/scg/gallery3d/anim/Animation;
.source "StateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$1;,
        Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;,
        Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;
    }
.end annotation


# instance fields
.field private mCurrentBackgroundAlpha:F

.field private mCurrentBackgroundScale:F

.field private mCurrentContentAlpha:F

.field private mCurrentContentScale:F

.field private mCurrentOverlayAlpha:F

.field private mCurrentOverlayScale:F

.field private mOldScreenTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

.field private final mTransitionSpec:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;)V
    .locals 1
    .param p1, "spec"    # Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;
    .param p2, "oldScreen"    # Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/anim/Animation;-><init>()V

    .line 132
    if-eqz p1, :cond_0

    .end local p1    # "spec":Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;
    :goto_0
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->duration:I

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->setDuration(I)V

    .line 134
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 135
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mOldScreenTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .line 136
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->disableDrawPlaceholder()V

    .line 137
    return-void

    .line 132
    .restart local p1    # "spec":Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;
    :cond_0
    sget-object p1, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;)V
    .locals 1
    .param p1, "t"    # Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;
    .param p2, "oldScreen"    # Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .prologue
    .line 128
    # invokes: Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->specForTransition(Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;)Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->access$000(Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Transition;)Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;-><init>(Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;)V

    .line 129
    return-void
.end method

.method private applyOldTexture(Lcom/lenovo/scg/gallery3d/ui/GLView;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;FFZ)V
    .locals 5
    .param p1, "view"    # Lcom/lenovo/scg/gallery3d/ui/GLView;
    .param p2, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p3, "alpha"    # F
    .param p4, "scale"    # F
    .param p5, "clear"    # Z

    .prologue
    .line 163
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mOldScreenTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    if-nez v2, :cond_0

    .line 173
    :goto_0
    return-void

    .line 164
    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->getBackgroundColor()[F

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->clearBuffer([F)V

    .line 165
    :cond_1
    invoke-interface {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save()V

    .line 166
    invoke-interface {p2, p3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    .line 167
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->getWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 168
    .local v0, "xOffset":I
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->getHeight()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 169
    .local v1, "yOffset":I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-interface {p2, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 170
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p2, p4, p4, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    .line 171
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mOldScreenTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    neg-int v3, v0

    neg-int v4, v1

    invoke-virtual {v2, p2, v3, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 172
    invoke-interface {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    goto :goto_0
.end method


# virtual methods
.method public applyBackground(Lcom/lenovo/scg/gallery3d/ui/GLView;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 6
    .param p1, "view"    # Lcom/lenovo/scg/gallery3d/ui/GLView;
    .param p2, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 176
    iget v0, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mCurrentBackgroundAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 177
    iget v3, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mCurrentBackgroundAlpha:F

    iget v4, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mCurrentBackgroundScale:F

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->applyOldTexture(Lcom/lenovo/scg/gallery3d/ui/GLView;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;FFZ)V

    .line 179
    :cond_0
    return-void
.end method

.method public applyContentTransform(Lcom/lenovo/scg/gallery3d/ui/GLView;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 5
    .param p1, "view"    # Lcom/lenovo/scg/gallery3d/ui/GLView;
    .param p2, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 182
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->getWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 183
    .local v0, "xOffset":I
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->getHeight()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 184
    .local v1, "yOffset":I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-interface {p2, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 185
    iget v2, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mCurrentContentScale:F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mCurrentContentScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {p2, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    .line 186
    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-interface {p2, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 187
    iget v2, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mCurrentContentAlpha:F

    invoke-interface {p2, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    .line 188
    return-void
.end method

.method public applyOverlay(Lcom/lenovo/scg/gallery3d/ui/GLView;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 6
    .param p1, "view"    # Lcom/lenovo/scg/gallery3d/ui/GLView;
    .param p2, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 191
    iget v0, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mCurrentOverlayAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 192
    iget v3, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mCurrentOverlayAlpha:F

    iget v4, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mCurrentOverlayScale:F

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->applyOldTexture(Lcom/lenovo/scg/gallery3d/ui/GLView;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;FFZ)V

    .line 194
    :cond_0
    return-void
.end method

.method public calculate(J)Z
    .locals 3
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 141
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/anim/Animation;->calculate(J)Z

    move-result v0

    .line 142
    .local v0, "retval":Z
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mOldScreenTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mOldScreenTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->recycle()V

    .line 145
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mOldScreenTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .line 147
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->enableDrawPlaceholder()V

    .line 149
    :cond_1
    return v0
.end method

.method protected onCalculate(F)V
    .locals 3
    .param p1, "progress"    # F

    .prologue
    .line 154
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->contentScaleFrom:F

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->contentScaleTo:F

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->contentScaleFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mCurrentContentScale:F

    .line 155
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->contentAlphaFrom:F

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->contentAlphaTo:F

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->contentAlphaFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mCurrentContentAlpha:F

    .line 156
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundAlphaFrom:F

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundAlphaTo:F

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundAlphaFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mCurrentBackgroundAlpha:F

    .line 157
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundScaleFrom:F

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundScaleTo:F

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundScaleFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mCurrentBackgroundScale:F

    .line 158
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->overlayScaleFrom:F

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->overlayScaleTo:F

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->overlayScaleFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mCurrentOverlayScale:F

    .line 159
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->overlayAlphaFrom:F

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->overlayAlphaTo:F

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation$Spec;->overlayAlphaFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/anim/StateTransitionAnimation;->mCurrentOverlayAlpha:F

    .line 160
    return-void
.end method
