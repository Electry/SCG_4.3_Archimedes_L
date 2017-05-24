.class Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$4;
.super Ljava/lang/Object;
.source "WeiboGetAtActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 139
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "v"    # Landroid/view/View;
    .param p3, "index"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaRecentAtUserList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$1000(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaRecentAtUserList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$1000(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v1

    long-to-int v2, p4

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->isSelected()Z

    move-result v0

    .line 145
    .local v0, "s":Z
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaRecentAtUserList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$1000(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v1

    long-to-int v2, p4

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->setSelected(Z)V

    .line 146
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mUserListAdapter:Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 145
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
