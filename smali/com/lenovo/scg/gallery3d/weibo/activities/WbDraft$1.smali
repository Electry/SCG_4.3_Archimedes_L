.class Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$1;
.super Ljava/lang/Object;
.source "WbDraft.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doRun()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 313
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mDraftItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 314
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;

    .line 315
    .local v6, "context":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f08e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 316
    .local v10, "sHint":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 317
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$WbDraftTb;->CONTENT_URI:Landroid/net/Uri;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->PROJECTION_DRAFT:[Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->access$200()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 318
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 319
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 321
    :cond_0
    new-instance v8, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    invoke-direct {v8}, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;-><init>()V

    .line 322
    .local v8, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;
    const/16 v1, 0x9

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v8, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->id:I

    .line 323
    iput-object v10, v8, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sTitle:Ljava/lang/String;

    .line 324
    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sContent:Ljava/lang/String;

    .line 325
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v8, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->lStatusId:J

    .line 326
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sScreenName:Ljava/lang/String;

    .line 327
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v8, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->action:I

    .line 328
    const/16 v1, 0x8

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v8, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->lTime:J

    .line 330
    const/4 v1, 0x5

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sLat:Ljava/lang/String;

    .line 331
    const/4 v1, 0x6

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sLong:Ljava/lang/String;

    .line 333
    iget v1, v8, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->action:I

    if-ne v1, v12, :cond_1

    .line 334
    const/4 v1, 0x4

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 335
    .local v9, "sFile":Ljava/lang/String;
    iput-object v9, v8, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sFile:Ljava/lang/String;

    .line 336
    const/4 v1, 0x7

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v8, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->iShareType:I

    .line 339
    .end local v9    # "sFile":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mDraftItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v11, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 341
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    .end local v8    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 345
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 346
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->checkLeakFile()V
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;->access$400(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft;)V

    .line 347
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 304
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$1;->doRun()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "get draft error: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
