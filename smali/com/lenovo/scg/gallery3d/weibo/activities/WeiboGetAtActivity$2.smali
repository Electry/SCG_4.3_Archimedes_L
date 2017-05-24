.class Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$2;
.super Ljava/lang/Object;
.source "WeiboGetAtActivity.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mIsRefresh:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$002(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;Z)Z

    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->getSinaAttentionList(Z)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$800(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;Z)V

    .line 129
    return-void
.end method
