.class Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2$1;
.super Landroid/os/AsyncTask;
.source "FriendDetailWbActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;->onRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 470
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 479
    const-string/jumbo v1, "panhui4"

    const-string v2, "doInBackground, on update ......"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->cleanSlidingWindowCache()V
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)V

    .line 482
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailStatusesItem:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 483
    .local v0, "arrItemsOld":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;>;"
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    const/4 v2, 0x0

    const-wide/16 v4, -0x1

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->loadFriendsStatuses(ZJ)V
    invoke-static {v1, v2, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$400(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;ZJ)V

    .line 485
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$600(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mUid:J
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$500(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->loadAccountById(J)V

    .line 487
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->showTips(Ljava/util/ArrayList;)V
    invoke-static {v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$700(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;Ljava/util/ArrayList;)V

    .line 489
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 470
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 494
    const-string/jumbo v1, "panhui4"

    const-string/jumbo v2, "onPostExecute, onRefreshComplete!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    const v4, 0x7f0f068c

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    const v4, 0x7f0f068d

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 501
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 506
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$800(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->onRefreshComplete()V

    .line 507
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mState:I
    invoke-static {v1, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$102(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;I)I

    .line 509
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mHandlerTips:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$TipsHandler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$900(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$TipsHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$TipsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 510
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mHandlerTips:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$TipsHandler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$900(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$TipsHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$TipsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 511
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 473
    const-string/jumbo v0, "panhui4"

    const-string/jumbo v1, "onPreExecute, start update"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    const/4 v1, 0x1

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mState:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$102(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;I)I

    .line 475
    return-void
.end method
