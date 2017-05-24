.class public Lcom/lenovo/scg/camera/way/DetectParams;
.super Ljava/lang/Object;
.source "DetectParams.java"


# instance fields
.field public mFaceNum:I

.field public mFaceOritention:I

.field public mFaceRect:[Landroid/graphics/Rect;

.field public mSmileLevelArray:[I

.field public mVSignPosition:Landroid/graphics/Rect;

.field public mWavePosition:Landroid/graphics/Rect;

.field public mbBlinkDetected:Z

.field public mbProcessBlink:Z

.field public mbProcessSmile:Z

.field public mbProcessSmileLevel:Z

.field public mbProcessVSign:Z

.field public mbProcessWaveShot:Z

.field public mbSmileDetected:Z

.field public mbVSignDetected:Z

.field public mbWaveShotDetected:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcom/lenovo/scg/camera/way/DetectParams;->mFaceNum:I

    .line 16
    iput-object v1, p0, Lcom/lenovo/scg/camera/way/DetectParams;->mFaceRect:[Landroid/graphics/Rect;

    .line 18
    iput v0, p0, Lcom/lenovo/scg/camera/way/DetectParams;->mFaceOritention:I

    .line 21
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/DetectParams;->mbVSignDetected:Z

    .line 23
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/DetectParams;->mbProcessVSign:Z

    .line 26
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/DetectParams;->mbWaveShotDetected:Z

    .line 28
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/DetectParams;->mbProcessWaveShot:Z

    .line 30
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/DetectParams;->mbBlinkDetected:Z

    .line 31
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/DetectParams;->mbProcessBlink:Z

    .line 33
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/DetectParams;->mbSmileDetected:Z

    .line 34
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/DetectParams;->mbProcessSmile:Z

    .line 37
    iput-object v1, p0, Lcom/lenovo/scg/camera/way/DetectParams;->mSmileLevelArray:[I

    .line 38
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/DetectParams;->mbProcessSmileLevel:Z

    .line 41
    iput-object v1, p0, Lcom/lenovo/scg/camera/way/DetectParams;->mVSignPosition:Landroid/graphics/Rect;

    .line 44
    iput-object v1, p0, Lcom/lenovo/scg/camera/way/DetectParams;->mWavePosition:Landroid/graphics/Rect;

    return-void
.end method
