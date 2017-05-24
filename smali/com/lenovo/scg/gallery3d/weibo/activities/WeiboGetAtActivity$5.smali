.class Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$5;
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
    .line 149
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

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
    .line 153
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSearchResultList:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$1100(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSearchResultList:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$1100(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v2

    long-to-int v3, p4

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->isSelected()Z

    move-result v1

    .line 156
    .local v1, "s":Z
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSearchResultList:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$1100(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;

    move-result-object v2

    long-to-int v3, p4

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;

    if-nez v1, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->setSelected(Z)V

    .line 157
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$5;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mUserListAdapter:Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    .end local v1    # "s":Z
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    .line 156
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v1    # "s":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
