.class Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$2;
.super Landroid/os/Handler;
.source "Download_online_Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 286
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 309
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 310
    return-void

    .line 289
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    iget-object v2, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->download_progressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->FileLength:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->access$100(Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 292
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    iget-object v2, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->download_progressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->DownedFileLength:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->access$200(Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 295
    :pswitch_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    iget-object v2, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->flag:Ljava/lang/Boolean;

    .line 296
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    iget-object v2, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->download_btn:Landroid/widget/Button;

    const v2, 0x7f0f093f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 297
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    iget-object v2, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->download_btn_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 298
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    iget-object v2, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->download_progressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 299
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    iget-object v2, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->download_btn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 300
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->context:Landroid/content/Context;

    const-string/jumbo v2, "\u6587\u4ef6\u4e0b\u8f7d\u5b8c\u6210"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 301
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 304
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "error":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->context:Landroid/content/Context;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
