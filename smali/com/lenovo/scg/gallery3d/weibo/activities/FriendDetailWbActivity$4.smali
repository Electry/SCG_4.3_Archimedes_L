.class Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$4;
.super Ljava/lang/Object;
.source "FriendDetailWbActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 591
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 596
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$800(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$800(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setSelection(I)V

    .line 598
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->access$800(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->smoothScrollToPosition(I)V

    .line 600
    :cond_0
    return-void
.end method
