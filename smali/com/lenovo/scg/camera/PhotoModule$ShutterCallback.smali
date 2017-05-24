.class final Lcom/lenovo/scg/camera/PhotoModule$ShutterCallback;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutterCallback"
.end annotation


# instance fields
.field private mAnimateFlash:Z

.field final synthetic this$0:Lcom/lenovo/scg/camera/PhotoModule;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/PhotoModule;Z)V
    .locals 0
    .param p2, "animateFlash"    # Z

    .prologue
    .line 2318
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule$ShutterCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2319
    iput-boolean p2, p0, Lcom/lenovo/scg/camera/PhotoModule$ShutterCallback;->mAnimateFlash:Z

    .line 2320
    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 6

    .prologue
    .line 2324
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$ShutterCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/lenovo/scg/camera/PhotoModule;->mShutterCallbackTime:J
    invoke-static {v0, v2, v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$4702(Lcom/lenovo/scg/camera/PhotoModule;J)J

    .line 2325
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$ShutterCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$ShutterCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mShutterCallbackTime:J
    invoke-static {v1}, Lcom/lenovo/scg/camera/PhotoModule;->access$4700(Lcom/lenovo/scg/camera/PhotoModule;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$ShutterCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-wide v4, v1, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureStartTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/lenovo/scg/camera/PhotoModule;->mShutterLag:J

    .line 2326
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterLag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$ShutterCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-wide v2, v2, Lcom/lenovo/scg/camera/PhotoModule;->mShutterLag:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule$ShutterCallback;->mAnimateFlash:Z

    if-eqz v0, :cond_0

    .line 2328
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$ShutterCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$ShutterCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mFlashRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/lenovo/scg/camera/PhotoModule;->access$4800(Lcom/lenovo/scg/camera/PhotoModule;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2330
    :cond_0
    return-void
.end method
