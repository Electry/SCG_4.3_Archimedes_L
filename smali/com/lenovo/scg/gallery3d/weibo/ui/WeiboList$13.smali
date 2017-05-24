.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$13;
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
    .line 2363
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$13;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2367
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$13;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$13;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mCurrentStatusMaxId:J
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3200(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)J

    move-result-wide v4

    const/4 v3, 0x1

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->loadFriendsStatuses(ZJI)Z
    invoke-static {v2, v6, v4, v5, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;ZJI)Z

    move-result v1

    .line 2368
    .local v1, "result":Z
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$13;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandlerLoadMore:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2369
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$13;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandlerLoadMore:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2370
    return-void
.end method
