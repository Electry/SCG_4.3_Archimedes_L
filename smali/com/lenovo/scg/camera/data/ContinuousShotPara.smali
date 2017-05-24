.class public Lcom/lenovo/scg/camera/data/ContinuousShotPara;
.super Ljava/lang/Object;
.source "ContinuousShotPara.java"


# instance fields
.field public am:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$ANIM_MODE;

.field public format:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

.field public mCacheFlag:Z

.field public mCount:I

.field public mDelayTime:J

.field public mHandlerOnEnd:Landroid/os/Handler;

.field public mIsOneShot:Z

.field public msgOnEnd:I

.field public shotMode:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v2, p0, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mCount:I

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mDelayTime:J

    .line 15
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mIsOneShot:Z

    .line 17
    sget-object v0, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;->FORMAT_JEPG:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

    iput-object v0, p0, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->format:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

    .line 19
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mCacheFlag:Z

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mHandlerOnEnd:Landroid/os/Handler;

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->msgOnEnd:I

    .line 25
    sget-object v0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$ANIM_MODE;->AUTO_PLAY:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$ANIM_MODE;

    iput-object v0, p0, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->am:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$ANIM_MODE;

    .line 27
    sget-object v0, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;->MODE_NORMAL:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    iput-object v0, p0, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->shotMode:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    return-void
.end method
