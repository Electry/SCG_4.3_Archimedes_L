.class Lcom/lenovo/scg/camera/CameraManager$CameraProxy$2;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->waitDone()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

.field final synthetic val$waitDoneLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 831
    iput-object p1, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy$2;->this$1:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    iput-object p2, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy$2;->val$waitDoneLock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 835
    iget-object v1, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy$2;->val$waitDoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 836
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraManager$CameraProxy$2;->val$waitDoneLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 837
    monitor-exit v1

    .line 838
    return-void

    .line 837
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
