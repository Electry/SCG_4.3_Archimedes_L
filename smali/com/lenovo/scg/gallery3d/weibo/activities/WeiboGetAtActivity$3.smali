.class Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$3;
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
    .line 132
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mIsRefresh:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$002(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;Z)Z

    .line 136
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->getTencentAttentionList(Z)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$900(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;Z)V

    .line 137
    return-void
.end method
