.class Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$1;
.super Landroid/os/Handler;
.source "Download_localActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 79
    :goto_0
    return-void

    .line 64
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->download_local_Adapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->access$000(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    new-instance v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->access$100(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->mTypeName:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->access$200(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->holder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->access$300(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;)V

    # setter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->download_local_Adapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->access$002(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    .line 66
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->holder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->access$300(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;->downloadGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->download_local_Adapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->access$000(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->download_local_Adapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->access$000(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->img_local_List:Ljava/util/List;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->access$400(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->setImg_local_List(Ljava/util/List;)V

    .line 69
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    const v1, 0x7f1000c5

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    const v1, 0x7f1000c4

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->access$100(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->mTypeName:Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->access$200(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->holder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->access$300(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->download_local_Adapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->access$000(Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->init_local(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;)V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
