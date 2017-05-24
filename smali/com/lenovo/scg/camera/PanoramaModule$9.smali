.class Lcom/lenovo/scg/camera/PanoramaModule$9;
.super Ljava/lang/Thread;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/PanoramaModule;->saveHighResMosaic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/PanoramaModule;)V
    .locals 0

    .prologue
    .line 855
    iput-object p1, p0, Lcom/lenovo/scg/camera/PanoramaModule$9;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 859
    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule$9;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/lenovo/scg/camera/PanoramaModule;->access$3200(Lcom/lenovo/scg/camera/PanoramaModule;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 862
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule$9;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/PanoramaModule;->generateFinalMosaic(Z)Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 864
    .local v0, "jpeg":Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;
    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule$9;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/lenovo/scg/camera/PanoramaModule;->access$3200(Lcom/lenovo/scg/camera/PanoramaModule;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 867
    if-nez v0, :cond_0

    .line 868
    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule$9;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/camera/PanoramaModule;->access$2200(Lcom/lenovo/scg/camera/PanoramaModule;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 880
    :goto_0
    return-void

    .line 864
    .end local v0    # "jpeg":Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule$9;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/lenovo/scg/camera/PanoramaModule;->access$3200(Lcom/lenovo/scg/camera/PanoramaModule;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v3

    .line 869
    .restart local v0    # "jpeg":Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;
    :cond_0
    iget-boolean v3, v0, Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;->isValid:Z

    if-nez v3, :cond_1

    .line 870
    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule$9;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/camera/PanoramaModule;->access$2200(Lcom/lenovo/scg/camera/PanoramaModule;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 872
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule$9;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # invokes: Lcom/lenovo/scg/camera/PanoramaModule;->getCaptureOrientation()I
    invoke-static {v3}, Lcom/lenovo/scg/camera/PanoramaModule;->access$3300(Lcom/lenovo/scg/camera/PanoramaModule;)I

    move-result v1

    .line 873
    .local v1, "orientation":I
    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule$9;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    iget-object v4, v0, Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;->data:[B

    iget v5, v0, Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;->width:I

    iget v6, v0, Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;->height:I

    # invokes: Lcom/lenovo/scg/camera/PanoramaModule;->savePanorama([BIII)Landroid/net/Uri;
    invoke-static {v3, v4, v5, v6, v1}, Lcom/lenovo/scg/camera/PanoramaModule;->access$3400(Lcom/lenovo/scg/camera/PanoramaModule;[BIII)Landroid/net/Uri;

    move-result-object v2

    .line 874
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_2

    .line 875
    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule$9;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;
    invoke-static {v3}, Lcom/lenovo/scg/camera/PanoramaModule;->access$100(Lcom/lenovo/scg/camera/PanoramaModule;)Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/lenovo/scg/camera/CameraActivity;->addSecureAlbumItemIfNeeded(ZLandroid/net/Uri;)V

    .line 876
    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule$9;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;
    invoke-static {v3}, Lcom/lenovo/scg/camera/PanoramaModule;->access$100(Lcom/lenovo/scg/camera/PanoramaModule;)Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/lenovo/scg/camera/CameraUtil;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 878
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule$9;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/camera/PanoramaModule;->access$2200(Lcom/lenovo/scg/camera/PanoramaModule;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule$9;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/lenovo/scg/camera/PanoramaModule;->access$2200(Lcom/lenovo/scg/camera/PanoramaModule;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
