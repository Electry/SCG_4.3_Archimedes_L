.class Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$1;
.super Ljava/lang/Object;
.source "FriendDetailWbAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

.field final synthetic val$td:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$1;->val$td:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mDeleteRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->access$000(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;)Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->dismissDialog()Z

    .line 627
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter$1;->val$td:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 628
    return-void
.end method
