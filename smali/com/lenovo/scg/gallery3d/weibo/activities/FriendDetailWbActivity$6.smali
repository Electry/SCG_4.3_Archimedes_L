.class Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$6;
.super Landroid/os/AsyncTask;
.source "FriendDetailWbActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->loadMore()V
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
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

.field final synthetic val$currentStatusMaxId:J

.field final synthetic val$imgLoadingMore:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;Landroid/widget/ImageView;J)V
    .locals 1

    .prologue
    .line 777
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$6;->val$imgLoadingMore:Landroid/widget/ImageView;

    iput-wide p3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$6;->val$currentStatusMaxId:J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 777
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 795
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$6;->val$currentStatusMaxId:J

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->loadFriendsStatuses(ZJ)V
    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$400(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;ZJ)V

    .line 796
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 777
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$6;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 801
    const-string/jumbo v0, "panhui4_FriendDetailWbActivity"

    const-string v1, "mWbFooterView.onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mState:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$102(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;I)I

    .line 807
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$6;->val$imgLoadingMore:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 808
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$6;->val$imgLoadingMore:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 810
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 781
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    const/4 v3, 0x2

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mState:I
    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$102(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;I)I

    .line 784
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    const v3, 0x7f050049

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 785
    .local v1, "rotateAnimation":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$6;->val$imgLoadingMore:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 786
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$6;->val$imgLoadingMore:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 788
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$800(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$800(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getFooterViewsCount()I

    move-result v3

    add-int v0, v2, v3

    .line 789
    .local v0, "nTotal":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$800(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setSelection(I)V

    .line 791
    return-void
.end method
