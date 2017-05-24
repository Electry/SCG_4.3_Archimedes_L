.class Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$2;
.super Ljava/lang/Object;
.source "FrontBeautyCameraMode.java"

# interfaces
.implements Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$2;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleFailed(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 225
    const-string v0, "FrontBeautyCameraMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFailed, e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$2;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    # getter for: Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->access$000(Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;)Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$2;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->stopLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 228
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setAllowWayCapture(ZZ)V

    .line 229
    return-void
.end method

.method public handleStart()V
    .locals 2

    .prologue
    .line 203
    const-string v0, "FrontBeautyCameraMode"

    const-string v1, "handleStart."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void
.end method

.method public bridge synthetic handleSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 199
    check-cast p1, [B

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$2;->handleSuccess([B)V

    return-void
.end method

.method public handleSuccess([B)V
    .locals 4
    .param p1, "resultData"    # [B

    .prologue
    .line 208
    const-string v2, "FrontBeautyCameraMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSuccess, result = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v0, Lcom/lenovo/scg/camera/MediaSavePara;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/MediaSavePara;-><init>()V

    .line 211
    .local v0, "para":Lcom/lenovo/scg/camera/MediaSavePara;
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$2;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    # getter for: Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->access$000(Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;)Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getmLocationManager()Lcom/lenovo/scg/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/scg/camera/MediaSavePara;->location:Landroid/location/Location;

    .line 213
    iput-object p1, v0, Lcom/lenovo/scg/camera/MediaSavePara;->data:[B

    .line 214
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$2;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->getSavePicNeedTrim11()Z

    move-result v1

    iput-boolean v1, v0, Lcom/lenovo/scg/camera/MediaSavePara;->trim11:Z

    .line 215
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$2;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->getSavePicNeedMirror()Z

    move-result v1

    iput-boolean v1, v0, Lcom/lenovo/scg/camera/MediaSavePara;->mirror:Z

    .line 216
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$2;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    # getter for: Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->access$000(Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;)Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getOrientation()I

    move-result v1

    iput v1, v0, Lcom/lenovo/scg/camera/MediaSavePara;->orientationForMirror:I

    .line 217
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$2;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    # getter for: Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->access$000(Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;)Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->modeMediaSave(Lcom/lenovo/scg/camera/MediaSavePara;)V

    .line 219
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$2;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    # getter for: Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->access$000(Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;)Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$2;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->stopLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 220
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setAllowWayCapture(ZZ)V

    .line 221
    return-void

    .line 208
    .end local v0    # "para":Lcom/lenovo/scg/camera/MediaSavePara;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
