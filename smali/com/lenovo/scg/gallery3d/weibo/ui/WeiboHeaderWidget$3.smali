.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$3;
.super Ljava/lang/Object;
.source "WeiboHeaderWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->updateFriendship(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

.field final synthetic val$isFollowedMe:Z


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;Z)V
    .locals 0

    .prologue
    .line 578
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    iput-boolean p2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$3;->val$isFollowedMe:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 584
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->setAvatar()V
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->access$100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;)V

    .line 587
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerllView:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 588
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerTxtView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->access$300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0f0757

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 589
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$FriendshipsEditAsyncTask;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$3;->val$isFollowedMe:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$FriendshipsEditAsyncTask;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;IZ)V

    .line 591
    .local v0, "task":Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$FriendshipsEditAsyncTask;
    new-array v1, v4, [Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$FriendshipsEditAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 592
    return-void
.end method
