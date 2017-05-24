.class Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CloudUploadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$1;

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$UpdateReceiver;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 434
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud resume upload action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 436
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 437
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 461
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud finished upload action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 439
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 440
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 441
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 442
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud update upload action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 443
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 444
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 445
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 446
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud progress upload action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 447
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 448
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 449
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 450
    .end local v0    # "msg":Landroid/os/Message;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud stop upload action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 451
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 452
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 453
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 454
    .end local v0    # "msg":Landroid/os/Message;
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud pause upload action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 455
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 456
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 457
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 458
    .end local v0    # "msg":Landroid/os/Message;
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud send close upload window action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;->access$1900(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
