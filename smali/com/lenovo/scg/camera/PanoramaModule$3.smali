.class Lcom/lenovo/scg/camera/PanoramaModule$3;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/PanoramaModule;->configMosaicPreview(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PanoramaModule;

.field final synthetic val$h:I

.field final synthetic val$isLandscape:Z

.field final synthetic val$w:I


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/PanoramaModule;IIZ)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lcom/lenovo/scg/camera/PanoramaModule$3;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    iput p2, p0, Lcom/lenovo/scg/camera/PanoramaModule$3;->val$w:I

    iput p3, p0, Lcom/lenovo/scg/camera/PanoramaModule$3;->val$h:I

    iput-boolean p4, p0, Lcom/lenovo/scg/camera/PanoramaModule$3;->val$isLandscape:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 530
    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule$3;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;
    invoke-static {v3}, Lcom/lenovo/scg/camera/PanoramaModule;->access$100(Lcom/lenovo/scg/camera/PanoramaModule;)Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v3

    iget-object v1, v3, Lcom/lenovo/scg/camera/CameraActivity;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    check-cast v1, Lcom/lenovo/scg/camera/CameraScreenNail;

    .line 531
    .local v1, "screenNail":Lcom/lenovo/scg/camera/CameraScreenNail;
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    .line 532
    .local v2, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    if-nez v2, :cond_0

    .line 533
    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule$3;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mRendererLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/lenovo/scg/camera/PanoramaModule;->access$400(Lcom/lenovo/scg/camera/PanoramaModule;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 534
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule$3;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    const/4 v5, 0x0

    # setter for: Lcom/lenovo/scg/camera/PanoramaModule;->mIsCreatingRenderer:Z
    invoke-static {v3, v5}, Lcom/lenovo/scg/camera/PanoramaModule;->access$1802(Lcom/lenovo/scg/camera/PanoramaModule;Z)Z

    .line 535
    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule$3;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mRendererLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/lenovo/scg/camera/PanoramaModule;->access$400(Lcom/lenovo/scg/camera/PanoramaModule;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 536
    monitor-exit v4

    .line 550
    :goto_0
    return-void

    .line 537
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 539
    :cond_0
    new-instance v0, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/PanoramaModule$3;->val$w:I

    iget v5, p0, Lcom/lenovo/scg/camera/PanoramaModule$3;->val$h:I

    iget-boolean v6, p0, Lcom/lenovo/scg/camera/PanoramaModule$3;->val$isLandscape:Z

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;-><init>(Landroid/graphics/SurfaceTexture;IIZ)V

    .line 540
    .local v0, "renderer":Lcom/lenovo/scg/camera/MosaicPreviewRenderer;
    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule$3;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mRendererLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/lenovo/scg/camera/PanoramaModule;->access$400(Lcom/lenovo/scg/camera/PanoramaModule;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 541
    :try_start_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule$3;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # setter for: Lcom/lenovo/scg/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;
    invoke-static {v3, v0}, Lcom/lenovo/scg/camera/PanoramaModule;->access$502(Lcom/lenovo/scg/camera/PanoramaModule;Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    .line 542
    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule$3;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    iget-object v5, p0, Lcom/lenovo/scg/camera/PanoramaModule$3;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;
    invoke-static {v5}, Lcom/lenovo/scg/camera/PanoramaModule;->access$500(Lcom/lenovo/scg/camera/PanoramaModule;)Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v5

    # setter for: Lcom/lenovo/scg/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v3, v5}, Lcom/lenovo/scg/camera/PanoramaModule;->access$1902(Lcom/lenovo/scg/camera/PanoramaModule;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 544
    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule$3;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mPaused:Z
    invoke-static {v3}, Lcom/lenovo/scg/camera/PanoramaModule;->access$300(Lcom/lenovo/scg/camera/PanoramaModule;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule$3;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mThreadRunning:Z
    invoke-static {v3}, Lcom/lenovo/scg/camera/PanoramaModule;->access$2000(Lcom/lenovo/scg/camera/PanoramaModule;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule$3;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;
    invoke-static {v3}, Lcom/lenovo/scg/camera/PanoramaModule;->access$2100(Lcom/lenovo/scg/camera/PanoramaModule;)Landroid/os/AsyncTask;

    move-result-object v3

    if-nez v3, :cond_1

    .line 545
    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule$3;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/camera/PanoramaModule;->access$2200(Lcom/lenovo/scg/camera/PanoramaModule;)Landroid/os/Handler;

    move-result-object v3

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 547
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule$3;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    const/4 v5, 0x0

    # setter for: Lcom/lenovo/scg/camera/PanoramaModule;->mIsCreatingRenderer:Z
    invoke-static {v3, v5}, Lcom/lenovo/scg/camera/PanoramaModule;->access$1802(Lcom/lenovo/scg/camera/PanoramaModule;Z)Z

    .line 548
    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule$3;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mRendererLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/lenovo/scg/camera/PanoramaModule;->access$400(Lcom/lenovo/scg/camera/PanoramaModule;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 549
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3
.end method
