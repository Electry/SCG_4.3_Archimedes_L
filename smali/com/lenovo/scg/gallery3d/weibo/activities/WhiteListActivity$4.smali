.class Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$4;
.super Ljava/lang/Thread;
.source "WhiteListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

.field final synthetic val$data:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$4;->val$data:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1092
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$4;->val$data:Landroid/database/Cursor;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->transferCursorToItem(Landroid/database/Cursor;)Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1094
    .local v0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;>;"
    if-eqz v0, :cond_0

    .line 1099
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->sendMassage(ILjava/lang/Object;)V
    invoke-static {v1, v4, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;ILjava/lang/Object;)V

    .line 1114
    :goto_0
    return-void

    .line 1103
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mIsSearchMode:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$500(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1104
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->sendMassage(ILjava/lang/Object;)V
    invoke-static {v1, v3, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;ILjava/lang/Object;)V

    goto :goto_0

    .line 1108
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->isNetworkAvaliable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1109
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->sendMassage(ILjava/lang/Object;)V
    invoke-static {v1, v3, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;ILjava/lang/Object;)V

    goto :goto_0

    .line 1113
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    invoke-virtual {v1, v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->getFriendsListFromNet(ZZ)Ljava/util/List;

    goto :goto_0
.end method
