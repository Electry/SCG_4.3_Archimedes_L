.class final Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$AutoFocusCallback;
.super Ljava/lang/Object;
.source "MiniCameraConfigManager.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$AutoFocusCallback;->this$0:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;
    .param p2, "x1"    # Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$1;

    .prologue
    .line 490
    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$AutoFocusCallback;-><init>(Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 3
    .param p1, "focused"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 494
    const-string/jumbo v0, "panhui9"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAutoFocus, mPaused = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$AutoFocusCallback;->this$0:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mPaused:Z
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->access$300(Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$AutoFocusCallback;->this$0:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mPaused:Z
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->access$300(Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$AutoFocusCallback;->this$0:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    # getter for: Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mFocusManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->access$400(Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;)Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->onAutoFocus(Z)V

    goto :goto_0
.end method
