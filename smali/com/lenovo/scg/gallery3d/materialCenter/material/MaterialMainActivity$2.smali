.class Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "MaterialMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->Init()V
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
    .line 216
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 221
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->netAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$600(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->netAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$600(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;->dissmiss()V

    .line 223
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # setter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->netAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$602(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mAdapter_local:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$800(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # setter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mAdapter_local:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$802(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$200(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # setter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$202(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;)Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_listView_local:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$700(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->main_listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$000(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mLoading:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$100(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->isOnline:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$400(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 235
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->getNetData()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$1100(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)V

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->getLocalData()V

    goto :goto_0
.end method
