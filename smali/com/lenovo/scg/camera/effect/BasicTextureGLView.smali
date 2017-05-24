.class public Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
.super Lcom/lenovo/scg/gallery3d/ui/GLView;
.source "BasicTextureGLView.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field protected mAlpha:F

.field protected mCenterX:F

.field protected mCenterY:F

.field protected mContext:Landroid/content/Context;

.field private mEffect:Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

.field private mEffectManager:Lcom/lenovo/scg/camera/effect/LiveEffectManager;

.field private mEffectViewFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

.field protected mEnableSetAlpha:Z

.field private mEventListener:Lcom/lenovo/scg/camera/effect/EventListener;

.field protected mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

.field protected mHeight:F

.field private mID:I

.field protected mLeftDownX:I

.field protected mLeftDownY:I

.field protected mMaskBitmap:Landroid/graphics/Bitmap;

.field private mMaskFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

.field private mMaskFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

.field private mMaskFilter:Lcom/lenovo/scg/le3deffect/MaskFilterTexture;

.field protected mScreenHeight:F

.field protected mScreenWidth:F

.field protected mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

.field private mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

.field protected mViewRect:Landroid/graphics/Rect;

.field protected mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/GLView;-><init>()V

    .line 59
    const-string v0, "BasicTextureGLView"

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->TAG:Ljava/lang/String;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mViewRect:Landroid/graphics/Rect;

    .line 80
    sget-object v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_None:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .line 81
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mContext:Landroid/content/Context;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mEnableSetAlpha:Z

    .line 83
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mAlpha:F

    .line 84
    iput-object v1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mEffect:Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    .line 85
    iput-object v1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 86
    return-void
.end method


