.class Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$1;
.super Ljava/lang/Object;
.source "CommentsListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->loadData(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;J)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;

    iput-wide p2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$1;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 111
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$1;->val$id:J

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->loadFriendsStatuses(ZJ)V
    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;ZJ)V

    .line 112
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity$1;->val$id:J

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->loadComments(ZJ)V
    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;->access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;ZJ)V

    .line 113
    return-void
.end method
