.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$8;
.super Ljava/lang/Object;
.source "WeiboList.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->goToFriendPicListActivity()V
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
    .line 2123
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$8;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2127
    const-string v1, "enter onRefresh"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2128
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$8;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mState:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1500(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$8;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mState:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1500(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$8;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsLoadGroupPicList:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1600(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2129
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$8;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$400(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->onRefreshComplete()V

    .line 2130
    const-string v1, "last fresh is not finished, will return"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2146
    :goto_0
    return-void

    .line 2134
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$8;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->checkNetWorkIsAvaliable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2135
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$8;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$400(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->onRefreshComplete()V

    .line 2136
    const-string/jumbo v1, "net is not available, mWbContentList.onRefreshComplete() called !"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0

    .line 2141
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$8;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f072b

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2143
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$8;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mRunnableRefresh:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2144
    .local v0, "td":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
