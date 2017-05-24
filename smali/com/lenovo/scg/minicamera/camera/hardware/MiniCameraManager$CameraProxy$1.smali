.class Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy$1;
.super Ljava/lang/Object;
.source "MiniCameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->waitDone()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

.field final synthetic val$waitDoneLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy$1;->this$1:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    iput-object p2, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy$1;->val$waitDoneLock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 318
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy$1;->val$waitDoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy$1;->val$waitDoneLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 320
    monitor-exit v1

    .line 321
    return-void

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
