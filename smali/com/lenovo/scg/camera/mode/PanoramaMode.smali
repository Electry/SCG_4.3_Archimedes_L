.class public Lcom/lenovo/scg/camera/mode/PanoramaMode;
.super Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;
.source "PanoramaMode.java"

# interfaces
.implements Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub$PanoramaCallbackListener;
.implements Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub$PanoramaErrorCallbackListener;
.implements Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$OnNotifyListener;
.implements Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$onExpectedDirectionChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;,
        Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;
    }
.end annotation


# static fields
.field private static final DIRECTION_BOTTOM2TOP:I = 0x3

.field private static final DIRECTION_LEFT2RIGHT:I = 0x0

.field private static final DIRECTION_RIGHT2LEFT:I = 0x1

.field private static final DIRECTION_TOP2BOTTOM:I = 0x2

.field private static final DIRECTION_UNKNOW:I = -0x1

.field protected static final FIRST_SHOW_HINT:I = 0x66

.field private static final HIDEHINT:I = -0x1

.field protected static final HINT_TIMEOUT:I = 0x65

.field private static final LONGTIMESAMEFRAME:I = 0x1

.field protected static final NEW_FRAME_IN:I = 0x64

.field private static final PANORAMA_FLASH_MODE:Ljava/lang/String; = "off"

.field private static final SET_FLASH_STATE:I = 0x4

.field private static final SHOWHINT:I


# instance fields
.field private final PRVIEW_MASK:Z

.field private final TAG:Ljava/lang/String;

.field private mCallbackBufFormat:I

.field private mCaluateThread:Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;

.field private mContext:Landroid/content/Context;

.field private mEnviormentOK:Z

.field private mError:I

.field public mHandler:Landroid/os/Handler;

.field private mIsExiting:Z

.field private mIsLeft2Right:Z

.field private mIsTakePictureFinish:Z

.field private mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

.field private mModeStatus:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

.field private mMovingDirection:I

.field private mOnFilmModeChangeListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;

.field private mOrientationWhenCapture:I

.field private mPanoramaFinish:Z

.field private mPanoramaInputRotated:I

.field private mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPictureHeight:I

.field private mPictureWidth:I

.field private mThumbnailYUVHeight:I

.field private mThumbnailYUVLeft:I

.field private mThumbnailYUVTop:I

.field private mThumbnailYUVWidth:I

.field private mUIStatus:Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

.field private mWaitStop:Z

.field private orgMeteringStyle:Ljava/lang/String;

.field private orgPicSize:Ljava/lang/String;

