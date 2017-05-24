.class Lcom/lenovo/scg/camera/rewind/DecodeTool$DecodeTask;
.super Ljava/lang/Object;
.source "DecodeTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/rewind/DecodeTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/rewind/DecodeTool;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/rewind/DecodeTool;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool$DecodeTask;->this$0:Lcom/lenovo/scg/camera/rewind/DecodeTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/rewind/DecodeTool;Lcom/lenovo/scg/camera/rewind/DecodeTool$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/rewind/DecodeTool;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/rewind/DecodeTool$1;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/rewind/DecodeTool$DecodeTask;-><init>(Lcom/lenovo/scg/camera/rewind/DecodeTool;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 86
    const-string v0, "DecodeTool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DecodeTask thread enter!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool$DecodeTask;->this$0:Lcom/lenovo/scg/camera/rewind/DecodeTool;

    # getter for: Lcom/lenovo/scg/camera/rewind/DecodeTool;->mbExit:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/rewind/DecodeTool;->access$100(Lcom/lenovo/scg/camera/rewind/DecodeTool;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool$DecodeTask;->this$0:Lcom/lenovo/scg/camera/rewind/DecodeTool;

    # getter for: Lcom/lenovo/scg/camera/rewind/DecodeTool;->mImgList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/camera/rewind/DecodeTool;->access$200(Lcom/lenovo/scg/camera/rewind/DecodeTool;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    const-string v0, "DecodeTool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DecodeTask thread exit!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_0
    return-void

    .line 91
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool$DecodeTask;->this$0:Lcom/lenovo/scg/camera/rewind/DecodeTool;

    # getter for: Lcom/lenovo/scg/camera/rewind/DecodeTool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/lenovo/scg/camera/rewind/DecodeTool;->access$300(Lcom/lenovo/scg/camera/rewind/DecodeTool;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool$DecodeTask;->this$0:Lcom/lenovo/scg/camera/rewind/DecodeTool;

    # getter for: Lcom/lenovo/scg/camera/rewind/DecodeTool;->mImgList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/camera/rewind/DecodeTool;->access$200(Lcom/lenovo/scg/camera/rewind/DecodeTool;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 93
    .local v1, "img":[B
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool$DecodeTask;->this$0:Lcom/lenovo/scg/camera/rewind/DecodeTool;

    # getter for: Lcom/lenovo/scg/camera/rewind/DecodeTool;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/lenovo/scg/camera/rewind/DecodeTool;->access$300(Lcom/lenovo/scg/camera/rewind/DecodeTool;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool$DecodeTask;->this$0:Lcom/lenovo/scg/camera/rewind/DecodeTool;

    # getter for: Lcom/lenovo/scg/camera/rewind/DecodeTool;->mbExit:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/rewind/DecodeTool;->access$100(Lcom/lenovo/scg/camera/rewind/DecodeTool;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool$DecodeTask;->this$0:Lcom/lenovo/scg/camera/rewind/DecodeTool;

    # getter for: Lcom/lenovo/scg/camera/rewind/DecodeTool;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v0}, Lcom/lenovo/scg/camera/rewind/DecodeTool;->access$400(Lcom/lenovo/scg/camera/rewind/DecodeTool;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool$DecodeTask;->this$0:Lcom/lenovo/scg/camera/rewind/DecodeTool;

    # getter for: Lcom/lenovo/scg/camera/rewind/DecodeTool;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;
    invoke-static {v0}, Lcom/lenovo/scg/camera/rewind/DecodeTool;->access$400(Lcom/lenovo/scg/camera/rewind/DecodeTool;)Lcom/lenovo/scg/camera/ContinuousShotTool;

    move-result-object v0

    iget-object v2, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool$DecodeTask;->this$0:Lcom/lenovo/scg/camera/rewind/DecodeTool;

    # getter for: Lcom/lenovo/scg/camera/rewind/DecodeTool;->mDstWidth:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/rewind/DecodeTool;->access$500(Lcom/lenovo/scg/camera/rewind/DecodeTool;)I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool$DecodeTask;->this$0:Lcom/lenovo/scg/camera/rewind/DecodeTool;

    # getter for: Lcom/lenovo/scg/camera/rewind/DecodeTool;->mDstHeight:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/rewind/DecodeTool;->access$600(Lcom/lenovo/scg/camera/rewind/DecodeTool;)I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool$DecodeTask;->this$0:Lcom/lenovo/scg/camera/rewind/DecodeTool;

    # getter for: Lcom/lenovo/scg/camera/rewind/DecodeTool;->mDstFormat:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/rewind/DecodeTool;->access$700(Lcom/lenovo/scg/camera/rewind/DecodeTool;)I

    move-result v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool$DecodeTask;->this$0:Lcom/lenovo/scg/camera/rewind/DecodeTool;

    # getter for: Lcom/lenovo/scg/camera/rewind/DecodeTool;->mbNeedRotate:Z
    invoke-static {v5}, Lcom/lenovo/scg/camera/rewind/DecodeTool;->access$800(Lcom/lenovo/scg/camera/rewind/DecodeTool;)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getScaleYUVData([BIIIZ)[B

    move-result-object v6

    .line 97
    .local v6, "outData":[B
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool$DecodeTask;->this$0:Lcom/lenovo/scg/camera/rewind/DecodeTool;

    # getter for: Lcom/lenovo/scg/camera/rewind/DecodeTool;->mListener:Lcom/lenovo/scg/camera/rewind/DecodeTool$OnDecodeListener;
    invoke-static {v0}, Lcom/lenovo/scg/camera/rewind/DecodeTool;->access$900(Lcom/lenovo/scg/camera/rewind/DecodeTool;)Lcom/lenovo/scg/camera/rewind/DecodeTool$OnDecodeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/DecodeTool$DecodeTask;->this$0:Lcom/lenovo/scg/camera/rewind/DecodeTool;

    # getter for: Lcom/lenovo/scg/camera/rewind/DecodeTool;->mListener:Lcom/lenovo/scg/camera/rewind/DecodeTool$OnDecodeListener;
    invoke-static {v0}, Lcom/lenovo/scg/camera/rewind/DecodeTool;->access$900(Lcom/lenovo/scg/camera/rewind/DecodeTool;)Lcom/lenovo/scg/camera/rewind/DecodeTool$OnDecodeListener;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/lenovo/scg/camera/rewind/DecodeTool$OnDecodeListener;->onDecode([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .end local v6    # "outData":[B
    :cond_2
    const-string v0, "DecodeTool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DecodeTask thread exit!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "img":[B
    :catchall_0
    move-exception v0

    const-string v2, "DecodeTool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeTask thread exit!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method
