.class Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$DeleteItemListener;
.super Ljava/lang/Object;
.source "WbDraft.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$OnItemDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteItemListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$DeleteItemListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$1;

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$DeleteItemListener;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;)V

    return-void
.end method


# virtual methods
.method public onDeleted(Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;)V
    .locals 3
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    .prologue
    .line 388
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$DeleteItemListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mDraftItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 389
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 390
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$DeleteItemListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mDraftItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 392
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$DeleteItemListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mDraftItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 393
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$DeleteItemListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 395
    :cond_1
    return-void
.end method

.method public onShareFailed(Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;)V
    .locals 2
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    .prologue
    .line 400
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$DeleteItemListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mRunnableGetDrafts:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->access$900(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 401
    .local v0, "td":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 402
    return-void
.end method
