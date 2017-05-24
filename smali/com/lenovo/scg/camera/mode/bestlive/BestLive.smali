.class public Lcom/lenovo/scg/camera/mode/bestlive/BestLive;
.super Ljava/lang/Object;
.source "BestLive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;
    }
.end annotation


# static fields
.field public static final FRONT_DEFAULT_PREIVEW_HEIGHT:I = 0x1e0

.field public static final FRONT_DEFAULT_PREIVEW_WIDTH:I = 0x280

.field public static final FRONT_SCALE_HIGH_DEVIDE_VALUE:F = 1.0f

.field public static final FRONT_SCALE_MIDDLE_DEVIDE_VALUE:F = 1.3333f

.field public static final FRONT_SCALE_SMALL_DEVIDE_VALUE:F = 2.0f

.field private static final TAG:Ljava/lang/String; = "BestLive"


# instance fields
.field private bmp2yuv:J

.field private mBestLiveHeight:I

.field private mBestLiveWidth:I

.field private mBestLiveYUV:[B

.field private mComposeManager:Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;

.field private mContext:Landroid/content/Context;

.field private mConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

.field private mFrontCamera:Landroid/hardware/Camera;

.field private mFrontHeight:I

.field private mFrontPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field mFrontSurfaceCallback:Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;

.field private mFrontTempYUV:[B

.field private mFrontWidth:I

.field private mLock:[B

.field private mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

.field private mNeedFrontYUVResize:Z

.field private mSurfaceViewLeftMargin:F

.field private mSurfaceViewTopMargin:F

.field private mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

.field private rgb2bmp:J

.field private time:I

.field private totally:J

.field private yuv2rgb:J


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/mode/controller/VideoModeController;Lcom/lenovo/scg/camera/mode/VideoMode;)V
    .locals 6
    .param p1, "controller"    # Lcom/lenovo/scg/camera/mode/controller/VideoModeController;
    .param p2, "videoMode"    # Lcom/lenovo/scg/camera/mode/VideoMode;

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mNeedFrontYUVResize:Z

    .line 51
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    .line 54
    new-array v1, v4, [B

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mLock:[B

    .line 125
    new-instance v1, Lcom/lenovo/scg/camera/mode/bestlive/BestLive$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/mode/bestlive/BestLive$1;-><init>(Lcom/lenovo/scg/camera/mode/bestlive/BestLive;)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 174
    iput v4, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->time:I

    .line 175
    iput-wide v2, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->yuv2rgb:J

    .line 176
    iput-wide v2, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->rgb2bmp:J

    .line 177
    iput-wide v2, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->bmp2yuv:J

    .line 178
    iput-wide v2, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->totally:J

    .line 352
    const-string v1, "BestLive"

    const-string v2, "VideoBestLive"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    .line 354
    iput-object p2, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    .line 355
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/VideoMode;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mContext:Landroid/content/Context;

    .line 358
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/VideoMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 359
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f09035e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const v2, 0x7f09035f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->setSurfaceViewMargin(FF)V

    .line 364
    const/high16 v1, 0x44200000    # 640.0f

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/VideoMode;->getResolutionScaleValue()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontWidth:I

    .line 366
    const/high16 v1, 0x43f00000    # 480.0f

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/VideoMode;->getResolutionScaleValue()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontHeight:I

    .line 368
    const-string v1, "BestLive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFrontWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and mFrontHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mComposeManager:Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;

    .line 372
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mComposeManager:Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/VideoMode;->getResolutionScaleValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;->initComposeImages(F)V

    .line 374
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mComposeManager:Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;->getFrameWidth()I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveWidth:I

    .line 375
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mComposeManager:Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;->getFrameHeight()I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveHeight:I

    .line 376
    const-string v1, "BestLive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBestLiveWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and mBestLiveHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget v1, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveWidth:I

    iget v2, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveHeight:I

    mul-int/2addr v1, v2

    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    double-to-int v1, v2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveYUV:[B

    .line 380
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/mode/bestlive/BestLive;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/camera/mode/bestlive/BestLive;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/bestlive/BestLive;
    .param p1, "x1"    # Landroid/hardware/Camera;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/mode/bestlive/BestLive;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    .prologue
    .line 25
    iget v0, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/mode/bestlive/BestLive;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    .prologue
    .line 25
    iget v0, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/mode/bestlive/BestLive;Landroid/hardware/Camera$Parameters;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/bestlive/BestLive;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->isSupportedPreviewSize(Landroid/hardware/Camera$Parameters;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/lenovo/scg/camera/mode/bestlive/BestLive;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/bestlive/BestLive;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mNeedFrontYUVResize:Z

    return p1
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/mode/bestlive/BestLive;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->activatePreviewCallBack()V

    return-void
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/mode/bestlive/BestLive;)[B
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mLock:[B

    return-object v0
.end method

.method static synthetic access$702(Lcom/lenovo/scg/camera/mode/bestlive/BestLive;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/bestlive/BestLive;
    .param p1, "x1"    # [B

    .prologue
    .line 25
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontTempYUV:[B

    return-object p1
.end method

.method private activatePreviewCallBack()V
    .locals 2

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1019
    return-void
.end method

.method private isSupportedPreviewSize(Landroid/hardware/Camera$Parameters;II)Z
    .locals 6
    .param p1, "paras"    # Landroid/hardware/Camera$Parameters;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 384
    const-string v3, "BestLive"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSupportedPreviewSize width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    if-nez p1, :cond_0

    .line 387
    const-string v3, "BestLive"

    const-string v4, "Parameters == null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    .line 391
    .local v2, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 392
    .local v1, "size":Landroid/hardware/Camera$Size;
    if-eqz v1, :cond_1

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    if-ne v3, p2, :cond_1

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    if-ne v3, p3, :cond_1

    .line 393
    const-string v3, "BestLive"

    const-string v4, "Above size supported!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v3, 0x1

    .line 406
    .end local v1    # "size":Landroid/hardware/Camera$Size;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private yuvCut([B[BIIIILandroid/graphics/Point;)V
    .locals 18
    .param p1, "des"    # [B
    .param p2, "src"    # [B
    .param p3, "desWidth"    # I
    .param p4, "desHeight"    # I
    .param p5, "srcWidth"    # I
    .param p6, "srcHeight"    # I
    .param p7, "offsetPoint"    # Landroid/graphics/Point;

    .prologue
    .line 511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 512
    .local v8, "now":J
    if-nez p2, :cond_0

    .line 513
    const-string v13, "BestLive"

    const-string/jumbo v14, "yuvCut src == null"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :goto_0
    return-void

    .line 516
    :cond_0
    const-string v13, "BestLive"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "yuvCut des size = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " * "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const-string v13, "BestLive"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "yuvCut src size = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p5

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " * "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p6

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const-string v13, "BestLive"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "yuvCut offsetPoint = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/4 v7, 0x0

    .line 521
    .local v7, "srcLine":I
    const/4 v2, 0x0

    .line 522
    .local v2, "desLine":I
    const/4 v10, 0x0

    .line 523
    .local v10, "srcLineHeader":I
    const/4 v3, 0x0

    .line 525
    .local v3, "desLineHeader":I
    const/4 v6, 0x0

    .line 526
    .local v6, "lineOffset":I
    const/4 v4, 0x0

    .line 527
    .local v4, "headerOffset":I
    if-eqz p7, :cond_1

    .line 528
    move-object/from16 v0, p7

    iget v4, v0, Landroid/graphics/Point;->x:I

    .line 529
    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/Point;->y:I

    .line 531
    const-string v13, "BestLive"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "yuvCut headerOffset = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " and lineOffset = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_1
    :goto_1
    move/from16 v0, p4

    if-ge v7, v0, :cond_3

    .line 537
    add-int v13, v7, v6

    mul-int v13, v13, p5

    add-int v10, v13, v4

    .line 538
    mul-int v3, v2, p3

    .line 539
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    move/from16 v0, p3

    if-ge v5, v0, :cond_2

    .line 540
    add-int v13, v3, v5

    add-int v14, v10, v5

    aget-byte v14, p2, v14

    aput-byte v14, p1, v13

    .line 539
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 543
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 544
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 546
    .end local v5    # "i":I
    :cond_3
    const-string v13, "BestLive"

    const-string/jumbo v14, "yuvCut copy Y done"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    rem-int/lit8 v13, v6, 0x2

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 550
    add-int/lit8 v6, v6, 0x1

    .line 551
    const-string v13, "BestLive"

    const-string/jumbo v14, "yuvCut adjust lineOffset"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_4
    rem-int/lit8 v13, v4, 0x2

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 554
    add-int/lit8 v4, v4, 0x1

    .line 555
    const-string v13, "BestLive"

    const-string/jumbo v14, "yuvCut adjust headerOffset"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_5
    const/4 v7, 0x0

    .line 558
    const/4 v2, 0x0

    .line 559
    mul-int v12, p5, p6

    .line 560
    .local v12, "ySrcCount":I
    mul-int v11, p3, p4

    .line 561
    .local v11, "yDesCount":I
    :goto_3
    div-int/lit8 v13, p4, 0x2

    if-ge v7, v13, :cond_7

    .line 562
    div-int/lit8 v13, v6, 0x2

    add-int/2addr v13, v7

    mul-int v13, v13, p5

    add-int/2addr v13, v4

    add-int v10, v12, v13

    .line 564
    mul-int v13, v2, p3

    add-int v3, v11, v13

    .line 565
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    move/from16 v0, p3

    if-ge v5, v0, :cond_6

    .line 566
    add-int v13, v3, v5

    add-int v14, v10, v5

    aget-byte v14, p2, v14

    aput-byte v14, p1, v13

    .line 565
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 569
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 570
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 573
    .end local v5    # "i":I
    :cond_7
    const-string v13, "BestLive"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "yuvCut done costs "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v8

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ms"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private yuvReplace([B[BIIIILandroid/graphics/Point;Z)V
    .locals 13
    .param p1, "des"    # [B
    .param p2, "src"    # [B
    .param p3, "desWidth"    # I
    .param p4, "desHeight"    # I
    .param p5, "srcWidth"    # I
    .param p6, "srcHeight"    # I
    .param p7, "offsetPoint"    # Landroid/graphics/Point;
    .param p8, "reverse"    # Z

    .prologue
    .line 424
    if-eqz p1, :cond_0

    if-nez p2, :cond_4

    .line 425
    :cond_0
    const-string v11, "BestLive"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "yuvReplace \'des == null\' "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez p1, :cond_2

    const/4 v10, 0x1

    :goto_0
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const-string v11, "BestLive"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "yuvReplace \'src == null\' "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez p2, :cond_3

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_1
    return-void

    .line 425
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 426
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 430
    :cond_4
    const/4 v5, 0x0

    .line 431
    .local v5, "lineOffset":I
    const/4 v3, 0x0

    .line 432
    .local v3, "headerOffset":I
    if-eqz p7, :cond_5

    .line 433
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 434
    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Point;->y:I

    .line 436
    const-string v10, "BestLive"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "headerOffset = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " and lineOffset = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_5
    const-string v10, "BestLive"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "yuvReplace des length = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, p1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const-string v10, "BestLive"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "src length = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, p2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v6, 0x0

    .line 443
    .local v6, "srcLine":I
    const/4 v1, 0x0

    .line 444
    .local v1, "desLine":I
    const/4 v7, 0x0

    .line 445
    .local v7, "srcLineHeader":I
    const/4 v2, 0x0

    .line 448
    .local v2, "desLineHeader":I
    :goto_2
    move/from16 v0, p6

    if-ge v6, v0, :cond_9

    .line 449
    mul-int v7, v6, p5

    .line 450
    if-eqz p8, :cond_6

    .line 451
    add-int/lit8 v10, p5, -0x1

    add-int/2addr v7, v10

    .line 453
    :cond_6
    add-int v10, v1, v5

    mul-int v10, v10, p3

    add-int v2, v10, v3

    .line 454
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    move/from16 v0, p5

    if-ge v4, v0, :cond_8

    .line 455
    add-int v11, v2, v4

    if-eqz p8, :cond_7

    sub-int v10, v7, v4

    :goto_4
    aget-byte v10, p2, v10

    aput-byte v10, p1, v11

    .line 454
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 455
    :cond_7
    add-int v10, v7, v4

    goto :goto_4

    .line 459
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 460
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 464
    .end local v4    # "i":I
    :cond_9
    rem-int/lit8 v10, v5, 0x2

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    .line 465
    add-int/lit8 v5, v5, 0x1

    .line 467
    :cond_a
    rem-int/lit8 v10, v3, 0x2

    const/4 v11, 0x1

    if-ne v10, v11, :cond_b

    .line 468
    add-int/lit8 v3, v3, 0x1

    .line 471
    :cond_b
    const/4 v6, 0x0

    .line 472
    const/4 v1, 0x0

    .line 473
    mul-int v9, p5, p6

    .line 474
    .local v9, "ySrcCount":I
    mul-int v8, p3, p4

    .line 475
    .local v8, "yDesCount":I
    :goto_5
    div-int/lit8 v10, p6, 0x2

    if-ge v6, v10, :cond_1

    .line 476
    mul-int v10, v6, p5

    add-int v7, v9, v10

    .line 477
    if-eqz p8, :cond_c

    .line 478
    add-int/lit8 v10, p5, -0x2

    add-int/2addr v7, v10

    .line 481
    :cond_c
    div-int/lit8 v10, v5, 0x2

    add-int/2addr v10, v1

    mul-int v10, v10, p3

    add-int/2addr v10, v3

    add-int v2, v8, v10

    .line 484
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_6
    div-int/lit8 v10, p5, 0x2

    if-ge v4, v10, :cond_f

    .line 485
    mul-int/lit8 v10, v4, 0x2

    add-int v11, v2, v10

    if-eqz p8, :cond_d

    mul-int/lit8 v10, v4, 0x2

    sub-int v10, v7, v10

    :goto_7
    aget-byte v10, p2, v10

    aput-byte v10, p1, v11

    .line 487
    mul-int/lit8 v10, v4, 0x2

    add-int/2addr v10, v2

    add-int/lit8 v11, v10, 0x1

    if-eqz p8, :cond_e

    mul-int/lit8 v10, v4, 0x2

    sub-int v10, v7, v10

    add-int/lit8 v10, v10, 0x1

    :goto_8
    aget-byte v10, p2, v10

    aput-byte v10, p1, v11

    .line 484
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 485
    :cond_d
    mul-int/lit8 v10, v4, 0x2

    add-int/2addr v10, v7

    goto :goto_7

    .line 487
    :cond_e
    mul-int/lit8 v10, v4, 0x2

    add-int/2addr v10, v7

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 492
    :cond_f
    add-int/lit8 v6, v6, 0x1

    .line 493
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method


# virtual methods
.method public addBestLiveScene([BII)Z
    .locals 48
    .param p1, "backYUV"    # [B
    .param p2, "backWidth"    # I
    .param p3, "backHeight"    # I

    .prologue
    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontTempYUV:[B

    if-eqz v2, :cond_5

    .line 183
    const-string v2, "BestLive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BestLiveSyc enter addBestLiveScene on Thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mLock:[B

    move-object/from16 v29, v0

    monitor-enter v29

    .line 186
    :try_start_0
    const-string v2, "BestLive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BestLiveSyc start addBestLiveScene on Thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->time:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->time:I

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    .line 191
    .local v38, "now":J
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveWidth:I

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveHeight:I

    if-gtz v2, :cond_1

    .line 192
    :cond_0
    const-string v2, "BestLive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t start BestLive with window size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_1
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 197
    .local v9, "offsetPoint":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mSurfaceViewLeftMargin:F

    float-to-int v2, v2

    iput v2, v9, Landroid/graphics/Point;->x:I

    .line 198
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mSurfaceViewTopMargin:F

    float-to-int v2, v2

    iput v2, v9, Landroid/graphics/Point;->y:I

    .line 199
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mNeedFrontYUVResize:Z

    if-eqz v2, :cond_2

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontTempYUV:[B

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontHeight:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/scg/camera/mode/VideoMode;->YUV420SP_YVU420SP([BII)V

    .line 203
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    .line 204
    .local v42, "prepare":J
    const-string v2, "BestLive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addBestLiveScene preare costs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v42, v38

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveYUV:[B

    if-nez v2, :cond_3

    .line 209
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveHeight:I

    mul-int/2addr v2, v3

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    double-to-int v2, v2

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveYUV:[B

    .line 211
    const-string v2, "BestLive"

    const-string v3, "Why mBestLiveYUV == null?"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveYUV:[B

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveHeight:I

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->yuvCut([B[BIIIILandroid/graphics/Point;)V

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    .line 216
    .local v36, "cut":J
    const-string v2, "BestLive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addBestLiveScene get partYUV from back yuv costs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v36, v42

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v17, Landroid/graphics/Point;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Point;-><init>()V

    .line 221
    .local v17, "offsetMargin":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 222
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 223
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveYUV:[B

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontTempYUV:[B

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontHeight:I

    move/from16 v16, v0

    const/16 v18, 0x1

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v18}, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->yuvReplace([B[BIIIILandroid/graphics/Point;Z)V

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    .line 227
    .local v40, "paste":J
    const-string v2, "BestLive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addBestLiveScene paste front YUV costs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v40, v36

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    if-nez v2, :cond_4

    .line 232
    new-instance v2, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    invoke-direct {v2}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    invoke-virtual {v2}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->Init()Z

    .line 235
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveYUV:[B

    sget-object v4, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_YVU420sp:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveHeight:I

    sget-object v7, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_ARGB8888:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    invoke-virtual/range {v2 .. v7}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->ImageColorConvert([BLcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;IILcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;)[I

    move-result-object v19

    .line 239
    .local v19, "rgb":[I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 240
    .local v32, "converRgb":J
    const-string v2, "BestLive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FrontPreviewCb YUV - rgb costs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v32, v40

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->yuv2rgb:J

    sub-long v4, v32, v40

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->yuv2rgb:J

    .line 244
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 246
    .local v18, "bestLiveBitmap":Landroid/graphics/Bitmap;
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveWidth:I

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveWidth:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveHeight:I

    move/from16 v25, v0

    invoke-virtual/range {v18 .. v25}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    .line 249
    .local v34, "convertBmp":J
    const-string v2, "BestLive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addBestLiveScene creat Bitmap costs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v34, v32

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->rgb2bmp:J

    sub-long v4, v34, v32

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->rgb2bmp:J

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mComposeManager:Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;->compose(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 256
    .local v30, "composeBmp":J
    const-string v2, "BestLive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addBestLiveScene add frame to bitmap costs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v30, v34

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    sget-object v3, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_YVU420sp:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->ColorConvertBitmapToYUV(Landroid/graphics/Bitmap;Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveYUV:[B

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    invoke-virtual {v2}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->Finish()V

    .line 263
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    .line 265
    .local v44, "toYUV":J
    const-string v2, "BestLive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addBestLiveScene bitmap to YUV costs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v44, v30

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->bmp2yuv:J

    sub-long v4, v44, v30

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->bmp2yuv:J

    .line 270
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 271
    .local v7, "matrix":Landroid/graphics/Matrix;
    const-string v2, "BestLive"

    const-string v3, "addBestLiveScene new Matrix"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v7, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 274
    const-string v2, "BestLive"

    const-string v3, "addBestLiveScene setRotate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveHeight:I

    const/4 v8, 0x1

    move-object/from16 v2, v18

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/lenovo/scg/camera/mode/VideoMode;->updateFrontPreview(Landroid/graphics/Bitmap;)V

    .line 278
    const-string v2, "BestLive"

    const-string v3, "addBestLiveScene updateFrontPreview done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    .line 280
    .local v46, "updateUI":J
    const-string v2, "BestLive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addBestLiveScene update UI costs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v46, v44

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveYUV:[B

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveWidth:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mBestLiveHeight:I

    move/from16 v26, v0

    const/16 v28, 0x0

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move/from16 v23, p2

    move/from16 v24, p3

    move-object/from16 v27, v9

    invoke-direct/range {v20 .. v28}, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->yuvReplace([B[BIIIILandroid/graphics/Point;Z)V

    .line 286
    const-string v2, "BestLive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addBestLiveScene paste YUV on back yuv costs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v46

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->totally:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v38

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->totally:J

    .line 293
    const-string v2, "BestLive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BestLiveSyc addBestLiveScene done on Thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v2, 0x1

    monitor-exit v29

    .line 301
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "offsetPoint":Landroid/graphics/Point;
    .end local v17    # "offsetMargin":Landroid/graphics/Point;
    .end local v18    # "bestLiveBitmap":Landroid/graphics/Bitmap;
    .end local v19    # "rgb":[I
    .end local v30    # "composeBmp":J
    .end local v32    # "converRgb":J
    .end local v34    # "convertBmp":J
    .end local v36    # "cut":J
    .end local v38    # "now":J
    .end local v40    # "paste":J
    .end local v42    # "prepare":J
    .end local v44    # "toYUV":J
    .end local v46    # "updateUI":J
    :goto_0
    return v2

    .line 296
    :catchall_0
    move-exception v2

    monitor-exit v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 298
    :cond_5
    const-string v2, "BestLive"

    const-string v3, "BestLiveSyc mFrontTempYUV == null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getFrontSurfaceCallback()Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;
    .locals 3

    .prologue
    .line 999
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontSurfaceCallback:Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;

    if-nez v0, :cond_0

    .line 1000
    new-instance v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;-><init>(Lcom/lenovo/scg/camera/mode/bestlive/BestLive;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontSurfaceCallback:Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;

    .line 1003
    :cond_0
    const-string v1, "BestLive"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "return mFrontSurfaceCallback == null "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontSurfaceCallback:Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontSurfaceCallback:Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;

    return-object v0

    .line 1003
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNeedFrontYUVResize()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mNeedFrontYUVResize:Z

    return v0
.end method

.method public release()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 952
    const-string v0, "BestLive"

    const-string v1, "Best Live release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget v0, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->time:I

    if-eqz v0, :cond_0

    .line 954
    const-string v0, "BestLive"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Average time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->time:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const-string v0, "BestLive"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Average YUV to RGB = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->yuv2rgb:J

    iget v4, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->time:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const-string v0, "BestLive"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Average RGB to BMP = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->rgb2bmp:J

    iget v4, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->time:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const-string v0, "BestLive"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Average BMP to YUV = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->bmp2yuv:J

    iget v4, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->time:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const-string v0, "BestLive"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Average BMP to YUV = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->bmp2yuv:J

    iget v4, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->time:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    const-string v0, "BestLive"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Average totally cost time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->totally:J

    iget v4, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->time:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->time:I

    .line 964
    iput-wide v8, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->yuv2rgb:J

    .line 965
    iput-wide v8, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->rgb2bmp:J

    .line 966
    iput-wide v8, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->bmp2yuv:J

    .line 978
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 979
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v6}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 980
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 981
    iput-object v6, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontCamera:Landroid/hardware/Camera;

    .line 982
    const-string v0, "BestLive"

    const-string/jumbo v1, "release FRONT camera  done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mComposeManager:Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;->destory()V

    .line 992
    iput-object v6, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mComposeManager:Lcom/lenovo/scg/camera/mode/bestlive/FrontViewComposeManager;

    .line 994
    iput-object v6, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontSurfaceCallback:Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;

    .line 995
    const-string v0, "BestLive"

    const-string/jumbo v1, "release done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    return-void

    .line 961
    :cond_0
    const-string v0, "BestLive"

    const-string/jumbo v1, "time == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 984
    :cond_1
    const-string v0, "BestLive"

    const-string v1, "No FRONT camera preview callback to remove"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setSurfaceViewMargin(FF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/VideoMode;->getResolutionScaleValue()F

    move-result v0

    div-float/2addr p1, v0

    .line 1030
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/VideoMode;->getResolutionScaleValue()F

    move-result v0

    div-float/2addr p2, v0

    .line 1032
    const-string v0, "BestLive"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change margin of front camera surfaceView windows to: left = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and top = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iput p1, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mSurfaceViewLeftMargin:F

    .line 1036
    iput p2, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mSurfaceViewTopMargin:F

    .line 1037
    return-void
.end method
