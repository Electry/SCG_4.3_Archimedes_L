.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$17;
.super Ljava/lang/Object;
.source "WeiboList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->loadDataFromNet(J)V
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
    .line 2855
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$17;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2860
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$17;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->deleteDataFromDb(Z)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Z)V

    .line 2861
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$17;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    const-wide/16 v2, -0x1

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->loadFriendsStatuses(ZJI)Z
    invoke-static {v0, v1, v2, v3, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$2100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;ZJI)Z

    .line 2863
    return-void
.end method
