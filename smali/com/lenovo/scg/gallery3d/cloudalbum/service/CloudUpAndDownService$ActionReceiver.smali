.class Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$ActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CloudUpAndDownService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$ActionReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$1;

    .prologue
    .line 637
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$ActionReceiver;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 641
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cloud send create download action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 642
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$ActionReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cloud send pause download action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 644
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$ActionReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 645
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cloud send resume download action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 646
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$ActionReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 647
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cloud send stop download action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 648
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$ActionReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 649
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cloud send show download action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 650
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$ActionReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 651
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cloud send hide download action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 652
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$ActionReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 653
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cloud send create upload action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 654
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$ActionReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 655
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cloud send pause upload action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 656
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$ActionReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 657
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cloud send resume upload action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 658
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$ActionReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 659
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cloud send stop upload action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 660
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$ActionReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 661
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cloud send hide upload action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 662
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$ActionReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 663
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cloud send show upload action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService$ActionReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;->access$1700(Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
