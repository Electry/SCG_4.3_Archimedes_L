.class Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$9;
.super Ljava/lang/Object;
.source "SingleImageViewActivity2.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->showRepost()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V
    .locals 0

    .prologue
    .line 2205
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$9;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2211
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "category_weibo_sina_singleimage"

    const-string v4, "action_weibo_sina_singleimage_click_repostreply"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2214
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$1900()Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;

    move-result-object v2

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;->getDataItem(I)Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-result-object v1

    .line 2215
    .local v1, "mItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$9;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isReplay:Z
    invoke-static {v2, v7}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$2502(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;Z)Z

    .line 2217
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$9;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    const-class v3, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2218
    .local v0, "mIntent":Landroid/content/Intent;
    const-string/jumbo v2, "weibo_data_item"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2219
    const-string/jumbo v2, "weibo_uid"

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$700()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2220
    const-string/jumbo v2, "weibo_isreply"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2221
    const-string/jumbo v2, "weibo_repost_item"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2222
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$9;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->startActivity(Landroid/content/Intent;)V

    .line 2224
    return-void
.end method
