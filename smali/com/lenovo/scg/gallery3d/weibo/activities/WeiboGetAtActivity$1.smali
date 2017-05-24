.class Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;
.super Landroid/os/Handler;
.source "WeiboGetAtActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 85
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mIsRefresh:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 96
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mUserListAdapter:Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->notifyDataSetChanged()V

    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$400(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->onRefreshComplete()V

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->dissmissDialog()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$500(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)V

    goto :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 101
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mIsRefresh:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$600(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 104
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$600(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 112
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mUserListAdapter:Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->notifyDataSetChanged()V

    .line 113
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$400(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->onRefreshComplete()V

    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->dissmissDialog()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$500(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)V

    goto/16 :goto_0

    .line 107
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$600(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$600(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$600(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 117
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$700(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$700(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$700(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
