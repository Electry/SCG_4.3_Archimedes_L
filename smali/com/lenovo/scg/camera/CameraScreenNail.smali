.class public Lcom/lenovo/scg/camera/CameraScreenNail;
.super Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;
.source "CameraScreenNail.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/CameraScreenNail$DrawClient;,
        Lcom/lenovo/scg/camera/CameraScreenNail$OnFrameDrawnListener;,
        Lcom/lenovo/scg/camera/CameraScreenNail$Listener;
    }
.end annotation


# static fields
.field private static final ANIM_CAPTURE_RUNNING:I = 0x2

.field private static final ANIM_CAPTURE_START:I = 0x1

.field private static final ANIM_NONE:I = 0x0

.field private static final ANIM_SWITCH_COPY_TEXTURE:I = 0x3

.field private static final ANIM_SWITCH_DARK_PREVIEW:I = 0x4

.field private static final ANIM_SWITCH_RUNNING:I = 0x7

.field private static final ANIM_SWITCH_START:I = 0x6

.field private static final ANIM_SWITCH_WAITING_FIRST_FRAME:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CAM_ScreenNail"


# instance fields
.field private mAcquireTexture:Z

.field private mAlpha:F

.field private mAnimState:I

.field private mAnimTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

.field private mCaptureAnimManager:Lcom/lenovo/scg/camera/AnimManager;

.field private final mDefaultDraw:Lcom/lenovo/scg/camera/CameraScreenNail$DrawClient;

.field private mDraw:Lcom/lenovo/scg/camera/CameraScreenNail$DrawClient;

.field private mEnableAspectRatioClamping:Z

.field private mFirstFrameArrived:Z

.field private mFullScreen:Z

.field private mListener:Lcom/lenovo/scg/camera/CameraScreenNail$Listener;

.field private mLock:Ljava/lang/Object;

.field private mOnFrameDrawnListener:Ljava/lang/Runnable;

.field private mOneTimeFrameDrawnListener:Lcom/lenovo/scg/camera/CameraScreenNail$OnFrameDrawnListener;

.field private mRenderHeight:I

.field private mRenderWidth:I

.field private mScaleX:F

.field private mScaleY:F

.field private mSwitchAnimManager:Lcom/lenovo/scg/camera/SwitchAnimManager;

