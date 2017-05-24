.class Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$2;
.super Ljava/lang/Object;
.source "MiniCameraConfigManager.java"

# interfaces
.implements Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$2;->this$0:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public autoFocus()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$2;->this$0:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->access$100(Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;)Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 472
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$2;->this$0:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->access$100(Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;)Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$2;->this$0:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mAutoFocusCallback:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$AutoFocusCallback;
    invoke-static {v1}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->access$200(Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;)Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$AutoFocusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_0
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$2;->this$0:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->access$100(Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;)Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 482
    :goto_0
    return-void

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$2;->this$0:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->access$100(Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;)Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->cancelAutoFocus()V

    .line 481
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$2;->this$0:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->updateFocusParametersOnly()V

    goto :goto_0
.end method

.method public setFocusParameters()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$2;->this$0:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->setDesiredCameraParameters()V

    .line 487
    return-void
.end method
