.class public Lcom/lenovo/scg/camera/ActivityBase$CameraOpenThread;
.super Ljava/lang/Thread;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CameraOpenThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/ActivityBase;


# direct methods
.method protected constructor <init>(Lcom/lenovo/scg/camera/ActivityBase;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/lenovo/scg/camera/ActivityBase$CameraOpenThread;->this$0:Lcom/lenovo/scg/camera/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/ActivityBase$CameraOpenThread;->this$0:Lcom/lenovo/scg/camera/ActivityBase;

    iget-object v2, p0, Lcom/lenovo/scg/camera/ActivityBase$CameraOpenThread;->this$0:Lcom/lenovo/scg/camera/ActivityBase;

    iget-object v3, p0, Lcom/lenovo/scg/camera/ActivityBase$CameraOpenThread;->this$0:Lcom/lenovo/scg/camera/ActivityBase;

    iget v3, v3, Lcom/lenovo/scg/camera/ActivityBase;->mCameraId:I

    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/CameraUtil;->openCamera(Landroid/app/Activity;I)Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/scg/camera/ActivityBase;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .line 199
    iget-object v1, p0, Lcom/lenovo/scg/camera/ActivityBase$CameraOpenThread;->this$0:Lcom/lenovo/scg/camera/ActivityBase;

    iget-object v2, p0, Lcom/lenovo/scg/camera/ActivityBase$CameraOpenThread;->this$0:Lcom/lenovo/scg/camera/ActivityBase;

    iget-object v2, v2, Lcom/lenovo/scg/camera/ActivityBase;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/scg/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Lcom/lenovo/scg/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/scg/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 205
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Lcom/lenovo/scg/camera/CameraHardwareException;
    iget-object v1, p0, Lcom/lenovo/scg/camera/ActivityBase$CameraOpenThread;->this$0:Lcom/lenovo/scg/camera/ActivityBase;

    iput-boolean v4, v1, Lcom/lenovo/scg/camera/ActivityBase;->mOpenCameraFail:Z

    goto :goto_0

    .line 202
    .end local v0    # "e":Lcom/lenovo/scg/camera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 203
    .local v0, "e":Lcom/lenovo/scg/camera/CameraDisabledException;
    iget-object v1, p0, Lcom/lenovo/scg/camera/ActivityBase$CameraOpenThread;->this$0:Lcom/lenovo/scg/camera/ActivityBase;

    iput-boolean v4, v1, Lcom/lenovo/scg/camera/ActivityBase;->mCameraDisabled:Z

    goto :goto_0
.end method
