.class Lcom/lenovo/scg/camera/PanoramaModule$WaitProcessorTask;
.super Landroid/os/AsyncTask;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitProcessorTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PanoramaModule;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/PanoramaModule;)V
    .locals 0

    .prologue
    .line 1253
    iput-object p1, p0, Lcom/lenovo/scg/camera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/PanoramaModule;Lcom/lenovo/scg/camera/PanoramaModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/PanoramaModule$1;

    .prologue
    .line 1253
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PanoramaModule$WaitProcessorTask;-><init>(Lcom/lenovo/scg/camera/PanoramaModule;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1253
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/PanoramaModule$WaitProcessorTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/lenovo/scg/camera/MosaicFrameProcessor;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PanoramaModule;->access$800(Lcom/lenovo/scg/camera/PanoramaModule;)Lcom/lenovo/scg/camera/MosaicFrameProcessor;

    move-result-object v1

    monitor-enter v1

    .line 1258
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PanoramaModule$WaitProcessorTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/lenovo/scg/camera/MosaicFrameProcessor;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PanoramaModule;->access$800(Lcom/lenovo/scg/camera/PanoramaModule;)Lcom/lenovo/scg/camera/MosaicFrameProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->isMosaicMemoryAllocated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1260
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/lenovo/scg/camera/MosaicFrameProcessor;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PanoramaModule;->access$800(Lcom/lenovo/scg/camera/PanoramaModule;)Lcom/lenovo/scg/camera/MosaicFrameProcessor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1261
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1265
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 1266
    const/4 v0, 0x0

    return-object v0

    .line 1265
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1253
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/PanoramaModule$WaitProcessorTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 1271
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    const/4 v3, 0x0

    # setter for: Lcom/lenovo/scg/camera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/PanoramaModule;->access$2102(Lcom/lenovo/scg/camera/PanoramaModule;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 1272
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mRotateDialog:Lcom/lenovo/scg/camera/RotateDialogController;
    invoke-static {v2}, Lcom/lenovo/scg/camera/PanoramaModule;->access$1500(Lcom/lenovo/scg/camera/PanoramaModule;)Lcom/lenovo/scg/camera/RotateDialogController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/RotateDialogController;->dismissDialog()Z

    .line 1273
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/PanoramaModule;->access$600(Lcom/lenovo/scg/camera/PanoramaModule;)Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 1274
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # invokes: Lcom/lenovo/scg/camera/PanoramaModule;->initMosaicFrameProcessorIfNeeded()V
    invoke-static {v2}, Lcom/lenovo/scg/camera/PanoramaModule;->access$3600(Lcom/lenovo/scg/camera/PanoramaModule;)V

    .line 1275
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mPreviewArea:Lcom/lenovo/scg/camera/ui/LayoutNotifyView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/PanoramaModule;->access$3700(Lcom/lenovo/scg/camera/PanoramaModule;)Lcom/lenovo/scg/camera/ui/LayoutNotifyView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/LayoutNotifyView;->getWidth()I

    move-result v1

    .line 1276
    .local v1, "w":I
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mPreviewArea:Lcom/lenovo/scg/camera/ui/LayoutNotifyView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/PanoramaModule;->access$3700(Lcom/lenovo/scg/camera/PanoramaModule;)Lcom/lenovo/scg/camera/ui/LayoutNotifyView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/LayoutNotifyView;->getHeight()I

    move-result v0

    .line 1277
    .local v0, "h":I
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1278
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # invokes: Lcom/lenovo/scg/camera/PanoramaModule;->configMosaicPreview(II)V
    invoke-static {v2, v1, v0}, Lcom/lenovo/scg/camera/PanoramaModule;->access$1700(Lcom/lenovo/scg/camera/PanoramaModule;II)V

    .line 1280
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule$WaitProcessorTask;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # invokes: Lcom/lenovo/scg/camera/PanoramaModule;->resetToPreview()V
    invoke-static {v2}, Lcom/lenovo/scg/camera/PanoramaModule;->access$1100(Lcom/lenovo/scg/camera/PanoramaModule;)V

    .line 1281
    return-void
.end method
