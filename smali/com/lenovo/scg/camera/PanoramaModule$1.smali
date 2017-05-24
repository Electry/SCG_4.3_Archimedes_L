.class Lcom/lenovo/scg/camera/PanoramaModule$1;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/PanoramaModule;->init(Lcom/lenovo/scg/camera/CameraActivity;Landroid/view/View;Z)V
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
    .line 308
    iput-object p1, p0, Lcom/lenovo/scg/camera/PanoramaModule$1;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 314
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule$1;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mPaused:Z
    invoke-static {v1}, Lcom/lenovo/scg/camera/PanoramaModule;->access$300(Lcom/lenovo/scg/camera/PanoramaModule;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    :goto_0
    return-void

    .line 316
    :cond_0
    const/4 v0, 0x0

    .line 317
    .local v0, "renderer":Lcom/lenovo/scg/camera/MosaicPreviewRenderer;
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule$1;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mRendererLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/lenovo/scg/camera/PanoramaModule;->access$400(Lcom/lenovo/scg/camera/PanoramaModule;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule$1;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;
    invoke-static {v1}, Lcom/lenovo/scg/camera/PanoramaModule;->access$500(Lcom/lenovo/scg/camera/PanoramaModule;)Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 319
    monitor-exit v2

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 321
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule$1;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;
    invoke-static {v1}, Lcom/lenovo/scg/camera/PanoramaModule;->access$500(Lcom/lenovo/scg/camera/PanoramaModule;)Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    move-result-object v0

    .line 322
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule$1;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/PanoramaModule;->access$600(Lcom/lenovo/scg/camera/PanoramaModule;)Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 324
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->showPreviewFrameSync()V

    .line 325
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule$1;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/PanoramaModule;->access$600(Lcom/lenovo/scg/camera/PanoramaModule;)Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->setVisibility(I)V

    goto :goto_0

    .line 327
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule$1;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mCaptureState:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/PanoramaModule;->access$700(Lcom/lenovo/scg/camera/PanoramaModule;)I

    move-result v1

    if-nez v1, :cond_3

    .line 328
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->showPreviewFrame()V

    goto :goto_0

    .line 330
    :cond_3
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->alignFrameSync()V

    .line 331
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule$1;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/lenovo/scg/camera/MosaicFrameProcessor;
    invoke-static {v1}, Lcom/lenovo/scg/camera/PanoramaModule;->access$800(Lcom/lenovo/scg/camera/PanoramaModule;)Lcom/lenovo/scg/camera/MosaicFrameProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->processFrame()V

    goto :goto_0
.end method
