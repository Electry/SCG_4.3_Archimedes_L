.class Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager$BufferedCameraPreviewCallback;
.super Ljava/lang/Object;
.source "PreviewCallbackManager.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferedCameraPreviewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager$BufferedCameraPreviewCallback;->this$0:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager$1;

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager$BufferedCameraPreviewCallback;-><init>(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;)V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 376
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager$BufferedCameraPreviewCallback;->this$0:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    # operator++ for: Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCallbackCount:J
    invoke-static {v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->access$108(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;)J

    .line 377
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 378
    .local v2, "curTime":J
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager$BufferedCameraPreviewCallback;->this$0:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    # getter for: Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mLastCallbackTime:J
    invoke-static {v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->access$200(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager$BufferedCameraPreviewCallback;->this$0:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    # setter for: Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mLastCallbackTime:J
    invoke-static {v1, v2, v3}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->access$202(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;J)J

    .line 380
    const-string v1, "FpsInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MainThread : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager$BufferedCameraPreviewCallback;->this$0:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    # getter for: Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCallbackCount:J
    invoke-static {v5}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->access$100(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager$BufferedCameraPreviewCallback;->this$0:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    const-wide/16 v4, 0x0

    # setter for: Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCallbackCount:J
    invoke-static {v1, v4, v5}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->access$102(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;J)J

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager$BufferedCameraPreviewCallback;->this$0:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    # getter for: Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mLastUsedCbDataTime:J
    invoke-static {v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->access$300(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;)J

    move-result-wide v4

    sub-long v4, v2, v4

    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager$BufferedCameraPreviewCallback;->this$0:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    # getter for: Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbMinInterval:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->access$400(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;)I

    move-result v1

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    .line 385
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager$BufferedCameraPreviewCallback;->this$0:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    # setter for: Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mLastUsedCbDataTime:J
    invoke-static {v1, v2, v3}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->access$302(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;J)J

    .line 386
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager$BufferedCameraPreviewCallback;->this$0:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    # getter for: Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mapBufferObject:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->access$500(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;

    .line 387
    .local v0, "buf":Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;
    if-eqz v0, :cond_1

    .line 388
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager$BufferedCameraPreviewCallback;->this$0:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    # getter for: Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mapBufferObject:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->access$500(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->GetBuffer()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager$BufferedCameraPreviewCallback;->this$0:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    # getter for: Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;
    invoke-static {v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->access$600(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;)Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->addBufferForDeal(Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;)V

    .line 390
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager$BufferedCameraPreviewCallback;->this$0:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    # invokes: Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->prepairPreviewBuffer()V
    invoke-static {v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->access$700(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;)V

    .line 399
    .end local v0    # "buf":Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;
    :goto_0
    return-void

    .line 392
    .restart local v0    # "buf":Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;
    :cond_1
    const-string v1, "PreviewCallbackManager"

    const-string/jumbo v4, "onPreviewFrame : buf == null"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 397
    .end local v0    # "buf":Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager$BufferedCameraPreviewCallback;->this$0:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    # invokes: Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->jumpPreviewFrame([B)V
    invoke-static {v1, p1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->access$800(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;[B)V

    goto :goto_0
.end method
