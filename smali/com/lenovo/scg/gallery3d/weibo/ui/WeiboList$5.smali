.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;
.super Landroid/os/Handler;
.source "WeiboList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V
    .locals 0

    .prologue
    .line 1510
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v6, 0x7f100a2a

    const v5, 0x7f0f0740

    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1514
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1515
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1616
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1518
    :pswitch_1
    const-string/jumbo v0, "panhui4_WeiboList"

    const-string v1, "MSG_GET_RESULT_STATUSES"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWBDisplayType:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;->ALL_FRIENDS_BY_PEOPLE:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    if-ne v0, v1, :cond_4

    .line 1520
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1521
    const-string/jumbo v0, "panhui4_WeiboList"

    const-string v1, "mAdapter=null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1525
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->setLoading(Z)V

    .line 1526
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1531
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->notifyDataSetChanged()V

    .line 1532
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$400(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setIsRefresh(Z)V

    .line 1564
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$900(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->bindData(J)V

    goto :goto_0

    .line 1534
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWBDisplayType:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;->ALL_FRIENDS_BY_TIME:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    if-ne v0, v1, :cond_3

    .line 1535
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1536
    const-string/jumbo v0, "panhui4_WeiboList"

    const-string v1, "mTimeAdapter=null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1541
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeStatusesItem:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$600(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->setmArrShowItem(Ljava/util/ArrayList;)V

    .line 1542
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->notifyDataSetChanged()V

    .line 1543
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->setLoading(Z)V

    .line 1545
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1546
    const-string/jumbo v0, "panhui4_WeiboList"

    const-string v1, "mTimeAdapter is empty!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    :cond_6
    const-string/jumbo v0, "panhui4_WeiboList"

    const-string v1, "mTimeAdapter is not empty!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWeiboLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1556
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbEmptyView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$800(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1558
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->setBackgroundImage()V

    .line 1561
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$400(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setIsRefresh(Z)V

    goto/16 :goto_1

    .line 1571
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1572
    const-string/jumbo v0, "panhui4_WeiboList"

    const-string v1, "mAdapter=null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1576
    :cond_7
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->setLoading(Z)V

    .line 1577
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1579
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0721

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->setEmptyView(Landroid/content/Context;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Landroid/content/Context;IZ)V

    .line 1584
    :goto_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->notifyDataSetChanged()V

    .line 1585
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$400(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setIsRefresh(Z)V

    .line 1587
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->isWiFiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1588
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->filterLongImage()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    goto/16 :goto_0

    .line 1581
    :cond_8
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWeiboLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1582
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbEmptyView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$800(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 1602
    :pswitch_3
    const-string/jumbo v0, "panhui4_WeiboList"

    const-string v1, "handleMessage, MSG_STATUSES_OPENURL_ERROR!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f073b

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->setEmptyView(Landroid/content/Context;IZ)V
    invoke-static {v0, v1, v2, v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Landroid/content/Context;IZ)V

    goto/16 :goto_0

    .line 1610
    :pswitch_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1612
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->setEmptyView(Landroid/content/Context;IZ)V
    invoke-static {v0, v1, v5, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Landroid/content/Context;IZ)V

    goto/16 :goto_0

    .line 1515
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