# virtual methods
.method public clickInRect(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 402
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mViewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mViewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mViewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mViewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 403
    const/4 v0, 0x1

    .line 405
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clickInRect(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public destoryEffect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 246
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mEffectManager:Lcom/lenovo/scg/camera/effect/LiveEffectManager;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mEffectManager:Lcom/lenovo/scg/camera/effect/LiveEffectManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mEffect:Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->destoryEffect(Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->recycle()V

    .line 252
    iput-object v2, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->Finish()V

    .line 257
    iput-object v2, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    if-eqz v0, :cond_3

    .line 261
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;->recycle()V

    .line 262
    iput-object v2, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskFilter:Lcom/lenovo/scg/le3deffect/MaskFilterTexture;

    if-eqz v0, :cond_4

    .line 266
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskFilter:Lcom/lenovo/scg/le3deffect/MaskFilterTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/MaskFilterTexture;->Finish()V

    .line 267
    iput-object v2, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskFilter:Lcom/lenovo/scg/le3deffect/MaskFilterTexture;

    .line 270
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 271
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 272
    iput-object v2, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 275
    :cond_5
    return-void
.end method

.method protected doEffect()Z
    .locals 7

    .prologue
    .line 221
    const/4 v6, 0x0

    .line 223
    .local v6, "ret":Z
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mEffect:Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mEffectManager:Lcom/lenovo/scg/camera/effect/LiveEffectManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    iget v2, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mWidth:F

    float-to-int v2, v2

    iget v3, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mHeight:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mEffectViewFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->createLiveEffect(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;IILcom/lenovo/scg/le3deffect/Le3DFBO;)Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mEffect:Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mEffectManager:Lcom/lenovo/scg/camera/effect/LiveEffectManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mEffect:Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->doLiveEffect(Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;IIIZ)Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .line 227
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->setSize(II)V

    .line 228
    const/4 v6, 0x1

    .line 230
    return v6
.end method

.method protected doMaskBlend()V
    .locals 5

    .prologue
    .line 290
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 291
    const v0, 0x7f020120

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    if-nez v0, :cond_1

    .line 295
    new-instance v0, Lcom/lenovo/scg/le3deffect/Le3DFBO;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mWidth:F

    float-to-int v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mHeight:F

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/le3deffect/Le3DFBO;-><init>(II)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 296
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->Init()Z

    .line 297
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;-><init>(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    .line 298
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;->setEnableBlending(Z)V

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskFilter:Lcom/lenovo/scg/le3deffect/MaskFilterTexture;

    if-nez v0, :cond_2

    .line 302
    new-instance v0, Lcom/lenovo/scg/le3deffect/MaskFilterTexture;

    invoke-direct {v0}, Lcom/lenovo/scg/le3deffect/MaskFilterTexture;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskFilter:Lcom/lenovo/scg/le3deffect/MaskFilterTexture;

    .line 303
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskFilter:Lcom/lenovo/scg/le3deffect/MaskFilterTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/MaskFilterTexture;->Init()Z

    .line 304
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskFilter:Lcom/lenovo/scg/le3deffect/MaskFilterTexture;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/le3deffect/MaskFilterTexture;->setSrc(Landroid/graphics/Bitmap;)V

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskFilter:Lcom/lenovo/scg/le3deffect/MaskFilterTexture;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/le3deffect/MaskFilterTexture;->setFboOut(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    .line 307
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskFilter:Lcom/lenovo/scg/le3deffect/MaskFilterTexture;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/le3deffect/MaskFilterTexture;->setDst(IIIZ)V

    .line 308
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskFilter:Lcom/lenovo/scg/le3deffect/MaskFilterTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/MaskFilterTexture;->DoEffect()I

    .line 309
    return-void
.end method

.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/4 v2, 0x1

    .line 336
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 362
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->doEffect()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 342
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->IsEnableClip()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->setEnableClip(Z)V

    .line 344
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->setClipRect(Landroid/graphics/Rect;)V

    .line 347
    :cond_1
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 348
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->doMaskBlend()V

    .line 349
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->IsEnableClip()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;->setEnableClip(Z)V

    .line 351
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;->setClipRect(Landroid/graphics/Rect;)V

    .line 353
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mAlpha:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mEnableSetAlpha:Z

    if-eqz v0, :cond_3

    .line 354
    const-string/jumbo v0, "tyl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set alpha!! mAlpha ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mEnableSetAlpha = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mEnableSetAlpha:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mAlpha:F

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    .line 357
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mMaskFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    iget v2, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mLeftDownX:I

    iget v3, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mLeftDownY:I

    iget v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mWidth:F

    float-to-int v4, v0

    iget v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mHeight:F

    float-to-int v5, v0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIII)V

    goto/16 :goto_0

    .line 359
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    iget v2, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mLeftDownX:I

    iget v3, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mLeftDownY:I

    iget v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mWidth:F

    float-to-int v4, v0

    iget v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mHeight:F

    float-to-int v5, v0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIII)V

    goto/16 :goto_0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mAlpha:F

    return v0
.end method

.method protected getBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 281
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 282
    .restart local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 283
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 284
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 285
    return-object v0
.end method

.method public getCenterX()F
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mCenterX:F

    return v0
.end method

.method public getCenterY()F
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mCenterY:F

    return v0
.end method

.method public getEffectType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    return-object v0
.end method

.method public getEventListener()Lcom/lenovo/scg/camera/effect/EventListener;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mEventListener:Lcom/lenovo/scg/camera/effect/EventListener;

    return-object v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mID:I

    return v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mViewRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTexture()Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .line 153
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    goto :goto_0
.end method

.method public getViewHeight()F
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mHeight:F

    return v0
.end method

.method public getViewWidth()F
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mWidth:F

    return v0
.end method

.method public onMoveInScreen(FF)V
    .locals 2
    .param p1, "moveX"    # F
    .param p2, "moveY"    # F

    .prologue
    .line 410
    iget v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mCenterX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mCenterX:F

    .line 411
    iget v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mCenterY:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mCenterY:F

    .line 412
    iget v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mCenterX:F

    iget v1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mCenterY:F

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    .line 414
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 419
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 430
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 421
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 422
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mViewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    const-string/jumbo v0, "tyl"

    const-string/jumbo v1, "view press down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 426
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method public resetAlpha()V
    .locals 2

    .prologue
    .line 322
    const-string/jumbo v0, "tyl"

    const-string v1, "call reset alpha!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mAlpha:F

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mEnableSetAlpha:Z

    .line 326
    return-void
.end method

.method public setAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 312
    const-string/jumbo v0, "tyl"

    const-string v1, "call set alpha!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mEnableSetAlpha:Z

    .line 314
    iput p1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mAlpha:F

    .line 315
    return-void
.end method

.method public setCenterPointInScreen(FF)V
    .locals 3
    .param p1, "centerx"    # F
    .param p2, "centery"    # F

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 123
    iput p1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mCenterX:F

    .line 124
    iput p2, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mCenterY:F

    .line 125
    iget v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mWidth:F

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mLeftDownX:I

    .line 126
    iget v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mHeight:F

    div-float/2addr v0, v1

    sub-float v0, p2, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mLeftDownY:I

    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mViewRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mLeftDownX:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mViewRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mLeftDownY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mHeight:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mViewRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mLeftDownX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mWidth:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 130
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mViewRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mLeftDownY:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 131
    return-void
.end method

.method public setCenterPointInScreenForward(FF)V
    .locals 3
    .param p1, "centerx"    # F
    .param p2, "centery"    # F

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 135
    iput p1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mCenterX:F

    .line 136
    iput p2, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mCenterY:F

    .line 137
    iget v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mWidth:F

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mLeftDownX:I

    .line 138
    iget v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mHeight:F

    div-float/2addr v0, v1

    add-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mLeftDownY:I

    .line 139
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mViewRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mLeftDownX:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 140
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mViewRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mLeftDownY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mHeight:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 141
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mViewRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mLeftDownX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mWidth:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mViewRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mLeftDownY:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 143
    return-void
.end method

.method public setEffectManager(Lcom/lenovo/scg/camera/effect/LiveEffectManager;)V
    .locals 0
    .param p1, "effectManager"    # Lcom/lenovo/scg/camera/effect/LiveEffectManager;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mEffectManager:Lcom/lenovo/scg/camera/effect/LiveEffectManager;

    .line 235
    return-void
.end method

.method public setEffectType(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .line 366
    return-void
.end method

.method public setEventListener(Lcom/lenovo/scg/camera/effect/EventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/effect/EventListener;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mEventListener:Lcom/lenovo/scg/camera/effect/EventListener;

    .line 382
    return-void
.end method

.method public setFBO(Lcom/lenovo/scg/le3deffect/Le3DFBO;)Z
    .locals 1
    .param p1, "fbo"    # Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .prologue
    .line 215
    const/4 v0, 0x1

    .line 216
    .local v0, "ret":Z
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mEffectViewFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 217
    return v0
.end method

.method public setID(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mID:I

    .line 98
    return-void
.end method

.method public setScreenSize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 189
    iput p1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mScreenWidth:F

    .line 190
    iput p2, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mScreenHeight:F

    .line 191
    return-void
.end method

.method public setTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)V
    .locals 0
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .line 211
    return-void
.end method

.method public setViewSize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 167
    iput p1, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mWidth:F

    .line 168
    iput p2, p0, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->mHeight:F

    .line 169
    return-void
.end method
