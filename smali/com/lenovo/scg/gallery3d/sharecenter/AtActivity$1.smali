.class Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;
.super Landroid/os/Handler;
.source "AtActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 113
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 116
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mIsRefresh:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$000(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$100(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$100(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$100(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 127
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mUserListAdapter:Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$300(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->notifyDataSetChanged()V

    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->onRefreshComplete()V

    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->dissmissDialog()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$500(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)V

    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaTabTopView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$600(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentTabTopView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$700(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$100(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$100(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$100(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 136
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mIsRefresh:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$000(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$800(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 139
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$800(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 147
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mUserListAdapter:Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$300(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->notifyDataSetChanged()V

    .line 148
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->onRefreshComplete()V

    .line 149
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->dissmissDialog()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$500(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)V

    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaTabTopView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$600(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentTabTopView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$700(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$800(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$800(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 144
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$200(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$800(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 156
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$900(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$900(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->access$900(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
