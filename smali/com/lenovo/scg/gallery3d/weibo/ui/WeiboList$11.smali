.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$11;
.super Ljava/lang/Object;
.source "WeiboList.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 2233
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 2238
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mState:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1500(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 2263
    :goto_0
    return-void

    .line 2239
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mState:I
    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1502(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;I)I

    .line 2241
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsInsertToDb:Z
    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1902(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Z)Z

    .line 2242
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsUpdateToDb:Z
    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2002(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Z)Z

    .line 2244
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeStatusesItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$600(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2245
    .local v0, "arrItemsOld":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;>;"
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    const-wide/16 v4, -0x1

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->loadFriendsStatuses(ZJI)Z
    invoke-static {v2, v6, v4, v5, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;ZJI)Z

    move-result v1

    .line 2247
    .local v1, "result":Z
    if-nez v1, :cond_1

    .line 2248
    const-string v2, "loadFriendsStatuses failed!"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 2249
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandlerTips:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;->setCount(I)V

    .line 2251
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->showTips(Ljava/util/ArrayList;)V
    invoke-static {v2, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2200(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Ljava/util/ArrayList;)V

    .line 2253
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsInsertToDb:Z
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1900(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2254
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->deleteDataFromDb(Z)V
    invoke-static {v2, v6}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Z)V

    .line 2255
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->insertToHomeListTime()V
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2400(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    .line 2257
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mRunnableGetGroup:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2900(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->SetWorkMode(I)V

    .line 2258
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mRunnableGetGroup:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2900(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->run()V

    .line 2260
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mState:I
    invoke-static {v2, v6}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1502(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;I)I

    .line 2261
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$11;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandlerNotify:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2500(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
