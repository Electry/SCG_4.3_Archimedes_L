.class Lcom/lenovo/scg/camera/PhotoModule$9;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/PhotoModule;->onCameraOpened()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0

    .prologue
    .line 1538
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule$9;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 1543
    const-string v0, "CAM_PhotoModule"

    const-string v1, "CameraStartTimeUtils.printCameraStartTime"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    const-string v0, "Camera-Started"

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->setEndTime(Ljava/lang/String;)V

    .line 1545
    invoke-static {}, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->printCameraStartTime()V

    .line 1546
    invoke-static {}, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->getCameraStartTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->onCameraStarted(J)V

    .line 1547
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$9;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoModule;->access$1000(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1549
    return-void
.end method