.field private final mTextureTransformMatrix:[F

.field private mUncroppedRenderHeight:I

.field private mUncroppedRenderWidth:I

.field private mVisible:Z


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/CameraScreenNail$Listener;Landroid/content/Context;)V
    .locals 3
    .param p1, "listener"    # Lcom/lenovo/scg/camera/CameraScreenNail$Listener;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 188
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;-><init>()V

    .line 79
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    .line 87
    new-instance v0, Lcom/lenovo/scg/camera/SwitchAnimManager;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/SwitchAnimManager;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/lenovo/scg/camera/SwitchAnimManager;

    .line 89
    iput v2, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAnimState:I

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    .line 111
    iput v1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mScaleX:F

    iput v1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mScaleY:F

    .line 115
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    .line 117
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAcquireTexture:Z

    .line 121
    new-instance v0, Lcom/lenovo/scg/camera/CameraScreenNail$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/CameraScreenNail$1;-><init>(Lcom/lenovo/scg/camera/CameraScreenNail;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mDefaultDraw:Lcom/lenovo/scg/camera/CameraScreenNail$DrawClient;

    .line 157
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mDefaultDraw:Lcom/lenovo/scg/camera/CameraScreenNail$DrawClient;

    iput-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mDraw:Lcom/lenovo/scg/camera/CameraScreenNail$DrawClient;

    .line 159
    iput v1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAlpha:F

    .line 189
    iput-object p1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mListener:Lcom/lenovo/scg/camera/CameraScreenNail$Listener;

    .line 190
    new-instance v0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1;

    check-cast p2, Lcom/lenovo/scg/camera/ActivityBase;

    .end local p2    # "ctx":Landroid/content/Context;
    invoke-direct {v0, p2}, Lcom/lenovo/scg/common/animation/CaptureAnimManager1;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/lenovo/scg/camera/AnimManager;

    .line 191
    return-void
.end method

.method static synthetic access$001(Lcom/lenovo/scg/camera/CameraScreenNail;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/CameraScreenNail;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 43
    invoke-super/range {p0 .. p5}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method private allocateTextureIfRequested(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 8
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 613
    iget-object v3, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 614
    :try_start_0
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAcquireTexture:Z

    if-eqz v2, :cond_1

    .line 615
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 616
    .local v0, "starttime":J
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->acquireSurfaceTexture(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 617
    const-string v2, "CAM_ScreenNail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireSurfaceTexture timeused "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 619
    invoke-static {}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->getInstance()Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->getSmartIVC()Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 621
    invoke-static {}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->getInstance()Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->getSmartIVC()Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    move-result-object v2

    iget-object v4, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->allocateTextureIfRequested(Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;)V

    .line 623
    :cond_0
    const-string v2, "CAM_ScreenNail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSmartIVC timeused "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAcquireTexture:Z

    .line 625
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 627
    .end local v0    # "starttime":J
    :cond_1
    monitor-exit v3

    .line 628
    return-void

    .line 627
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private callbackIfNeeded()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mOneTimeFrameDrawnListener:Lcom/lenovo/scg/camera/CameraScreenNail$OnFrameDrawnListener;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mOneTimeFrameDrawnListener:Lcom/lenovo/scg/camera/CameraScreenNail$OnFrameDrawnListener;

    invoke-interface {v0, p0}, Lcom/lenovo/scg/camera/CameraScreenNail$OnFrameDrawnListener;->onFrameDrawn(Lcom/lenovo/scg/camera/CameraScreenNail;)V

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mOneTimeFrameDrawnListener:Lcom/lenovo/scg/camera/CameraScreenNail$OnFrameDrawnListener;

    .line 385
    :cond_0
    return-void
.end method

.method private copyPreviewTexture(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 7
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/4 v3, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 513
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mDraw:Lcom/lenovo/scg/camera/CameraScreenNail$DrawClient;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/CameraScreenNail$DrawClient;->requiresSurfaceTexture()Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mDraw:Lcom/lenovo/scg/camera/CameraScreenNail$DrawClient;

    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAnimTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-direct {p0}, Lcom/lenovo/scg/camera/CameraScreenNail;->getTextureWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/lenovo/scg/camera/CameraScreenNail;->getTextureHeight()I

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/lenovo/scg/camera/CameraScreenNail$DrawClient;->copyToTexture(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;II)Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAnimTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .line 532
    :goto_0
    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAnimTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v5

    .line 517
    .local v5, "width":I
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAnimTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v6

    .line 518
    .local v6, "height":I
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAnimTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->beginRenderTarget(Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;)V

    .line 521
    int-to-float v0, v6

    invoke-interface {p1, v2, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 522
    const/high16 v0, -0x40800000    # -1.0f

    invoke-interface {p1, v1, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    .line 523
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 525
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/CameraScreenNail;->updateTransformMatrix([F)V

    .line 526
    invoke-interface {p1, v2, v2, v2, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->clearBuffer(FFFF)V

    .line 527
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;

    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    move-object v0, p1

    move v4, v3

    invoke-interface/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;[FIIII)V

    .line 528
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->endRenderTarget()V

    goto :goto_0
.end method

.method private getTextureHeight()I
    .locals 1

    .prologue
    .line 228
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->getHeight()I

    move-result v0

    return v0
.end method

.method private getTextureWidth()I
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->getWidth()I

    move-result v0

    return v0
.end method

.method private getYOffset(II)I
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 652
    const/4 v1, 0x0

    .line 653
    .local v1, "yOffset":I
    const/4 v0, 0x0

    .line 654
    .local v0, "bRatio_4_3":Z
    int-to-float v2, p2

    int-to-float v3, p1

    div-float/2addr v2, v3

    const v3, 0x3faaaaab

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 655
    const/4 v0, 0x1

    .line 657
    :cond_0
    if-eqz v0, :cond_1

    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    if-ne p1, v2, :cond_1

    .line 660
    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    sub-int/2addr v2, p2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lcom/lenovo/scg/camera/CameraUtil;->RATIO_4_3_DEFAULT_TRANS_Y:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 662
    :cond_1
    return v1
.end method

.method private setPreviewLayoutSize(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 255
    const-string v0, "CAM_ScreenNail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "preview layout size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iput p1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mRenderWidth:I

    .line 257
    iput p2, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mRenderHeight:I

    .line 258
    invoke-direct {p0}, Lcom/lenovo/scg/camera/CameraScreenNail;->updateRenderSize()V

    .line 259
    return-void
.end method

.method private updateRenderSize()V
    .locals 6

    .prologue
    .line 262
    iget-boolean v3, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    if-nez v3, :cond_0

    .line 263
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mScaleY:F

    iput v3, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mScaleX:F

    .line 264
    invoke-direct {p0}, Lcom/lenovo/scg/camera/CameraScreenNail;->getTextureWidth()I

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mUncroppedRenderWidth:I

    .line 265
    invoke-direct {p0}, Lcom/lenovo/scg/camera/CameraScreenNail;->getTextureHeight()I

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mUncroppedRenderHeight:I

    .line 266
    const-string v3, "CAM_ScreenNail"

    const-string v4, "aspect ratio clamping disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/CameraScreenNail;->getTextureWidth()I

    move-result v3

    invoke-direct {p0}, Lcom/lenovo/scg/camera/CameraScreenNail;->getTextureHeight()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 272
    invoke-direct {p0}, Lcom/lenovo/scg/camera/CameraScreenNail;->getTextureWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/lenovo/scg/camera/CameraScreenNail;->getTextureHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 277
    .local v0, "aspectRatio":F
    :goto_1
    iget v3, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mRenderWidth:I

    iget v4, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mRenderHeight:I

    if-le v3, v4, :cond_2

    .line 278
    iget v3, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mRenderWidth:I

    iget v4, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mRenderHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v2, v3

    .line 279
    .local v2, "scaledTextureWidth":F
    iget v3, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mRenderHeight:I

    iget v4, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mRenderWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v1, v3

    .line 284
    .local v1, "scaledTextureHeight":F
    :goto_2
    iget v3, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mRenderWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    iput v3, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mScaleX:F

    .line 285
    iget v3, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mRenderHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    iput v3, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mScaleY:F

    .line 286
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mUncroppedRenderWidth:I

    .line 287
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mUncroppedRenderHeight:I

    .line 288
    const-string v3, "CAM_ScreenNail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aspect ratio clamping enabled, surfaceTexture scale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mScaleX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mScaleY:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    .end local v0    # "aspectRatio":F
    .end local v1    # "scaledTextureHeight":F
    .end local v2    # "scaledTextureWidth":F
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/camera/CameraScreenNail;->getTextureHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/lenovo/scg/camera/CameraScreenNail;->getTextureWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .restart local v0    # "aspectRatio":F
    goto :goto_1

    .line 281
    :cond_2
    iget v3, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mRenderWidth:I

    iget v4, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mRenderHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v2, v3

    .line 282
    .restart local v2    # "scaledTextureWidth":F
    iget v3, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mRenderHeight:I

    iget v4, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mRenderWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v1, v3

    .restart local v1    # "scaledTextureHeight":F
    goto :goto_2
.end method


# virtual methods
.method public acquireSurfaceTexture()V
    .locals 5

    .prologue
    .line 292
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 293
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 294
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-direct {p0}, Lcom/lenovo/scg/camera/CameraScreenNail;->getTextureWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/lenovo/scg/camera/CameraScreenNail;->getTextureHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;-><init>(IIZ)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAnimTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAcquireTexture:Z

    .line 296
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mListener:Lcom/lenovo/scg/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/CameraScreenNail$Listener;->requestRender()V

    .line 298
    return-void

    .line 296
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public animateCapture(I)V
    .locals 2
    .param p1, "displayRotation"    # I

    .prologue
    .line 334
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/lenovo/scg/camera/AnimManager;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/camera/AnimManager;->setOrientation(I)V

    .line 336
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/lenovo/scg/camera/AnimManager;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/AnimManager;->animateFlashAndSlide()V

    .line 337
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mListener:Lcom/lenovo/scg/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/CameraScreenNail$Listener;->requestRender()V

    .line 338
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAnimState:I

    .line 339
    monitor-exit v1

    .line 340
    return-void

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateCapture(IZ)V
    .locals 2
    .param p1, "displayRotation"    # I
    .param p2, "isZSD"    # Z

    .prologue
    .line 344
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/lenovo/scg/camera/AnimManager;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/camera/AnimManager;->setOrientation(I)V

    .line 346
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/lenovo/scg/camera/AnimManager;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/AnimManager;->animateFlashAndSlide()V

    .line 347
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/lenovo/scg/camera/AnimManager;

    invoke-interface {v0, p2}, Lcom/lenovo/scg/camera/AnimManager;->setIsZSD(Z)V

    .line 348
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mListener:Lcom/lenovo/scg/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/CameraScreenNail$Listener;->requestRender()V

    .line 349
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAnimState:I

    .line 350
    monitor-exit v1

    .line 351
    return-void

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateFlash(I)V
    .locals 2
    .param p1, "displayRotation"    # I

    .prologue
    .line 365
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/lenovo/scg/camera/AnimManager;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/camera/AnimManager;->setOrientation(I)V

    .line 367
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/lenovo/scg/camera/AnimManager;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/AnimManager;->animateFlash()V

    .line 368
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mListener:Lcom/lenovo/scg/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/CameraScreenNail$Listener;->requestRender()V

    .line 369
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAnimState:I

    .line 370
    monitor-exit v1

    .line 371
    return-void

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateSlide()V
    .locals 2

    .prologue
    .line 374
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/lenovo/scg/camera/AnimManager;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/AnimManager;->animateSlide()V

    .line 376
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mListener:Lcom/lenovo/scg/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/CameraScreenNail$Listener;->requestRender()V

    .line 377
    monitor-exit v1

    .line 378
    return-void

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateSwitchCamera()V
    .locals 3

    .prologue
    .line 323
    const-string v0, "CAM_ScreenNail"

    const-string v1, "animateSwitchCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 325
    :try_start_0
    iget v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAnimState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 328
    const/4 v0, 0x5

    iput v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAnimState:I

    .line 330
    :cond_0
    monitor-exit v1

    .line 331
    return-void

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public copyTexture()V
    .locals 2

    .prologue
    .line 316
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mListener:Lcom/lenovo/scg/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/CameraScreenNail$Listener;->requestRender()V

    .line 318
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAnimState:I

    .line 319
    monitor-exit v1

    .line 320
    return-void

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public directDraw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 405
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mDraw:Lcom/lenovo/scg/camera/CameraScreenNail$DrawClient;

    .line 407
    .local v0, "draw":Lcom/lenovo/scg/camera/CameraScreenNail$DrawClient;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 408
    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/camera/CameraScreenNail$DrawClient;->onDraw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 409
    return-void

    .line 407
    .end local v0    # "draw":Lcom/lenovo/scg/camera/CameraScreenNail$DrawClient;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 17
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 425
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/scg/camera/CameraScreenNail;->allocateTextureIfRequested(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 426
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/lenovo/scg/camera/CameraScreenNail;->mVisible:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/lenovo/scg/camera/CameraScreenNail;->mVisible:Z

    .line 427
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v14

    .line 428
    .local v14, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/CameraScreenNail;->mDraw:Lcom/lenovo/scg/camera/CameraScreenNail$DrawClient;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/CameraScreenNail$DrawClient;->requiresSurfaceTexture()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/lenovo/scg/camera/CameraScreenNail;->mFirstFrameArrived:Z

    if-nez v4, :cond_2

    .line 429
    :cond_1
    monitor-exit v16

    .line 510
    :goto_0
    return-void

    .line 431
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/CameraScreenNail;->mOnFrameDrawnListener:Ljava/lang/Runnable;

    if-eqz v4, :cond_3

    .line 432
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/CameraScreenNail;->mOnFrameDrawnListener:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 433
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lenovo/scg/camera/CameraScreenNail;->mOnFrameDrawnListener:Ljava/lang/Runnable;

    .line 435
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->getAlpha()F

    move-result v13

    .line 436
    .local v13, "oldAlpha":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAlpha:F

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    .line 437
    const/4 v15, 0x0

    .line 438
    .local v15, "yOffset":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAnimState:I

    packed-switch v4, :pswitch_data_0

    .line 479
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAnimState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAnimState:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_5

    .line 481
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAnimState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 482
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/lenovo/scg/camera/CameraScreenNail;->mFullScreen:Z

    if-nez v4, :cond_6

    .line 484
    const/4 v12, 0x0

    .line 495
    .local v12, "drawn":Z
    :goto_2
    if-eqz v12, :cond_8

    .line 496
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/CameraScreenNail;->mListener:Lcom/lenovo/scg/camera/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/CameraScreenNail$Listener;->requestRender()V

    .line 507
    .end local v12    # "drawn":Z
    :cond_5
    :goto_3
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    .line 508
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/camera/CameraScreenNail;->callbackIfNeeded()V

    .line 509
    monitor-exit v16

    goto :goto_0

    .end local v13    # "oldAlpha":F
    .end local v14    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    .end local v15    # "yOffset":I
    :catchall_0
    move-exception v4

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 441
    .restart local v13    # "oldAlpha":F
    .restart local v14    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    .restart local v15    # "yOffset":I
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/CameraScreenNail;->getYOffset(II)I

    move-result v15

    .line 443
    sub-int v7, p3, v15

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/lenovo/scg/camera/CameraScreenNail;->directDraw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    goto :goto_1

    .line 446
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/scg/camera/CameraScreenNail;->copyPreviewTexture(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/lenovo/scg/camera/SwitchAnimManager;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Lcom/lenovo/scg/camera/SwitchAnimManager;->setReviewDrawingSize(II)V

    .line 448
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/CameraScreenNail;->mListener:Lcom/lenovo/scg/camera/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/CameraScreenNail$Listener;->onPreviewTextureCopied()V

    .line 449
    const/4 v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAnimState:I

    .line 452
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/lenovo/scg/camera/SwitchAnimManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/SwitchAnimManager;->startAnimationFadeOut()V

    .line 458
    :pswitch_3
    invoke-virtual {v14}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 459
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/CameraScreenNail;->getYOffset(II)I

    move-result v15

    .line 460
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/lenovo/scg/camera/SwitchAnimManager;

    sub-int v7, p3, v15

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAnimTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v10}, Lcom/lenovo/scg/camera/SwitchAnimManager;->drawFadeOutAnimation(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIIILcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)Z

    goto/16 :goto_1

    .line 465
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/lenovo/scg/camera/SwitchAnimManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/SwitchAnimManager;->startAnimation()V

    .line 466
    const/4 v4, 0x7

    move-object/from16 v0, p0

    iput v4, v0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAnimState:I

    goto/16 :goto_1

    .line 469
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/scg/camera/CameraScreenNail;->copyPreviewTexture(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/CameraScreenNail;->mListener:Lcom/lenovo/scg/camera/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/CameraScreenNail$Listener;->onCaptureTextureCopied()V

    .line 473
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/lenovo/scg/camera/AnimManager;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/lenovo/scg/camera/AnimManager;->startAnimation(IIII)V

    .line 475
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAnimState:I

    goto/16 :goto_1

    .line 486
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/lenovo/scg/camera/AnimManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAnimTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-interface/range {v4 .. v11}, Lcom/lenovo/scg/camera/AnimManager;->drawAnimation(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/camera/CameraScreenNail;Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;IIII)Z

    move-result v12

    .restart local v12    # "drawn":Z
    goto/16 :goto_2

    .line 490
    .end local v12    # "drawn":Z
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/CameraScreenNail;->getYOffset(II)I

    move-result v15

    .line 493
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/lenovo/scg/camera/SwitchAnimManager;

    sub-int v8, p3, v15

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-virtual/range {v4 .. v10}, Lcom/lenovo/scg/camera/SwitchAnimManager;->drawFadeInAnimation(Lcom/lenovo/scg/camera/CameraScreenNail;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)Z

    move-result v12

    .restart local v12    # "drawn":Z
    goto/16 :goto_2

    .line 500
    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAnimState:I

    .line 502
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/CameraScreenNail;->getYOffset(II)I

    move-result v15

    .line 504
    sub-int v7, p3, v15

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/lenovo/scg/camera/CameraScreenNail;->directDraw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 438
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public enableAspectRatioClamping()V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    .line 251
    invoke-direct {p0}, Lcom/lenovo/scg/camera/CameraScreenNail;->updateRenderSize()V

    .line 252
    return-void
.end method

.method public getAlpha()F
    .locals 2

    .prologue
    .line 638
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 639
    :try_start_0
    iget v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAlpha:F

    monitor-exit v1

    return v0

    .line 640
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAnimationTexture()Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAnimTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mRenderHeight:I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/CameraScreenNail;->getTextureHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 12

    .prologue
    .line 593
    iget-object v7, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 594
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 595
    .local v2, "starttime":J
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 596
    .local v1, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    const-string v6, "getSurfaceTexture"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "surfaceTexture "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    if-nez v1, :cond_0

    iget-boolean v6, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAcquireTexture:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 599
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 600
    .local v4, "starttime2":J
    iget-object v6, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V

    .line 601
    const-string v6, "CAM_ScreenNail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSurfaceTexture wait timeused "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 607
    .end local v4    # "starttime2":J
    :cond_0
    :goto_0
    :try_start_2
    const-string v6, "CAM_ScreenNail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSurfaceTexture timeused "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    monitor-exit v7

    return-object v1

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v6, "CAM_ScreenNail"

    const-string/jumbo v8, "unexpected interruption"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 609
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    .end local v2    # "starttime":J
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method

.method public getUncroppedRenderHeight()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mUncroppedRenderHeight:I

    return v0
.end method

.method public getUncroppedRenderWidth()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mUncroppedRenderWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mRenderWidth:I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/CameraScreenNail;->getTextureWidth()I

    move-result v0

    goto :goto_0
.end method

.method public noDraw()V
    .locals 2

    .prologue
    .line 536
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 537
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mVisible:Z

    .line 538
    monitor-exit v1

    .line 539
    return-void

    .line 538
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 552
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils;->onPreviewFPSChanged()V

    .line 555
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 556
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 557
    monitor-exit v1

    .line 571
    :goto_0
    return-void

    .line 559
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 560
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mVisible:Z

    if-eqz v0, :cond_2

    .line 561
    iget v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAnimState:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 562
    const/4 v0, 0x6

    iput v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAnimState:I

    .line 566
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/CameraScreenNail;->getPreviewTexDrawMode()Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    move-result-object v0

    sget-object v2, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->Normal:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    if-ne v0, v2, :cond_2

    .line 567
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mListener:Lcom/lenovo/scg/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/CameraScreenNail$Listener;->requestRender()V

    .line 570
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 543
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 544
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mVisible:Z

    .line 545
    monitor-exit v1

    .line 546
    return-void

    .line 545
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseSurfaceTexture()V
    .locals 2

    .prologue
    .line 302
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAcquireTexture:Z

    if-eqz v0, :cond_0

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAcquireTexture:Z

    .line 305
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 312
    :goto_0
    monitor-exit v1

    .line 313
    return-void

    .line 307
    :cond_0
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 308
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->releaseSurfaceTexture()V

    .line 310
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAnimState:I

    goto :goto_0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 644
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 645
    :try_start_0
    iput p1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mAlpha:F

    .line 646
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mListener:Lcom/lenovo/scg/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/CameraScreenNail$Listener;->requestRender()V

    .line 647
    monitor-exit v1

    .line 648
    return-void

    .line 647
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDraw(Lcom/lenovo/scg/camera/CameraScreenNail$DrawClient;)V
    .locals 2
    .param p1, "draw"    # Lcom/lenovo/scg/camera/CameraScreenNail$DrawClient;

    .prologue
    .line 412
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 413
    if-nez p1, :cond_0

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mDefaultDraw:Lcom/lenovo/scg/camera/CameraScreenNail$DrawClient;

    iput-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mDraw:Lcom/lenovo/scg/camera/CameraScreenNail$DrawClient;

    .line 418
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mListener:Lcom/lenovo/scg/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/CameraScreenNail$Listener;->requestRender()V

    .line 420
    return-void

    .line 416
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mDraw:Lcom/lenovo/scg/camera/CameraScreenNail$DrawClient;

    goto :goto_0

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setFullScreen(Z)V
    .locals 2
    .param p1, "full"    # Z

    .prologue
    .line 194
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 195
    :try_start_0
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mFullScreen:Z

    .line 196
    monitor-exit v1

    .line 197
    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnFrameDrawnOneShot(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 632
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 633
    :try_start_0
    iput-object p1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mOnFrameDrawnListener:Ljava/lang/Runnable;

    .line 634
    monitor-exit v1

    .line 635
    return-void

    .line 634
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOneTimeOnFrameDrawnListener(Lcom/lenovo/scg/camera/CameraScreenNail$OnFrameDrawnListener;)V
    .locals 2
    .param p1, "l"    # Lcom/lenovo/scg/camera/CameraScreenNail$OnFrameDrawnListener;

    .prologue
    .line 585
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 586
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 587
    iput-object p1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mOneTimeFrameDrawnListener:Lcom/lenovo/scg/camera/CameraScreenNail$OnFrameDrawnListener;

    .line 588
    monitor-exit v1

    .line 589
    return-void

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPreviewFrameLayoutSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 578
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 579
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/lenovo/scg/camera/SwitchAnimManager;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/SwitchAnimManager;->setPreviewFrameLayoutSize(II)V

    .line 580
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/CameraScreenNail;->setPreviewLayoutSize(II)V

    .line 581
    monitor-exit v1

    .line 582
    return-void

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 233
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->setSize(II)V

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    .line 235
    iget v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mRenderWidth:I

    if-nez v0, :cond_0

    .line 236
    iput p1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mRenderWidth:I

    .line 237
    iput p2, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mRenderHeight:I

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/CameraScreenNail;->updateRenderSize()V

    .line 240
    return-void
.end method

.method public stopCaptureAnim()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/lenovo/scg/camera/AnimManager;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/lenovo/scg/camera/AnimManager;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/AnimManager;->stopCaptureAnim()V

    .line 357
    :cond_0
    return-void
.end method

.method protected updateTransformMatrix([F)V
    .locals 6
    .param p1, "matrix"    # [F

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/high16 v4, -0x41000000    # -0.5f

    const/4 v3, 0x0

    .line 390
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->updateTransformMatrix([F)V

    .line 391
    invoke-static {}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->getInstance()Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->getSmartIVC()Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    invoke-static {}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->getInstance()Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->getSmartIVC()Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->updateTransformMatrix([F)V

    .line 395
    :cond_0
    invoke-static {p1, v3, v1, v1, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 396
    iget v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mScaleX:F

    iget v1, p0, Lcom/lenovo/scg/camera/CameraScreenNail;->mScaleY:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v3, v0, v1, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 397
    invoke-static {p1, v3, v4, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 401
    return-void
.end method
