.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$15;
.super Ljava/lang/Object;
.source "WeiboList.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnLoadMoreListener;


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
    .line 2507
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$15;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 1

    .prologue
    .line 2511
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$15;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->loadMore()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1400(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    .line 2512
    return-void
.end method
