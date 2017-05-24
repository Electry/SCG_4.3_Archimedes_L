.class Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;
.super Ljava/lang/Object;
.source "SingleImageViewActivity2.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isLastItem:Z

.field state:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V
    .locals 1

    .prologue
    .line 1627
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1629
    const/16 v0, 0x1000

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->state:I

    .line 1630
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->isLastItem:Z

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1690
    add-int v0, p3, p2

    if-ne v0, p4, :cond_0

    .line 1691
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->isLastItem:Z

    .line 1695
    :goto_0
    return-void

    .line 1693
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->isLastItem:Z

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/high16 v3, 0x10000

    const/4 v2, 0x4

    .line 1635
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->updatePg:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$2100(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1685
    :goto_0
    return-void

    .line 1640
    :cond_0
    iput p2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->state:I

    .line 1641
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->state:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->isLastItem:Z

    if-eqz v0, :cond_2

    .line 1642
    const-string/jumbo v0, "wangdiyuan"

    const-string/jumbo v1, "\u6ed1\u5230\u5e95\u90e8"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isCheckAllReply:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1000(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1645
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getCommentsCount()I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$2200(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)I

    move-result v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$100()Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->getCount()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 1646
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadingBtm:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1600(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 1647
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->checkNetWorkIsAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1648
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadingBtm:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1600(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->showLoadingMoreAnim(Landroid/view/View;)V

    .line 1651
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->checkNetWorkIsAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1652
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadMoreHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1684
    :cond_2
    :goto_1
    const-string/jumbo v0, "wangdiyuan"

    const-string/jumbo v1, "\u6ed1\u52a8\u72b6\u6001\u6539\u53d8"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1656
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isCommentPage:Z

    if-eqz v0, :cond_5

    .line 1658
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getCommentsCount()I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$2200(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)I

    move-result v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$100()Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->getCount()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 1659
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadingBtm:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1600(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 1660
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->checkNetWorkIsAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1661
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadingBtm:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1600(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->showLoadingMoreAnim(Landroid/view/View;)V

    .line 1664
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->checkNetWorkIsAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1665
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadMoreHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1670
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getmRepostsTotalNumber()I

    move-result v0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1900()Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;->getCount()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 1671
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadingBtm:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1600(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_6

    .line 1672
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->checkNetWorkIsAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1673
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadingBtm:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1600(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->showLoadingMoreAnim(Landroid/view/View;)V

    .line 1676
    :cond_6
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->checkNetWorkIsAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1677
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadMoreHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1
.end method
