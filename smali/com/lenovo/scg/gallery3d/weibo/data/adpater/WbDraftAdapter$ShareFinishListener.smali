.class Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ShareFinishListener;
.super Ljava/lang/Object;
.source "WbDraftAdapter.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$OnShareFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareFinishListener"
.end annotation


# instance fields
.field private mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;)V
    .locals 1
    .param p2, "item"    # Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ShareFinishListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ShareFinishListener;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    .line 351
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ShareFinishListener;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    .line 352
    return-void
.end method

.method private delItem()V
    .locals 9

    .prologue
    .line 378
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ShareFinishListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mLock:[B
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$500(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)[B

    move-result-object v5

    monitor-enter v5

    .line 380
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ShareFinishListener;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    .line 381
    .local v3, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ShareFinishListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$100(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 382
    .local v0, "cr":Landroid/content/ContentResolver;
    iget v4, v3, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->id:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "id":Ljava/lang/String;
    sget-object v4, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$WbDraftTb;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 386
    iget-object v4, v3, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sFile:Ljava/lang/String;

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/util/UrlContants;->deleteShareFile(Ljava/lang/String;)V

    .line 387
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ShareFinishListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mDraftArr:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$600(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 388
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 389
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ShareFinishListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mDraftArr:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$600(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 392
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ShareFinishListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mListener:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$OnItemDeleteListener;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$700(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$OnItemDeleteListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 393
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ShareFinishListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mListener:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$OnItemDeleteListener;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$700(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$OnItemDeleteListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$OnItemDeleteListener;->onDeleted(Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;)V

    .line 396
    :cond_1
    monitor-exit v5

    .line 397
    return-void

    .line 396
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method


# virtual methods
.method public onShareFinished(Ljava/lang/Object;)V
    .locals 10
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 357
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 358
    .local v0, "bSuc":Z
    if-eqz v0, :cond_0

    .line 359
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ShareFinishListener;->delItem()V

    .line 360
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ShareFinishListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$200(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ShareFinishListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$100(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0949

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 361
    .local v4, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ShareFinishListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$200(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 375
    .end local v4    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ShareFinishListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mLock:[B
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$500(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)[B

    move-result-object v6

    monitor-enter v6

    .line 366
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ShareFinishListener;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    .line 367
    .local v3, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ShareFinishListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$100(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 368
    .local v1, "cr":Landroid/content/ContentResolver;
    iget v5, v3, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, "id":Ljava/lang/String;
    sget-object v5, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$WbDraftTb;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-virtual {v1, v5, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 370
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ShareFinishListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mListener:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$OnItemDeleteListener;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$700(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$OnItemDeleteListener;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 371
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ShareFinishListener;->this$0:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mListener:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$OnItemDeleteListener;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->access$700(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$OnItemDeleteListener;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$OnItemDeleteListener;->onShareFailed(Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;)V

    .line 373
    :cond_1
    monitor-exit v6

    goto :goto_0

    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method
