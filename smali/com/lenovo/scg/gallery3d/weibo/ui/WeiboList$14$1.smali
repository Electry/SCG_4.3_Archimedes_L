.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14$1;
.super Ljava/lang/Thread;
.source "WeiboList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;)V
    .locals 0

    .prologue
    .line 2477
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2480
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    const/4 v1, 0x1

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->loadMoreUserImageForWeek(Z)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$3400(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Z)V

    .line 2481
    return-void
.end method
