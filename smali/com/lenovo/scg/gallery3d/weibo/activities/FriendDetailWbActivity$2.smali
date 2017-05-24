.class Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;
.super Ljava/lang/Object;
.source "FriendDetailWbActivity.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 459
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mState:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 514
    :goto_0
    return-void

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mState:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 464
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    const v1, 0x7f0f0750

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    const v1, 0x7f0f072b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 470
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
