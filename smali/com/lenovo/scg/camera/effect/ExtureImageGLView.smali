.class public Lcom/lenovo/scg/camera/effect/ExtureImageGLView;
.super Lcom/lenovo/scg/camera/effect/ImageGLView;
.source "ExtureImageGLView.java"


# instance fields
.field private mEffect:Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

.field private mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

.field private mExtRect:Landroid/graphics/Rect;

.field protected mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

.field private mTransformMatix:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/ImageGLView;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    .line 26
    return-void
.end method

.method private doEffect()Z
    .locals 7

    .prologue
    .line 53
    const/4 v6, 0x0

    .line 54
    .local v6, "ret":Z
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    sget-object v1, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_None:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    if-eq v0, v1, :cond_1

    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mEffect:Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->createLe3dEffect(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;III)Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mEffect:Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mEffect:Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->doLiveEffect(Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;IIIZ)Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .line 60
    const/4 v6, 0x1

    .line 63
    :cond_1
    return v6
.end method


# virtual methods
.method protected render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 13
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/4 v12, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v5, 0xfa

    .line 68
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mExtRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mTransformMatix:[F

    if-eqz v0, :cond_0

    .line 79
    const-string/jumbo v0, "tyl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mClipRect.left = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "right = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "top = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bottom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v10

    .line 81
    .local v10, "orientation":I
    rem-int/lit16 v0, v10, 0xb4

    if-eqz v0, :cond_6

    .line 82
    move v11, v10

    .line 83
    .local v11, "rotation":I
    const/4 v9, 0x0

    .line 84
    .local v9, "flags":I
    if-eqz v11, :cond_2

    or-int/lit8 v9, v9, 0x2

    .line 86
    :cond_2
    if-eqz v9, :cond_3

    .line 87
    invoke-interface {p1, v9}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 88
    if-eqz v11, :cond_3

    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mExtRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    .local v7, "centerX":I
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mExtRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    .line 90
    .local v8, "centerY":I
    int-to-float v0, v7

    int-to-float v1, v8

    invoke-interface {p1, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 91
    int-to-float v0, v11

    invoke-interface {p1, v0, v12, v12, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 92
    neg-int v0, v7

    int-to-float v0, v0

    neg-int v1, v8

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 96
    .end local v7    # "centerX":I
    .end local v8    # "centerY":I
    :cond_3
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mExtRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mExtRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 98
    invoke-interface {p1, v3, v6, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mExtRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mExtRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 100
    invoke-direct {p0}, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->doEffect()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 101
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->setEnableClip(Z)V

    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->setClipRect(Landroid/graphics/Rect;)V

    .line 105
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mTransformMatix:[F

    const/16 v3, 0x4e2

    const/16 v4, 0x4e0

    move-object v0, p1

    move v6, v5

    invoke-interface/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;[FIIII)V

    .line 121
    :goto_1
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 122
    if-eqz v9, :cond_0

    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    goto/16 :goto_0

    .line 107
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mTransformMatix:[F

    const/16 v3, 0x4e2

    const/16 v4, 0x4e0

    move-object v0, p1

    move v6, v5

    invoke-interface/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;[FIIII)V

    goto :goto_1

    .line 125
    .end local v9    # "flags":I
    .end local v11    # "rotation":I
    :cond_6
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 126
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mExtRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mExtRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 127
    invoke-interface {p1, v3, v6, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mExtRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mExtRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 130
    invoke-direct {p0}, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->doEffect()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 132
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->setEnableClip(Z)V

    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->setClipRect(Landroid/graphics/Rect;)V

    .line 135
    :cond_7
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mTransformMatix:[F

    const/4 v3, 0x0

    const/16 v4, 0x686

    move-object v0, p1

    move v6, v5

    invoke-interface/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;[FIIII)V

    .line 147
    :goto_2
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    goto/16 :goto_0

    .line 137
    :cond_8
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mTransformMatix:[F

    const/4 v3, 0x0

    const/16 v4, 0x686

    move-object v0, p1

    move v6, v5

    invoke-interface/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;[FIIII)V

    goto :goto_2
.end method

.method public setExtRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mExtRect:Landroid/graphics/Rect;

    .line 50
    return-void
.end method

.method public setTransformMatrix([F)V
    .locals 0
    .param p1, "matrix"    # [F

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->mTransformMatix:[F

    .line 38
    return-void
.end method
