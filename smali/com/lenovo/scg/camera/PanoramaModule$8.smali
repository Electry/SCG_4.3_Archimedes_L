.class Lcom/lenovo/scg/camera/PanoramaModule$8;
.super Ljava/lang/Thread;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/PanoramaModule;->reportProgress()V
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
    .line 808
    iput-object p1, p0, Lcom/lenovo/scg/camera/PanoramaModule$8;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 812
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule$8;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mThreadRunning:Z
    invoke-static {v2}, Lcom/lenovo/scg/camera/PanoramaModule;->access$2000(Lcom/lenovo/scg/camera/PanoramaModule;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 813
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule$8;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/lenovo/scg/camera/MosaicFrameProcessor;
    invoke-static {v2}, Lcom/lenovo/scg/camera/PanoramaModule;->access$800(Lcom/lenovo/scg/camera/PanoramaModule;)Lcom/lenovo/scg/camera/MosaicFrameProcessor;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule$8;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mCancelComputation:Z
    invoke-static {v4}, Lcom/lenovo/scg/camera/PanoramaModule;->access$2900(Lcom/lenovo/scg/camera/PanoramaModule;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->reportProgress(ZZ)I

    move-result v1

    .line 816
    .local v1, "progress":I
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule$8;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mWaitObject:Ljava/lang/Object;
    invoke-static {v2}, Lcom/lenovo/scg/camera/PanoramaModule;->access$3000(Lcom/lenovo/scg/camera/PanoramaModule;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule$8;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mWaitObject:Ljava/lang/Object;
    invoke-static {v2}, Lcom/lenovo/scg/camera/PanoramaModule;->access$3000(Lcom/lenovo/scg/camera/PanoramaModule;)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 818
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 823
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule$8;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;
    invoke-static {v2}, Lcom/lenovo/scg/camera/PanoramaModule;->access$100(Lcom/lenovo/scg/camera/PanoramaModule;)Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    new-instance v3, Lcom/lenovo/scg/camera/PanoramaModule$8$1;

    invoke-direct {v3, p0, v1}, Lcom/lenovo/scg/camera/PanoramaModule$8$1;-><init>(Lcom/lenovo/scg/camera/PanoramaModule$8;I)V

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 818
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 819
    :catch_0
    move-exception v0

    .line 820
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Panorama reportProgress failed"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 831
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "progress":I
    :cond_0
    return-void
.end method
