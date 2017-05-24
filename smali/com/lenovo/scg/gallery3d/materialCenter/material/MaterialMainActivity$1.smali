.class Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;
.super Landroid/os/Handler;
.source "MaterialMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 134
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 135
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 137
    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_listView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$000(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 138
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mLoading:Landroid/view/View;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$100(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$200(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;

    move-result-object v2

    if-nez v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    new-instance v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$300(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->isOnline:Z
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$400(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    # setter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;
    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$202(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_listView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$000(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$200(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$200(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mArrMaterialType:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$500(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;->setTypeArray(Ljava/util/ArrayList;)V

    .line 144
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$200(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 148
    :pswitch_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_listView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$000(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 149
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mLoading:Landroid/view/View;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$100(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->netAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$600(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;

    move-result-object v2

    if-nez v2, :cond_2

    .line 151
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    new-instance v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    invoke-direct {v3, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)V

    # setter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->netAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;
    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$602(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;

    .line 153
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_listView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$000(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->netAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$600(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 154
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->netAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$600(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 158
    :pswitch_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_listView_local:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$700(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 159
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mLoading:Landroid/view/View;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$100(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mAdapter_local:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$800(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;

    move-result-object v2

    if-nez v2, :cond_3

    .line 161
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    new-instance v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$300(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mAdapter_local:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;
    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$802(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;

    .line 163
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_listView_local:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$700(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mAdapter_local:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$800(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mAdapter_local:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$800(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mArrMaterialType_local:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$900(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;->setmArry(Ljava/util/ArrayList;)V

    .line 165
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mAdapter_local:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$800(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 169
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 170
    .local v1, "suc":I
    if-eqz v1, :cond_0

    .line 172
    if-ne v1, v5, :cond_0

    .line 173
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$1000(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 178
    .end local v1    # "suc":I
    :pswitch_4
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_listView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$000(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 179
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mLoading:Landroid/view/View;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$100(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 183
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 184
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "mTypeName"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mArrMaterialType_local:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$900(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo_local;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo_local;->typeName:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v2, "isOnline"

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->isOnline:Z
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$400(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 186
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$300(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
