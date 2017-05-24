.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$10;
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
    .line 2212
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 2216
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$400(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->onRefreshComplete()V

    .line 2217
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->moveToFirst()V

    .line 2219
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandlerTips:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2220
    .local v0, "msgTip":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandlerTips:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2222
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsLoadGroupPicList:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1600(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2223
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsLoadGroupPicList:Z
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1602(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Z)Z

    .line 2224
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbGroupListener:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2225
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbGroupListener:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;->onWbGroupPicListGetEnd()V

    .line 2229
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$10;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    const/4 v2, 0x1

    const/4 v3, 0x0

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->sendMassage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2800(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;ILjava/lang/Object;)V

    .line 2230
    return-void
.end method
