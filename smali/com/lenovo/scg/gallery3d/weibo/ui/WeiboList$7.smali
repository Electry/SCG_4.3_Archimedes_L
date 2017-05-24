.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$7;
.super Ljava/lang/Object;
.source "WeiboList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 2107
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$7;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 2111
    const-string/jumbo v0, "panhui4_WeiboList"

    const-string/jumbo v1, "onClick load_more button"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$7;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->loadMore()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->access$1400(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    .line 2113
    return-void
.end method
