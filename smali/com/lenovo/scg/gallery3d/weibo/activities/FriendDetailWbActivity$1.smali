.class Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$1;
.super Landroid/os/Handler;
.source "FriendDetailWbActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;
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
    .line 404
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 408
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 409
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->notifyDataSetChanged()V

    .line 412
    :cond_0
    return-void
.end method
