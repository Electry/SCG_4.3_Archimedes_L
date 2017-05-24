.class Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$5;
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
    .line 626
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    iput-boolean p2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$5;->val$isFollowedMe:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 632
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->setAvatar()V
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->access$100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;)V

    .line 635
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerllView:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 636
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerTxtView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->access$300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0f0757

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 637
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$FriendshipsEditAsyncTask;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$5;->val$isFollowedMe:Z

    invoke-direct {v0, v1, v3, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$FriendshipsEditAsyncTask;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;IZ)V

    .line 639
    .local v0, "task":Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$FriendshipsEditAsyncTask;
    new-array v1, v3, [Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$FriendshipsEditAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 640
    return-void
.end method
