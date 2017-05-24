.class Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$1;
.super Ljava/lang/Object;
.source "SingleImageViewActivity2.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadData()V
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
    .line 373
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    const/4 v6, 0x1

    .line 379
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsListView:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;->getHeaderViewsCount()I

    move-result v2

    if-lt v2, v6, :cond_0

    .line 380
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$100()Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    move-result-object v2

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->getDataItem(I)Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-result-object v0

    .line 384
    .local v0, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    const-class v3, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 385
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v2, "id"

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 386
    const-string v2, "cid"

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getCid()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 388
    const-string/jumbo v2, "weibo_data_item"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 389
    const-string/jumbo v2, "weibo_isreply"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 390
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->startActivity(Landroid/content/Intent;)V

    .line 391
    return-void

    .line 382
    .end local v0    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_0
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->access$100()Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->getDataItem(I)Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-result-object v0

    .restart local v0    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    goto :goto_0
.end method
