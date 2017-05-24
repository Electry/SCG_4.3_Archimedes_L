.class Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CloudDownloadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$1;

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$UpdateReceiver;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 419
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud resume download action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 421
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 422
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 446
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud finished download action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 424
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 425
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 426
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 427
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud update download action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 428
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 429
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 430
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 431
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud progress download action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 432
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 433
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 434
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 435
    .end local v0    # "msg":Landroid/os/Message;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud stop download action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 436
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 437
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 438
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 439
    .end local v0    # "msg":Landroid/os/Message;
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud pause download action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 440
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 441
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 442
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 443
    .end local v0    # "msg":Landroid/os/Message;
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud send close download window action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;->access$1900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
