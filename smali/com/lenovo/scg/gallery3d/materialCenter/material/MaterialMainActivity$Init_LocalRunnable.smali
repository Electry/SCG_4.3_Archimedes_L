.class Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$Init_LocalRunnable;
.super Ljava/lang/Object;
.source "MaterialMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Init_LocalRunnable"
.end annotation


# instance fields
.field private index:I

.field private intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;Landroid/content/Intent;I)V
    .locals 0
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "index"    # I

    .prologue
    .line 464
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$Init_LocalRunnable;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$Init_LocalRunnable;->intent:Landroid/content/Intent;

    .line 466
    iput p3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$Init_LocalRunnable;->index:I

    .line 467
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 473
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$Init_LocalRunnable;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mArrMaterialType_local:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$900(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$Init_LocalRunnable;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mArrMaterialType_local:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$900(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$Init_LocalRunnable;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_listView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$000(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 475
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$Init_LocalRunnable;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mLoading:Landroid/view/View;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$100(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 476
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$Init_LocalRunnable;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$1000(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 478
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 479
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 480
    iget v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$Init_LocalRunnable;->index:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 481
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$Init_LocalRunnable;->intent:Landroid/content/Intent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 482
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$Init_LocalRunnable;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$1000(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 486
    return-void
.end method
