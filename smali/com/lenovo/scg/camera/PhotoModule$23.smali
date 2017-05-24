.class Lcom/lenovo/scg/camera/PhotoModule$23;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/PhotoModule;
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
    .line 6533
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule$23;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 1
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;
    .param p2, "arg1"    # Landroid/hardware/Camera;

    .prologue
    .line 6538
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$23;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoModule;->access$900(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/PhotoUI;->onFaceDetection([Landroid/hardware/Camera$Face;)V

    .line 6542
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$23;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mIsImageCaptureIntent:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoModule;->access$4400(Lcom/lenovo/scg/camera/PhotoModule;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6543
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$23;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoModule;->access$100(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->onFaceDetection([Landroid/hardware/Camera$Face;)V

    .line 6547
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$23;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mPreviewCallbackMgr:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    if-eqz v0, :cond_1

    .line 6548
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$23;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mPreviewCallbackMgr:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->setISPFaceData([Landroid/hardware/Camera$Face;)V

    .line 6551
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->getInstance()Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->getSmartPreview()Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6552
    invoke-static {}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->getInstance()Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->getSmartPreview()Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;->onFaceDetection([Landroid/hardware/Camera$Face;)V

    .line 6554
    :cond_2
    return-void
.end method
