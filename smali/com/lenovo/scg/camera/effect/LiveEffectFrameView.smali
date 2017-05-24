.class public Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;
.super Lcom/lenovo/scg/gallery3d/ui/GLView;
.source "LiveEffectFrameView.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDrawOffsetY:F

.field private mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

.field private mFrameManager:Lcom/lenovo/scg/camera/effect/EffectFrameManager;

.field private mOrientation:F

.field private mScreenHeight:F

.field private mScreenWidth:F

.field private mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/GLView;-><init>()V

    .line 32
    const-string v0, "LiveEffectFrameView"

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/effect/EffectFrameManager;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mFrameManager:Lcom/lenovo/scg/camera/effect/EffectFrameManager;

    .line 38
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mContext:Landroid/content/Context;

    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mScreenWidth:F

    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mScreenHeight:F

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mDrawOffsetY:F

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;)Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;)Lcom/lenovo/scg/camera/effect/EffectFrameManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mFrameManager:Lcom/lenovo/scg/camera/effect/EffectFrameManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method


# virtual methods
.method public changeScreenEffect(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)Z
    .locals 1
    .param p1, "type"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .prologue
    .line 85
    new-instance v0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$1;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$1;-><init>(Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)V

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->queueEvent(Ljava/lang/Runnable;)V

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public destoryEffect()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mFrameManager:Lcom/lenovo/scg/camera/effect/EffectFrameManager;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mFrameManager:Lcom/lenovo/scg/camera/effect/EffectFrameManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->destoryEffect()V

    .line 82
    :cond_0
    return-void
.end method

.method public getCurrentEffectType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mFrameManager:Lcom/lenovo/scg/camera/effect/EffectFrameManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->getCurrentEffectType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    move-result-object v0

    return-object v0
.end method

.method public getEffectShowOrHideState()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mFrameManager:Lcom/lenovo/scg/camera/effect/EffectFrameManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->getEffectShowOrHideState()Z

    move-result v0

    return v0
.end method

.method protected render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 10
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/high16 v7, 0x40800000    # 4.0f

    const/high16 v6, 0x40400000    # 3.0f

    const/4 v2, 0x0

    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mFrameManager:Lcom/lenovo/scg/camera/effect/EffectFrameManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v1

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->doPreviewEffect(IIIZ)Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .line 51
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->setSize(II)V

    .line 52
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v9

    .line 53
    .local v9, "root":Lcom/lenovo/scg/gallery3d/ui/GLRoot;
    invoke-interface {v9}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mOrientation:F

    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    if-eqz v0, :cond_0

    .line 56
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mOrientation:F

    const/high16 v1, 0x43340000    # 180.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 57
    sget-object v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPreviewRatio:Ljava/lang/String;

    const-string v1, "16x9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mScreenHeight:F

    float-to-int v4, v0

    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mScreenWidth:F

    float-to-int v5, v0

    move-object v0, p1

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIII)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mDrawOffsetY:F

    float-to-int v5, v0

    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mScreenHeight:F

    mul-float/2addr v0, v6

    div-float/2addr v0, v7

    float-to-int v7, v0

    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mScreenWidth:F

    float-to-int v8, v0

    move-object v4, p1

    move v6, v2

    invoke-virtual/range {v3 .. v8}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    goto :goto_0

    .line 64
    :cond_2
    sget-object v0, Lcom/lenovo/scg/camera/mode/EffectMode;->mPreviewRatio:Ljava/lang/String;

    const-string v1, "16x9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mScreenWidth:F

    float-to-int v4, v0

    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mScreenHeight:F

    float-to-int v5, v0

    move-object v0, p1

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIII)V

    goto :goto_0

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mDrawOffsetY:F

    float-to-int v3, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mScreenWidth:F

    float-to-int v4, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mScreenHeight:F

    mul-float/2addr v1, v6

    div-float/2addr v1, v7

    float-to-int v5, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public setCurrentEffectType(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)V
    .locals 1
    .param p1, "type"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mFrameManager:Lcom/lenovo/scg/camera/effect/EffectFrameManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->setCurrentEffectType(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)V

    .line 114
    return-void
.end method

.method public setEffectHideOrShowState(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .prologue
    .line 97
    new-instance v0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$2;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$2;-><init>(Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;Z)V

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->queueEvent(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method

.method public setTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)V
    .locals 0
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .line 46
    return-void
.end method

.method public startEffectPicTaken(Landroid/os/Handler;[BIIIZ)V
    .locals 8
    .param p1, "effectHandler"    # Landroid/os/Handler;
    .param p2, "jpegData"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "orientation"    # I
    .param p6, "IsOneShot"    # Z

    .prologue
    .line 134
    new-instance v0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$3;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$3;-><init>(Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;[BIIIZLandroid/os/Handler;)V

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->queueEvent(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method
