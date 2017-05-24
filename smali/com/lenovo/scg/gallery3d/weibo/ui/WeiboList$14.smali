.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;
.super Landroid/os/AsyncTask;
.source "WeiboList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->loadMore()V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

.field final synthetic val$imgLoadingMore:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 2435
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->val$imgLoadingMore:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x1

    .line 2451
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mCurrentStatusMaxId:J
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3200(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)J

    move-result-wide v4

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->loadFriendsStatuses(ZJI)Z
    invoke-static {v1, v2, v4, v5, v6}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;ZJI)Z

    move-result v0

    .line 2452
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 2453
    const/4 v1, 0x0

    .line 2455
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2435
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 2459
    const-string/jumbo v0, "panhui4_WeiboList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWbFooterView.onPostExecute, mWBDisplayType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWBDisplayType:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    if-nez p1, :cond_0

    .line 2462
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->updateFooterView()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    .line 2463
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mState:I
    invoke-static {v0, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1502(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;I)I

    .line 2466
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->val$imgLoadingMore:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2467
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->val$imgLoadingMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2503
    :goto_0
    return-void

    .line 2472
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$19;->$SwitchMap$com$lenovo$scg$gallery3d$weibo$ui$WeiboList$WBDisplayType:[I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWBDisplayType:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2497
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->updateFooterView()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    .line 2498
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mState:I
    invoke-static {v0, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1502(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;I)I

    .line 2501
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->val$imgLoadingMore:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2502
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->val$imgLoadingMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2474
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2475
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->notifyDataSetChanged()V

    .line 2477
    :cond_2
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;)V

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14$1;->start()V

    goto :goto_1

    .line 2486
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2487
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeStatusesItem:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$600(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->setmArrShowItem(Ljava/util/ArrayList;)V

    .line 2488
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->notifyDataSetChanged()V

    goto :goto_1

    .line 2472
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2435
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 2438
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    const/4 v3, 0x2

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mState:I
    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1502(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;I)I

    .line 2441
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050049

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 2442
    .local v1, "rotateAnimation":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->val$imgLoadingMore:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2443
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->val$imgLoadingMore:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2445
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$400(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$400(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getFooterViewsCount()I

    move-result v3

    add-int v0, v2, v3

    .line 2446
    .local v0, "nTotal":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$400(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setSelection(I)V

    .line 2447
    return-void
.end method
