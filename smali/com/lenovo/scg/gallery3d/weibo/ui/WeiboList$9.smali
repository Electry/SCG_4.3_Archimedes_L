.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$9;
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
    .line 2171
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$9;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 2176
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$9;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mState:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1500(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 2209
    :goto_0
    return-void

    .line 2177
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$9;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mState:I
    invoke-static {v2, v6}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1502(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;I)I

    .line 2179
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$9;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsInsertToDb:Z
    invoke-static {v2, v6}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1902(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Z)Z

    .line 2180
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$9;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsUpdateToDb:Z
    invoke-static {v2, v6}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2002(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Z)Z

    .line 2182
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$9;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeStatusesItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$600(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2183
    .local v0, "arrItemsOld":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;>;"
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$9;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    const-wide/16 v4, -0x1

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->loadFriendsStatuses(ZJI)Z
    invoke-static {v2, v3, v4, v5, v6}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;ZJI)Z

    move-result v1

    .line 2188
    .local v1, "result":Z
    if-nez v1, :cond_1

    .line 2189
    const-string v2, "loadFriendsStatuses failed!"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 2190
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$9;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandlerTips:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;->setCount(I)V

    .line 2192
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$9;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->showTips(Ljava/util/ArrayList;)V
    invoke-static {v2, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2200(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Ljava/util/ArrayList;)V

    .line 2195
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$9;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsInsertToDb:Z
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1900(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2196
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$9;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->deleteDataFromDb(Z)V
    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Z)V

    .line 2197
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$9;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->insertToHomeListTime()V
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2400(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    .line 2200
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$9;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mState:I
    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1502(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;I)I

    .line 2201
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$9;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandlerNotify:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2500(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2204
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 2205
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$9;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$900(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->loadAccount()V

    .line 2206
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$9;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->updateUserInfo()V
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2600(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2207
    :catch_0
    move-exception v2

    goto :goto_0
.end method
