.class Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$1;
.super Landroid/os/Handler;
.source "DownloadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 117
    :goto_0
    return-void

    .line 88
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->adapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->access$000(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    new-instance v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    invoke-direct {v1, v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->adapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->access$002(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mGridView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->access$100(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->adapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->access$000(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->adapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->access$000(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->imageFileList:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->access$200(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->setImageFileList(Ljava/util/List;)V

    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->mMainLin:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->access$300(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->rloading:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->access$400(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->adapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;->access$000(Lcom/lenovo/scg/gallery3d/materialCenter/material/DownloadActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
