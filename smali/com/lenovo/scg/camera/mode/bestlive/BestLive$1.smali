.class Lcom/lenovo/scg/camera/mode/bestlive/BestLive$1;
.super Ljava/lang/Object;
.source "BestLive.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/bestlive/BestLive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/bestlive/BestLive;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive$1;->this$0:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4
    .param p1, "yuv"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 130
    const-string v0, "BestLive"

    const-string v1, "FrontPreviewCb yuv == null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_0
    return-void

    .line 133
    :cond_0
    const-string v0, "BestLive"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BestLiveSyc FrontPreviewCb onPreviewFrame for mFrontTempYUV on Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive$1;->this$0:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    # getter for: Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mLock:[B
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->access$600(Lcom/lenovo/scg/camera/mode/bestlive/BestLive;)[B

    move-result-object v1

    monitor-enter v1

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive$1;->this$0:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    # setter for: Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontTempYUV:[B
    invoke-static {v0, p1}, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->access$702(Lcom/lenovo/scg/camera/mode/bestlive/BestLive;[B)[B

    .line 139
    const-string v0, "BestLive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BestLiveSyc update mFrontTempYUV done on Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
