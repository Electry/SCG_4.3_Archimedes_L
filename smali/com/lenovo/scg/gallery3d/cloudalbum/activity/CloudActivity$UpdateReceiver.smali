.class Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CloudActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$1;

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$UpdateReceiver;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 329
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud update upload action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud finished upload action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 332
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 333
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 342
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 334
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud update download action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud finished download action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 336
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 337
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 338
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 339
    .end local v0    # "msg":Landroid/os/Message;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cloud back pressed action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$UpdateReceiver;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
