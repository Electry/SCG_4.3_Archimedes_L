.class Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$2;
.super Ljava/lang/Object;
.source "CloudUpAndDownService.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->InitModelListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlbumToPhoto(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 527
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 528
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 529
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 530
    return-void
.end method

.method public onFinished(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 492
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 493
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 494
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 495
    return-void
.end method

.method public onPause(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 513
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 514
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 515
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 516
    return-void
.end method

.method public onProgress(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 520
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 521
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 522
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 523
    return-void
.end method

.method public onResume(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 499
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 500
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 501
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 502
    return-void
.end method

.method public onStop(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 506
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 507
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 508
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 509
    return-void
.end method

.method public onUpdatePage(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 485
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 486
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 487
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 488
    return-void
.end method
