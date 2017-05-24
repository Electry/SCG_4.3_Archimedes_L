.class public Lcom/lenovo/scg/camera/effect/EffectHideAnimation;
.super Lcom/lenovo/scg/gallery3d/anim/CanvasAnimation;
.source "EffectHideAnimation.java"


# instance fields
.field private mMoveDistance:F

.field private mProgress:F


# direct methods
.method public constructor <init>(FI)V
    .locals 3
    .param p1, "moveDistance"    # F
    .param p2, "duration"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/anim/CanvasAnimation;-><init>()V

    .line 18
    iput p1, p0, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->mMoveDistance:F

    .line 19
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 20
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->setDuration(I)V

    .line 21
    const-string/jumbo v0, "tyl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMoveDistance= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->mMoveDistance:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method public apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 33
    const-string/jumbo v0, "wwf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apply mProgress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->mProgress:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " canvas.translate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/high16 v2, -0x3d380000    # -100.0f

    iget v3, p0, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->mProgress:F

    sub-float v3, v5, v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget v0, p0, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->mMoveDistance:F

    neg-float v0, v0

    iget v1, p0, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->mProgress:F

    sub-float v1, v5, v1

    mul-float/2addr v0, v1

    invoke-interface {p1, v4, v0, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    .line 38
    return-void
.end method

.method public getCanvasSaveFlags()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x2

    return v0
.end method

.method protected onCalculate(F)V
    .locals 3
    .param p1, "progress"    # F

    .prologue
    .line 43
    const-string/jumbo v0, "wwf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCalculate progress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iput p1, p0, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->mProgress:F

    .line 45
    return-void
.end method