.field private sameFrameCount:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;-><init>()V

    .line 61
    const-string v0, "PanoramaMode"

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->TAG:Ljava/lang/String;

    .line 63
    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    .line 65
    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    .line 67
    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mCaluateThread:Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;

    .line 69
    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mContext:Landroid/content/Context;

    .line 71
    iput v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mThumbnailYUVWidth:I

    .line 73
    iput v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mThumbnailYUVHeight:I

    .line 79
    iput v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPictureWidth:I

    .line 81
    iput v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPictureHeight:I

    .line 83
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaFinish:Z

    .line 93
    sget-object v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;->PRE_CAPTURE:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeStatus:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    .line 95
    sget-object v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;->FULLCAMERA:Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mUIStatus:Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

    .line 97
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mIsLeft2Right:Z

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mMovingDirection:I

    .line 126
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mEnviormentOK:Z

    .line 128
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mWaitStop:Z

    .line 132
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->PRVIEW_MASK:Z

    .line 134
    iput v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->sameFrameCount:I

    .line 136
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mIsTakePictureFinish:Z

    .line 152
    new-instance v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/mode/PanoramaMode$1;-><init>(Lcom/lenovo/scg/camera/mode/PanoramaMode;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mHandler:Landroid/os/Handler;

    .line 187
    new-instance v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/mode/PanoramaMode$2;-><init>(Lcom/lenovo/scg/camera/mode/PanoramaMode;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mOnFilmModeChangeListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;

    return-void
.end method

.method private ShowHintByStatus(I)V
    .locals 6
    .param p1, "error"    # I

    .prologue
    const/16 v5, 0x66

    const/16 v4, 0x65

    .line 795
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    if-nez v1, :cond_0

    .line 831
    :goto_0
    return-void

    .line 796
    :cond_0
    const/4 v0, 0x0

    .line 797
    .local v0, "str":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 819
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->showHint(Ljava/lang/String;)V

    .line 820
    if-eqz v0, :cond_1

    .line 821
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 822
    if-eqz p1, :cond_2

    .line 823
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 824
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 830
    :cond_1
    :goto_2
    iput p1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mError:I

    goto :goto_0

    .line 799
    :sswitch_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0095

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 800
    goto :goto_1

    .line 802
    :sswitch_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f009a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 803
    goto :goto_1

    .line 805
    :sswitch_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0096

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 806
    goto :goto_1

    .line 808
    :sswitch_3
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0097

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 809
    goto :goto_1

    .line 811
    :sswitch_4
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0098

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 812
    goto :goto_1

    .line 814
    :sswitch_5
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0099

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 815
    goto :goto_1

    .line 825
    :cond_2
    iget v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mError:I

    if-eqz v1, :cond_1

    .line 826
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x28

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 797
    :sswitch_data_0
    .sparse-switch
        -0x70fffff5 -> :sswitch_2
        -0x70fffff4 -> :sswitch_4
        -0x70fffff2 -> :sswitch_3
        -0x70fffff1 -> :sswitch_5
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/mode/PanoramaMode;[BZ)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/PanoramaMode;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->handleFrameData([BZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/mode/PanoramaMode;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/PanoramaMode;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->ShowHintByStatus(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/mode/PanoramaMode;)Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/PanoramaMode;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/mode/PanoramaMode;)Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/PanoramaMode;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeStatus:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/mode/PanoramaMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/PanoramaMode;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mIsLeft2Right:Z

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/mode/PanoramaMode;)Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/PanoramaMode;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/mode/PanoramaMode;Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/PanoramaMode;
    .param p1, "x1"    # Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->onUIStatusChange(Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;)V

    return-void
.end method

.method static synthetic access$702(Lcom/lenovo/scg/camera/mode/PanoramaMode;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/PanoramaMode;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mWaitStop:Z

    return p1
.end method

.method private enableContinuousCapture()V
    .locals 2

    .prologue
    .line 583
    const-string v0, "PanoramaMode"

    const-string v1, "enableContinuousCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->getSCFPanoramaModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->startContinousShot(Landroid/hardware/Camera$Parameters;)V

    .line 585
    :cond_0
    return-void
.end method

.method private getDimensOfResource(I)I
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 858
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private handleFrameData([BZ)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "bRestartPreview"    # Z

    .prologue
    const/16 v5, 0x5a

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 594
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    if-nez v0, :cond_2

    .line 595
    :cond_0
    const-string v0, "PanoramaMode"

    const-string v1, "before return it in handleFrameData"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_1
    :goto_0
    return-void

    .line 598
    :cond_2
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaFinish:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mWaitStop:Z

    if-eq v0, v4, :cond_3

    .line 599
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    iget v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mThumbnailYUVWidth:I

    iget v3, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mThumbnailYUVHeight:I

    iget v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mThumbnailYUVLeft:I

    iget v5, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mThumbnailYUVTop:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->upDatePreview([BIIII)V

    goto :goto_0

    .line 601
    :cond_3
    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mIsTakePictureFinish:Z

    if-nez v0, :cond_1

    .line 602
    const-string v0, "PanoramaMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "save result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPictureWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPictureHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    sget-object v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;->FINISHED:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->onModeStatusChanged(Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;)V

    .line 604
    iget v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPictureWidth:I

    if-eqz v0, :cond_4

    .line 605
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->getSCFPanoramaModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->getBufFormatOnTakenPic()I

    move-result v0

    if-eqz v0, :cond_5

    .line 606
    const-string v0, "PanoramaMode"

    const-string/jumbo v1, "update preview final image format is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_4
    :goto_1
    sget-object v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;->PRE_CAPTURE:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->onModeStatusChanged(Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;)V

    goto :goto_0

    .line 610
    :cond_5
    const-string/jumbo v0, "panhui10"

    const-string/jumbo v1, "to save panor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    new-instance v6, Lcom/lenovo/scg/camera/MediaSavePara;

    invoke-direct {v6}, Lcom/lenovo/scg/camera/MediaSavePara;-><init>()V

    .line 614
    .local v6, "para":Lcom/lenovo/scg/camera/MediaSavePara;
    iput-object p1, v6, Lcom/lenovo/scg/camera/MediaSavePara;->data:[B

    .line 615
    iget v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPictureWidth:I

    iput v0, v6, Lcom/lenovo/scg/camera/MediaSavePara;->width:I

    .line 616
    iget v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPictureHeight:I

    iput v0, v6, Lcom/lenovo/scg/camera/MediaSavePara;->height:I

    .line 617
    iget v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaInputRotated:I

    if-ne v0, v4, :cond_7

    .line 618
    iput v3, v6, Lcom/lenovo/scg/camera/MediaSavePara;->orientation:I

    .line 628
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v0, v6}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->modeMediaSave(Lcom/lenovo/scg/camera/MediaSavePara;)V

    goto :goto_1

    .line 620
    :cond_7
    iget v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaInputRotated:I

    if-nez v0, :cond_6

    .line 621
    iget v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mOrientationWhenCapture:I

    if-ne v0, v5, :cond_8

    .line 622
    const/16 v0, 0xb4

    iput v0, v6, Lcom/lenovo/scg/camera/MediaSavePara;->orientation:I

    goto :goto_2

    .line 623
    :cond_8
    iget v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mOrientationWhenCapture:I

    if-nez v0, :cond_9

    .line 624
    iput v5, v6, Lcom/lenovo/scg/camera/MediaSavePara;->orientation:I

    goto :goto_2

    .line 625
    :cond_9
    iget v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mOrientationWhenCapture:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_6

    .line 626
    iput v3, v6, Lcom/lenovo/scg/camera/MediaSavePara;->orientation:I

    goto :goto_2
.end method

.method private initialValues()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 875
    iput v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mThumbnailYUVWidth:I

    .line 876
    iput v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mThumbnailYUVHeight:I

    .line 877
    iput v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mThumbnailYUVLeft:I

    .line 878
    iput v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mThumbnailYUVTop:I

    .line 879
    iput v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPictureWidth:I

    .line 880
    iput v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPictureHeight:I

    .line 881
    iput v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->sameFrameCount:I

    .line 882
    return-void
.end method

.method private onModeStatusChanged(Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;)V
    .locals 7
    .param p1, "status"    # Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 275
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeStatus:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    if-ne p1, v1, :cond_0

    .line 351
    :goto_0
    return-void

    .line 276
    :cond_0
    sget-object v1, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;->PRE_CAPTURE:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    if-ne p1, v1, :cond_4

    .line 278
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->setPreviewTextureShow(Z)V

    .line 280
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    const v2, 0x7f09030c

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->getDimensOfResource(I)I

    move-result v2

    const v3, 0x7f09030e

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->getDimensOfResource(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->setPreviewViewSize(II)V

    .line 282
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v1, v6}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->setClipRatio(F)V

    .line 283
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v1, v6}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->setClipRatioH(F)V

    .line 284
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->initialValues()V

    .line 285
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    const/16 v2, 0x1e

    sget v3, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->setPreviewViewCenterPointInScreen(II)V

    .line 286
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->restoreLayoutAfterCapture()V

    .line 287
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->get2DView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 288
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->setPreviewBarClickable(Z)V

    .line 289
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->needDrawPreviewTexture(Z)V

    .line 291
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->updateThumbnail()V

    .line 292
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->restoreShutterButton()V

    .line 299
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "developer_setting_panorama_ex_lock_key"

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, v5, :cond_2

    .line 300
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mIsExiting:Z

    if-nez v1, :cond_2

    .line 301
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v1, v4}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->setAutoWhiteBalanceLock(Z)V

    .line 302
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v1, v4}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->setAutoExposureLock(Z)V

    .line 305
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mCaluateThread:Lcom/lenovo/scg/camera/mode/ui/PanoramaFrameDataCaluateThread;

    .line 306
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 308
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->enableContinuousCapture()V

    .line 309
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    const-wide/16 v4, 0x28

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 350
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeStatus:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    goto/16 :goto_0

    .line 310
    :cond_4
    sget-object v1, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;->CAPTUREING:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    if-ne p1, v1, :cond_7

    .line 311
    new-array v0, v5, [I

    const v1, 0x7f10015f

    aput v1, v0, v4

    .line 312
    .local v0, "exclude":[I
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->clearUIScreen([I)V

    .line 313
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "developer_setting_panorama_ex_lock_key"

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, v5, :cond_5

    .line 314
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v1, v5}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->setAutoWhiteBalanceLock(Z)V

    .line 315
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v1, v5}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->setAutoExposureLock(Z)V

    .line 317
    :cond_5
    invoke-static {v4}, Lcom/lenovo/scg/camera/CameraUtil;->enableScroll(Z)V

    .line 320
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mIsTakePictureFinish:Z

    .line 321
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaFinish:Z

    .line 322
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    if-eqz v1, :cond_6

    .line 323
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->saveLayoutPostionBeforeCapture()V

    .line 324
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->setPreviewBarClickable(Z)V

    .line 325
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    div-int/lit8 v2, v2, 0x8

    sget v3, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->initPreviewContainer(II)V

    .line 328
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->updateShutterButton(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 329
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->ShowHintByStatus(I)V

    .line 330
    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->setExposure(Z)V

    goto :goto_1

    .line 331
    .end local v0    # "exclude":[I
    :cond_7
    sget-object v1, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;->FINISHED:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    if-ne p1, v1, :cond_a

    .line 332
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mIsExiting:Z

    if-nez v1, :cond_8

    .line 333
    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->setExposure(Z)V

    .line 335
    :cond_8
    invoke-static {v5}, Lcom/lenovo/scg/camera/CameraUtil;->enableScroll(Z)V

    .line 336
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 337
    .restart local v0    # "exclude":[I
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->clearUIScreen([I)V

    .line 339
    :cond_9
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mIsTakePictureFinish:Z

    .line 340
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->stopLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 341
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    if-eqz v1, :cond_3

    .line 342
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->deinitPreviewContainer()V

    .line 343
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->setPreviewTextureShow(Z)V

    .line 344
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->needDrawPreviewTexture(Z)V

    .line 345
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->get2DView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 348
    .end local v0    # "exclude":[I
    :cond_a
    const-string v1, "PanoramaMode"

    const-string/jumbo v2, "onModeStatusChanged Not defined"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 336
    nop

    :array_0
    .array-data 4
        0x7f10015f
        0x7f100764
        0x7f10015c
    .end array-data
.end method

.method private onUIStatusChange(Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;)V
    .locals 5
    .param p1, "status"    # Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 246
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mUIStatus:Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

    if-ne p1, v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    sget-object v1, Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;->FULLCAMERA:Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

    if-ne p1, v1, :cond_3

    .line 249
    sget-object v1, Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;->FULLCAMERA:Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mUIStatus:Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

    .line 250
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 251
    .local v0, "exclude":[I
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    if-eqz v1, :cond_2

    .line 252
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->clearUIScreen([I)V

    .line 253
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->getCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;->TargetFbo:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraScreenNail;->SetDrawTarget(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;)V

    .line 255
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->get2DView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->setPreviewViewVisibility(I)V

    .line 257
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->showPreviewBar()V

    .line 258
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->needDrawHintBG(Z)V

    .line 259
    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->ShowHintByStatus(I)V

    goto :goto_0

    .line 260
    .end local v0    # "exclude":[I
    :cond_3
    sget-object v1, Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;->PICTUREFILM:Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

    if-ne p1, v1, :cond_4

    .line 261
    sget-object v1, Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;->PICTUREFILM:Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mUIStatus:Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

    .line 262
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->getCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;->TargetScreen:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraScreenNail;->SetDrawTarget(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;)V

    .line 263
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->get2DView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->setPreviewViewVisibility(I)V

    .line 265
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->hidePreviewBar()V

    .line 266
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->needDrawHintBG(Z)V

    .line 267
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->ShowHintByStatus(I)V

    .line 268
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->animQuick(Z)V

    goto :goto_0

    .line 270
    :cond_4
    const-string v1, "PanoramaMode"

    const-string/jumbo v2, "onUIStatusChange Not defined"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 250
    :array_0
    .array-data 4
        0x7f10015f
        0x7f100764
        0x7f10015c
    .end array-data
.end method

.method private setExposure(Z)V
    .locals 4
    .param p1, "change"    # Z

    .prologue
    .line 862
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v0

    .line 863
    .local v0, "exValue":I
    const-string v1, "PanoramaMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    if-eqz p1, :cond_0

    .line 865
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 870
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    .line 871
    const-string v1, "PanoramaMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    return-void

    .line 868
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    goto :goto_0
.end method

.method private stopContinuousCapture()V
    .locals 2

    .prologue
    .line 588
    const-string v0, "PanoramaMode"

    const-string/jumbo v1, "stopContinuousCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->getSCFPanoramaModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->breakContinuousShot(Landroid/hardware/Camera$Parameters;)V

    .line 590
    :cond_0
    return-void
.end method

.method private updateEnviorment(Z)V
    .locals 5
    .param p1, "enter"    # Z

    .prologue
    .line 554
    iget-boolean v3, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mEnviormentOK:Z

    if-ne p1, v3, :cond_1

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v3, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    .line 559
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    if-eqz v3, :cond_2

    .line 560
    if-eqz p1, :cond_3

    .line 561
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->getSCFPanoramaModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;

    move-result-object v2

    .line 562
    .local v2, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->getSupportZSD()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mIsSupportZSD:Z

    .line 563
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 564
    .local v0, "para":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->enter(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 565
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mOnFilmModeChangeListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;

    invoke-interface {v3, v4}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->setOnFilmModeChangeListener(Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;)V

    .line 566
    invoke-virtual {v2, p0}, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->setListener(Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub$PanoramaCallbackListener;)V

    .line 567
    invoke-virtual {v2, p0}, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->setErrorListener(Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub$PanoramaErrorCallbackListener;)V

    .line 568
    invoke-virtual {v2, p0}, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->setOnNotifyListener(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$OnNotifyListener;)V

    .line 579
    .end local v0    # "para":Landroid/hardware/Camera$Parameters;
    .end local v2    # "stub":Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;
    :cond_2
    :goto_1
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mEnviormentOK:Z

    goto :goto_0

    .line 570
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->getSCFPanoramaModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;

    move-result-object v2

    .line 571
    .restart local v2    # "stub":Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 572
    .local v1, "param":Landroid/hardware/Camera$Parameters;
    if-eqz v1, :cond_0

    .line 575
    invoke-static {}, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->getInstance()Lcom/lenovo/scg/camera/monitor/ParametersMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->recordOnPictureTaken()V

    .line 576
    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->exit(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mParameters:Landroid/hardware/Camera$Parameters;

    goto :goto_1
.end method


# virtual methods
.method public OnDebugNotify(I)V
    .locals 3
    .param p1, "notify"    # I

    .prologue
    .line 537
    const-string v0, "PanoramaMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExFeature.LESCF_MSGTYPE_NORMAL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 539
    iput p1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mCallbackBufFormat:I

    .line 540
    :cond_0
    return-void
.end method

.method public OnPanoramaErrorNotify(I)Z
    .locals 7
    .param p1, "error"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, -0x1

    .line 670
    const/4 v0, -0x1

    .line 671
    .local v0, "nTmp":I
    invoke-static {p1}, Lcom/lenovo/scg/exfeature/ExFeature;->getMsgType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 791
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 673
    :pswitch_1
    packed-switch p1, :pswitch_data_1

    .line 697
    :pswitch_2
    const v1, -0x70fffffa

    if-le p1, v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Base warning "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_0

    .line 675
    :pswitch_3
    const-string v1, "PanoramaMode"

    const-string v4, "LeFeature msg: LESCF_MSG_NOTIFY_WHOLE_AREA_COMPLETE mWaitStop set true"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mWaitStop:Z

    .line 678
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->animQuick(Z)V

    goto :goto_0

    .line 681
    :pswitch_4
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->animQuick(Z)V

    .line 682
    :cond_1
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->ShowHintByStatus(I)V

    goto :goto_0

    .line 685
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->ShowHintByStatus(I)V

    goto :goto_0

    .line 688
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->ShowHintByStatus(I)V

    goto :goto_0

    .line 691
    :pswitch_7
    const-string v1, "PanoramaMode"

    const-string v4, "LeFeature msg: LESCF_MSG_NOTIFY_WARNING_WRONG_DIRECTION mWaitStop set true"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->ShowHintByStatus(I)V

    .line 693
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mWaitStop:Z

    .line 694
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaFinish:Z

    goto :goto_0

    .line 702
    :pswitch_8
    invoke-static {p1}, Lcom/lenovo/scg/exfeature/ExFeature;->getPanoramaRotation(I)I

    move-result v0

    .line 703
    if-le v0, v6, :cond_0

    .line 704
    const-string v1, "PanoramaMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LeFeature msg: getPanoramaRotation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iput v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaInputRotated:I

    goto :goto_0

    .line 710
    :pswitch_9
    invoke-static {p1}, Lcom/lenovo/scg/exfeature/ExFeature;->getThumbnailWidth(I)I

    move-result v0

    .line 711
    if-le v0, v6, :cond_2

    .line 712
    const-string v1, "PanoramaMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LeFeature msg: mThumbnailWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 715
    :cond_2
    invoke-static {p1}, Lcom/lenovo/scg/exfeature/ExFeature;->getThumbnailHeight(I)I

    move-result v0

    .line 716
    if-le v0, v6, :cond_3

    .line 717
    const-string v1, "PanoramaMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LeFeature msg: mThumbnailHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 720
    :cond_3
    invoke-static {p1}, Lcom/lenovo/scg/exfeature/ExFeature;->getThumbnailYuvWidth(I)I

    move-result v0

    .line 721
    if-le v0, v6, :cond_4

    .line 722
    const-string v1, "PanoramaMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LeFeature msg: mThumbnailYuvWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iput v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mThumbnailYUVWidth:I

    goto/16 :goto_0

    .line 726
    :cond_4
    invoke-static {p1}, Lcom/lenovo/scg/exfeature/ExFeature;->getThumbnailYuvHeight(I)I

    move-result v0

    .line 727
    if-le v0, v6, :cond_5

    .line 728
    iput v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mThumbnailYUVHeight:I

    goto/16 :goto_0

    .line 731
    :cond_5
    invoke-static {p1}, Lcom/lenovo/scg/exfeature/ExFeature;->getThumbnailOffsetMinusX(I)I

    move-result v0

    .line 732
    if-le v0, v6, :cond_6

    .line 733
    const-string v1, "PanoramaMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LeFeature msg: mThumbnailOffsetX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    neg-int v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 736
    :cond_6
    invoke-static {p1}, Lcom/lenovo/scg/exfeature/ExFeature;->getThumbnailOffsetPlusX(I)I

    move-result v0

    .line 737
    if-le v0, v6, :cond_7

    .line 738
    const-string v1, "PanoramaMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LeFeature msg: mThumbnailOffsetX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iput v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mThumbnailYUVLeft:I

    goto/16 :goto_0

    .line 742
    :cond_7
    invoke-static {p1}, Lcom/lenovo/scg/exfeature/ExFeature;->getThumbnailOffsetMinusY(I)I

    move-result v0

    .line 743
    if-le v0, v6, :cond_8

    .line 744
    const-string v1, "PanoramaMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LeFeature msg: mThumbnailOffsetY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    neg-int v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 747
    :cond_8
    invoke-static {p1}, Lcom/lenovo/scg/exfeature/ExFeature;->getThumbnailOffsetPlusY(I)I

    move-result v0

    .line 748
    if-le v0, v6, :cond_9

    .line 749
    const-string v1, "PanoramaMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LeFeature msg: mThumbnailOffsetY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iput v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mThumbnailYUVTop:I

    goto/16 :goto_0

    .line 753
    :cond_9
    invoke-static {p1}, Lcom/lenovo/scg/exfeature/ExFeature;->getMovingDirection(I)I

    move-result v0

    .line 754
    if-lt v0, v6, :cond_0

    .line 755
    const-string v1, "PanoramaMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LeFeature msg: MovingDirection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iput v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mMovingDirection:I

    .line 757
    iget v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaInputRotated:I

    if-ne v1, v3, :cond_b

    .line 758
    iget v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mMovingDirection:I

    if-eq v1, v6, :cond_0

    iget v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mMovingDirection:I

    iget-boolean v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mIsLeft2Right:Z

    if-eqz v1, :cond_a

    move v1, v2

    :goto_1
    if-eq v4, v1, :cond_0

    .line 759
    const-string v1, "PanoramaMode"

    const-string v4, "Wrong Direction mWaitStop set true"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mWaitStop:Z

    .line 761
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaFinish:Z

    goto/16 :goto_0

    :cond_a
    move v1, v3

    .line 758
    goto :goto_1

    .line 763
    :cond_b
    iget v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaInputRotated:I

    if-nez v1, :cond_0

    .line 764
    iget v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mMovingDirection:I

    if-eq v1, v6, :cond_0

    iget v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mMovingDirection:I

    iget-boolean v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mIsLeft2Right:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x3

    :goto_2
    if-eq v4, v1, :cond_0

    .line 765
    const-string v1, "PanoramaMode"

    const-string v4, "Wrong Direction mWaitStop set true"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mWaitStop:Z

    .line 767
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaFinish:Z

    goto/16 :goto_0

    .line 764
    :cond_c
    const/4 v1, 0x2

    goto :goto_2

    .line 774
    :pswitch_a
    invoke-static {p1}, Lcom/lenovo/scg/exfeature/ExFeature;->getPictureWidth(I)I

    move-result v0

    .line 775
    if-le v0, v6, :cond_d

    .line 776
    iput v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPictureWidth:I

    .line 777
    const-string v1, "PanoramaMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LeFeature msg: getPictureWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 780
    :cond_d
    invoke-static {p1}, Lcom/lenovo/scg/exfeature/ExFeature;->getPictureHeight(I)I

    move-result v0

    .line 781
    if-le v0, v6, :cond_0

    .line 782
    iput v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPictureHeight:I

    .line 783
    const-string v1, "PanoramaMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LeFeature msg: getPictureHeight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaFinish:Z

    goto/16 :goto_0

    .line 671
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 673
    :pswitch_data_1
    .packed-switch -0x70fffff5
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_3
    .end packed-switch
.end method

.method public OnPanoramaPictureTaken([BZ)Z
    .locals 6
    .param p1, "data"    # [B
    .param p2, "bRestartPreview"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 641
    const-string v3, "PanoramaMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnPanoramaPictureTaken bRestartPreview "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mWaitStop "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mWaitStop:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-boolean v3, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mWaitStop:Z

    if-eqz v3, :cond_0

    .line 647
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->stopContinuousCapture()V

    .line 648
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->startLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Z)V

    .line 649
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mWaitStop:Z

    .line 652
    :cond_0
    if-nez p1, :cond_2

    .line 653
    const-string v1, "PanoramaMode"

    const-string v3, "here data is null,then return it"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_1
    :goto_0
    return v2

    .line 657
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 658
    .local v0, "msg":Landroid/os/Message;
    const/16 v3, 0x64

    iput v3, v0, Landroid/os/Message;->what:I

    .line 659
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 660
    if-eqz p2, :cond_3

    move v1, v2

    :cond_3
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 661
    const-string v1, "PanoramaMode"

    const-string v3, "before send message new_frame_in"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public clearScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 396
    return-void
.end method

.method protected enter(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 414
    const-string v4, "PanoramaMode"

    const-string v5, "enter"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;->enter(Landroid/content/Context;)V

    .line 416
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mContext:Landroid/content/Context;

    .line 417
    invoke-direct {p0, v9}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->updateEnviorment(Z)V

    .line 419
    const/4 v4, 0x3

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    .line 420
    .local v0, "exclude":[I
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v4, v0}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->clearUIScreen([I)V

    .line 422
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v4, v8}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->setFaceIndicatorVisiable(Z)V

    .line 424
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v4, v8}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->setScaleSupported(Z)V

    .line 432
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    check-cast v4, Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v4

    const-string v5, "camera_setting_flash_key"

    const-string v6, "auto"

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mFlashStatusSave:Ljava/lang/String;

    .line 434
    const-string v4, "PanoramaMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FlashStatusSave "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mFlashStatusSave:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    check-cast v4, Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/PhotoModule;->getFocusOverlayManager()Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->updateFocusGroupWithoutSetPara()V

    .line 439
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 444
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    check-cast v4, Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/PhotoModule;->stopFaceDetection()V

    .line 448
    sget-object v4, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->PSIZE_16_9:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    const/16 v5, 0x10e0

    invoke-static {v8, v4, v5}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->getSuitePictureSizeBelowMaxWidth(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;I)Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 452
    .local v3, "s":Landroid/hardware/Camera$Size;
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 454
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->setGLRootToSurfaceScreenNail()V

    .line 456
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->getCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v4

    sget-object v5, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;->TargetFbo:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/CameraScreenNail;->SetDrawTarget(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;)V

    .line 458
    new-instance v4, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-direct {v4, p1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    .line 459
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v4, p1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->init(Landroid/content/Context;)V

    .line 460
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 461
    .local v2, "mSize":Landroid/hardware/Camera$Size;
    const-string v4, "PanoramaMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPreviewSize "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->is16v9(Landroid/hardware/Camera$Size;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->setIs16v9(Z)V

    .line 463
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->getCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->setScreenNail(Lcom/lenovo/scg/camera/CameraScreenNail;)V

    .line 464
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v4, p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->setExpectedDirectionChangedListener(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$onExpectedDirectionChangedListener;)V

    .line 465
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->getWindow()Lcom/lenovo/scg/gallery3d/ui/GLView;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->setCameraOverlayGLView(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 467
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 468
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->get2DView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->addModeRootView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->get2DView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v4}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 470
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->get2DView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 471
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v4, v8}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->setPreviewViewVisibility(I)V

    .line 472
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->showPreviewBar()V

    .line 473
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v4, v9}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->setIsLeft2Right(Z)V

    .line 475
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getOrientation()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->setOrientation(I)V

    .line 477
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v4, v9}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->needDrawHintBG(Z)V

    .line 478
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x66

    const-wide/16 v6, 0x28

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 479
    return-void

    .line 419
    :array_0
    .array-data 4
        0x7f10015f
        0x7f100764
        0x7f10015c
    .end array-data
.end method

.method protected exit()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 484
    const-string v2, "PanoramaMode"

    const-string v3, "exit"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mIsExiting:Z

    .line 486
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeStatus:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    sget-object v3, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;->CAPTUREING:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    if-ne v2, v3, :cond_0

    .line 487
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->stopContinuousCapture()V

    .line 488
    sget-object v2, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;->FINISHED:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->onModeStatusChanged(Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;)V

    .line 489
    sget-object v2, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;->PRE_CAPTURE:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->onModeStatusChanged(Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;)V

    .line 492
    :cond_0
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->ShowHintByStatus(I)V

    .line 493
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    if-eqz v2, :cond_1

    .line 494
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->needDrawPreviewTexture(Z)V

    .line 495
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->hidePreviewBar()V

    .line 496
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->get2DView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->removeModeRootView(Landroid/view/View;)V

    .line 498
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v2, v4}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->setScaleSupported(Z)V

    .line 499
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->removeCameraOverlayGLView()V

    .line 500
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->getCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;->TargetScreen:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/CameraScreenNail;->SetDrawTarget(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;)V

    .line 502
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->clearCurrentMode()V

    .line 503
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->release()V

    .line 504
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    .line 505
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v2, v4}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->setFaceIndicatorVisiable(Z)V

    .line 507
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    check-cast v0, Lcom/lenovo/scg/camera/PhotoController;

    .line 508
    .local v0, "pc":Lcom/lenovo/scg/camera/PhotoController;
    invoke-interface {v0}, Lcom/lenovo/scg/camera/PhotoController;->getCameraState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 510
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->getSCFPanoramaModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;

    move-result-object v1

    .line 511
    .local v1, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->reset()V

    .line 512
    const-string/jumbo v2, "snap shot in progress, will not call stub.exit"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 532
    .end local v1    # "stub":Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;
    :goto_0
    return-void

    .line 516
    :cond_3
    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->updateEnviorment(Z)V

    .line 518
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;->exit()V

    .line 520
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mIsTakePictureFinish:Z

    if-eqz v2, :cond_4

    .line 524
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 525
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mFlashStatusSave:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setFlash(Ljava/lang/String;)V

    .line 528
    :cond_4
    invoke-static {v4}, Lcom/lenovo/scg/camera/CameraUtil;->enableScroll(Z)V

    .line 529
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mIsExiting:Z

    .line 531
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    check-cast v2, Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/PhotoModule;->startFaceDetection()V

    goto :goto_0
.end method

.method protected getLeSCFBaseModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;
    .locals 2

    .prologue
    .line 226
    const-string v0, "PanoramaMode"

    const-string v1, "getLeSCFBaseModeStub"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->getSCFPanoramaModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;

    move-result-object v0

    return-object v0
.end method

.method public getZSDStatus()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    .locals 2

    .prologue
    .line 546
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v1, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    .line 547
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->getSCFPanoramaModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;

    move-result-object v0

    .line 548
    .local v0, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/lescf/LeSCFPanoramaModeStub;->getSupportZSD()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mIsSupportZSD:Z

    .line 550
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;->getZSDStatus()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    move-result-object v1

    return-object v1
.end method

.method public isTakePictureFinish()Z
    .locals 1

    .prologue
    .line 854
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mIsTakePictureFinish:Z

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->exit()V

    .line 408
    sget-boolean v0, Lcom/lenovo/scg/camera/CameraUtil;->mIsModeButton:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onExpectedDirectionChanged(Z)V
    .locals 4
    .param p1, "left2right"    # Z

    .prologue
    const/4 v3, 0x1

    .line 836
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mIsLeft2Right:Z

    .line 837
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->setPreviewTextureShow(Z)V

    .line 839
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->setIsLeft2Right(Z)V

    .line 840
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    const/16 v1, 0x1e

    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->setPreviewViewCenterPointInScreen(II)V

    .line 841
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->needDrawHintBG(Z)V

    .line 843
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 356
    const-string v0, "PanoramaMode"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    sget-object v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;->PICTUREFILM:Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->onUIStatusChange(Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;)V

    .line 358
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeStatus:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    sget-object v1, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;->CAPTUREING:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    if-ne v0, v1, :cond_0

    .line 359
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->stopContinuousCapture()V

    .line 360
    sget-object v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;->FINISHED:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->onModeStatusChanged(Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;)V

    .line 362
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->updateEnviorment(Z)V

    .line 363
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->saveLayoutPostionBeforeCapture()V

    .line 364
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 369
    const-string v0, "PanoramaMode"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 371
    sget-object v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;->FULLCAMERA:Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->onUIStatusChange(Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;)V

    .line 372
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->updateEnviorment(Z)V

    .line 373
    sget-object v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;->PRE_CAPTURE:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->onModeStatusChanged(Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;)V

    .line 374
    return-void
.end method

.method public onShutterButtonClick()Z
    .locals 3

    .prologue
    .line 233
    const-string v0, "PanoramaMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onShutterButtonClick mModeStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeStatus:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeStatus:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    sget-object v1, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;->PRE_CAPTURE:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    if-ne v0, v1, :cond_1

    .line 236
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/PanoramaModeController;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mOrientationWhenCapture:I

    .line 237
    sget-object v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;->CAPTUREING:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->onModeStatusChanged(Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;)V

    .line 242
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeStatus:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    sget-object v1, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;->CAPTUREING:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    if-ne v0, v1, :cond_0

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mWaitStop:Z

    goto :goto_0
.end method

.method public onStartChangeExpectedDirection()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 848
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->setPreviewTextureShow(Z)V

    .line 849
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->needDrawHintBG(Z)V

    .line 850
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 379
    const-string v0, "PanoramaMode"

    const-string v1, "Pause"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mWaitStop:Z

    .line 381
    sget-object v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;->PICTUREFILM:Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->onUIStatusChange(Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;)V

    .line 382
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 387
    const-string v0, "PanoramaMode"

    const-string v1, "Resume"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mWaitStop:Z

    .line 389
    sget-object v0, Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;->FULLCAMERA:Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->onUIStatusChange(Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;)V

    .line 390
    return-void
.end method

.method public setOrientation(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 208
    const-string v0, "PanoramaMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOrientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;->setOrientation(I)V

    .line 211
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mPanoramaModeUI:Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->setOriention(I)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mModeStatus:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    sget-object v1, Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;->CAPTUREING:Lcom/lenovo/scg/camera/mode/PanoramaMode$ModeStatus;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mOrientationWhenCapture:I

    if-eq v0, p1, :cond_1

    .line 216
    const-string v0, "PanoramaMode"

    const-string v1, "Orientation has been changed when capturing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mWaitStop:Z

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/PanoramaMode;->mUIStatus:Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

    sget-object v1, Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;->FULLCAMERA:Lcom/lenovo/scg/camera/mode/PanoramaMode$UIStatus;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/PanoramaMode;->ShowHintByStatus(I)V

    .line 221
    :cond_2
    return-void
.end method

.method public showScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 402
    return-void
.end method
