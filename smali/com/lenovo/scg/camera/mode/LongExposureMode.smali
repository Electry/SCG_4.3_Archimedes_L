.class public Lcom/lenovo/scg/camera/mode/LongExposureMode;
.super Lcom/lenovo/scg/camera/mode/CaptureMode;
.source "LongExposureMode.java"


# instance fields
.field private mModeController:Lcom/lenovo/scg/camera/mode/controller/LongExposureController;

.field private mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

.field nCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/LongExposureMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/LongExposureController;

    .line 23
    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/LongExposureMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/LongExposureMode;->nCount:I

    return-void
.end method


# virtual methods
.method public clearScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 133
    return-void
.end method

.method protected enter(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->enter(Landroid/content/Context;)V

    .line 30
    const-string v2, "enter LongExposureMode"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 32
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/LongExposureMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v2, Lcom/lenovo/scg/camera/mode/controller/LongExposureController;

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/LongExposureMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/LongExposureController;

    .line 33
    const/4 v2, 0x3

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 34
    .local v0, "exclude":[I
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/LongExposureMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/LongExposureController;

    invoke-interface {v2, v0}, Lcom/lenovo/scg/camera/mode/controller/LongExposureController;->clearUIScreen([I)V

    .line 38
    new-instance v2, Lcom/lenovo/scg/camera/ContinuousShotTool;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/LongExposureMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-direct {v2, v3}, Lcom/lenovo/scg/camera/ContinuousShotTool;-><init>(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/LongExposureMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 39
    new-instance v1, Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    invoke-direct {v1}, Lcom/lenovo/scg/camera/data/ContinuousShotPara;-><init>()V

    .line 40
    .local v1, "para":Lcom/lenovo/scg/camera/data/ContinuousShotPara;
    sget-object v2, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;->FORMAT_JEPG:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

    iput-object v2, v1, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->format:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

    .line 41
    const/16 v2, 0xa

    iput v2, v1, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mCount:I

    .line 42
    const-wide/16 v2, 0x190

    iput-wide v2, v1, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mDelayTime:J

    .line 43
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/LongExposureMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/ContinuousShotTool;->init(Lcom/lenovo/scg/camera/data/ContinuousShotPara;)V

    .line 45
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/LongExposureMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getSupportZSD()Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/LongExposureMode;->mIsSupportZSD:Z

    .line 46
    return-void

    .line 33
    nop

    :array_0
    .array-data 4
        0x7f10015f
        0x7f100764
        0x7f10015c
    .end array-data
.end method

.method protected exit()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->exit()V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/LongExposureMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/LongExposureMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->uninit()Z

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/LongExposureMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 61
    :cond_0
    return-void
.end method

.method public isTakePictureFinish()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/LongExposureMode;->exit()V

    .line 145
    sget-boolean v0, Lcom/lenovo/scg/camera/CameraUtil;->mIsModeButton:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public onPictureTaken([BLandroid/location/Location;)Z
    .locals 3
    .param p1, "jpegData"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 76
    const-string/jumbo v1, "onPictureTaken "

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 78
    iget v1, p0, Lcom/lenovo/scg/camera/mode/LongExposureMode;->nCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/camera/mode/LongExposureMode;->nCount:I

    .line 79
    iget v1, p0, Lcom/lenovo/scg/camera/mode/LongExposureMode;->nCount:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    .line 80
    const/4 v1, 0x0

    iput v1, p0, Lcom/lenovo/scg/camera/mode/LongExposureMode;->nCount:I

    .line 82
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/LongExposureMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/LongExposureController;

    check-cast v0, Lcom/lenovo/scg/camera/PhotoModule;

    .line 87
    .local v0, "pc":Lcom/lenovo/scg/camera/PhotoModule;
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/LongExposureMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ContinuousShotTool;->reset()V

    .line 89
    const-string/jumbo v1, "uninit end "

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 93
    .end local v0    # "pc":Lcom/lenovo/scg/camera/PhotoModule;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 112
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 113
    .local v0, "exclude":[I
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/LongExposureMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/LongExposureController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/mode/controller/LongExposureController;->clearUIScreen([I)V

    .line 114
    return-void

    .line 112
    :array_0
    .array-data 4
        0x7f10015f
        0x7f100764
        0x7f10015c
    .end array-data
.end method

.method public onShutterButtonClick()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 125
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 126
    .local v0, "exclude":[I
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/LongExposureMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/LongExposureController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/mode/controller/LongExposureController;->clearUIScreen([I)V

    .line 127
    return-void

    .line 125
    :array_0
    .array-data 4
        0x7f10015f
        0x7f100764
        0x7f10015c
    .end array-data
.end method

.method public showScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 139
    return-void
.end method
