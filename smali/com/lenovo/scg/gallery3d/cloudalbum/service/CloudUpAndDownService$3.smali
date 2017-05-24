.class Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$3;
.super Ljava/lang/Object;
.source "CloudUpAndDownService.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnUploadListener;


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
    .line 534
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 545
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 546
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 547
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 548
    return-void
.end method

.method public onPause(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 566
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 567
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 568
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 569
    return-void
.end method

.method public onProgress(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 573
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 574
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 575
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 576
    return-void
.end method

.method public onResume(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 552
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 553
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 554
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 555
    return-void
.end method

.method public onStop(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 559
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 560
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 561
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 562
    return-void
.end method

.method public onUpdatePage(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 538
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 539
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 540
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 541
    return-void
.end method
