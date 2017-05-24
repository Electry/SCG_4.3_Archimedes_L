.class Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$9;
.super Ljava/lang/Object;
.source "WeiboGetAtActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->initView()V
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
    .line 263
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$9;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$400(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->onRefreshComplete()V

    .line 266
    return-void
.end method
