.class public Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;
.super Lcom/lenovo/scg/gallery3d/data/MediaSet;
.source "FilterDeleteSetTimeSurper.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;,
        Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Request;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final REQUEST_ADD:I = 0x1

.field private static final REQUEST_CLEAR:I = 0x3

.field private static final REQUEST_REMOVE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "wangwf1_FilterDeleteSetTimeSurper"


# instance fields
.field private final mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

.field private mCurrent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaItemCount:I

.field private mRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/data/MediaSet;)V
    .locals 2
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "baseSet"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .prologue
    .line 82
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;J)V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mRequests:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mCurrent:Ljava/util/ArrayList;

    .line 83
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->addContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    .line 85
    return-void
.end method

.method private sendRequest(ILcom/lenovo/scg/gallery3d/data/Path;I)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p3, "indexHint"    # I

    .prologue
    .line 314
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Request;

    invoke-direct {v0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Request;-><init>(ILcom/lenovo/scg/gallery3d/data/Path;I)V

    .line 315
    .local v0, "r":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Request;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mRequests:Ljava/util/ArrayList;

    monitor-enter v2

    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->notifyContentChanged()V

    .line 319
    return-void

    .line 317
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addDeletion(Lcom/lenovo/scg/gallery3d/data/Path;I)V
    .locals 1
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "indexHint"    # I

    .prologue
    .line 327
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->sendRequest(ILcom/lenovo/scg/gallery3d/data/Path;I)V

    .line 328
    return-void
.end method

.method public clearDeletion()V
    .locals 3

    .prologue
    .line 335
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->sendRequest(ILcom/lenovo/scg/gallery3d/data/Path;I)V

    .line 336
    return-void
.end method

.method public getIndexOfItem(Lcom/lenovo/scg/gallery3d/data/Path;I)I
    .locals 13
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "hint"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v9, -0x1

    .line 347
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 348
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 349
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;

    iget-object v8, v8, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    if-ne v8, p1, :cond_1

    move p2, v9

    .line 405
    .end local p2    # "hint":I
    :cond_0
    :goto_1
    return p2

    .line 348
    .restart local p2    # "hint":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    .end local v1    # "i":I
    :cond_2
    const/4 v7, 0x0

    .line 358
    .local v7, "start":I
    const/4 v6, 0x0

    .line 359
    .local v6, "result":I
    const/4 v0, 0x0

    .line 360
    .local v0, "findStart":Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v8

    if-ge v1, v8, :cond_7

    .line 361
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v8, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v5

    .line 362
    .local v5, "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    if-nez v0, :cond_5

    .line 363
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v8

    add-int/2addr v8, v7

    add-int/lit8 v8, v8, -0x1

    if-ge v8, p2, :cond_3

    .line 364
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v8

    add-int/2addr v7, v8

    .line 360
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 367
    :cond_3
    sub-int v8, p2, v7

    const/4 v10, 0x1

    invoke-virtual {v5, v8, v10}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v4

    .line 368
    .local v4, "itemsOnlyOne":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    invoke-virtual {p0, p1, v4}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->getIndexOf(Lcom/lenovo/scg/gallery3d/data/Path;Ljava/util/ArrayList;)I

    move-result v2

    .line 369
    .local v2, "index":I
    if-ne v2, v9, :cond_0

    .line 372
    sub-int v8, p2, v7

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v10

    sub-int v11, p2, v7

    sub-int/2addr v10, v11

    invoke-virtual {v5, v8, v10}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    .line 373
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    invoke-virtual {p0, p1, v3}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->getIndexOf(Lcom/lenovo/scg/gallery3d/data/Path;Ljava/util/ArrayList;)I

    move-result v2

    .line 374
    if-eq v2, v9, :cond_4

    .line 375
    add-int/2addr p2, v2

    goto :goto_1

    .line 377
    :cond_4
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v8

    add-int v6, v7, v8

    .line 378
    const/4 v0, 0x1

    .line 379
    goto :goto_3

    .line 381
    .end local v2    # "index":I
    .end local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .end local v4    # "itemsOnlyOne":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    :cond_5
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v8

    invoke-virtual {v5, v12, v8}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    .line 382
    .restart local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    invoke-virtual {p0, p1, v3}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->getIndexOf(Lcom/lenovo/scg/gallery3d/data/Path;Ljava/util/ArrayList;)I

    move-result v2

    .line 383
    .restart local v2    # "index":I
    if-eq v2, v9, :cond_6

    .line 384
    add-int p2, v6, v2

    goto :goto_1

    .line 386
    :cond_6
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v8

    add-int/2addr v6, v8

    goto :goto_3

    .line 390
    .end local v2    # "index":I
    .end local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .end local v5    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_7
    const/4 v7, 0x0

    .line 391
    const/4 v6, 0x0

    .line 392
    const/4 v1, 0x0

    :goto_4
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v8

    if-ge v1, v8, :cond_9

    .line 393
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v8, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v5

    .line 394
    .restart local v5    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v8

    sub-int v10, p2, v6

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v5, v12, v8}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    .line 395
    .restart local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    invoke-virtual {p0, p1, v3}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->getIndexOf(Lcom/lenovo/scg/gallery3d/data/Path;Ljava/util/ArrayList;)I

    move-result v2

    .line 396
    .restart local v2    # "index":I
    if-eq v2, v9, :cond_8

    .line 397
    add-int p2, v6, v2

    goto/16 :goto_1

    .line 399
    :cond_8
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v8

    add-int/2addr v6, v8

    .line 400
    sub-int v8, p2, v6

    if-gtz v8, :cond_a

    .end local v2    # "index":I
    .end local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .end local v5    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_9
    move p2, v9

    .line 405
    goto/16 :goto_1

    .line 392
    .restart local v2    # "index":I
    .restart local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .restart local v5    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 17
    .param p1, "start"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    if-gtz p2, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    :cond_0
    return-object v1

    .line 125
    :cond_1
    add-int v15, p1, p2

    add-int/lit8 v4, v15, -0x1

    .line 126
    .local v4, "end":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 129
    .local v14, "n":I
    const/4 v6, 0x0

    .line 130
    .local v6, "i":I
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v14, :cond_2

    .line 131
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;

    .line 132
    .local v3, "d":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;
    iget v15, v3, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;->index:I

    sub-int/2addr v15, v6

    move/from16 v0, p1

    if-le v15, v0, :cond_5

    .line 135
    .end local v3    # "d":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;
    :cond_2
    move v10, v6

    .line 136
    .local v10, "j":I
    :goto_1
    if-ge v10, v14, :cond_3

    .line 137
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;

    .line 138
    .restart local v3    # "d":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;
    iget v15, v3, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;->index:I

    sub-int/2addr v15, v10

    if-le v15, v4, :cond_6

    .line 143
    .end local v3    # "d":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    sub-int v15, v10, v6

    add-int v15, v15, p2

    invoke-direct {v1, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 144
    .local v1, "base":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    add-int v7, p1, v6

    .line 145
    .local v7, "indexCount":I
    sub-int v15, v10, v6

    add-int v8, p2, v15

    .line 146
    .local v8, "itemCount":I
    const/4 v5, 0x0

    .line 147
    .local v5, "findOk":Z
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v15}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v15

    if-ge v11, v15, :cond_8

    .line 148
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v15, v11}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v13

    .line 149
    .local v13, "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    if-nez v5, :cond_a

    .line 150
    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v15

    sub-int v15, v7, v15

    if-lez v15, :cond_7

    .line 151
    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v15

    sub-int/2addr v7, v15

    .line 147
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 130
    .end local v1    # "base":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .end local v5    # "findOk":Z
    .end local v7    # "indexCount":I
    .end local v8    # "itemCount":I
    .end local v10    # "j":I
    .end local v11    # "k":I
    .end local v13    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .restart local v3    # "d":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 136
    .restart local v10    # "j":I
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 154
    .end local v3    # "d":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;
    .restart local v1    # "base":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .restart local v5    # "findOk":Z
    .restart local v7    # "indexCount":I
    .restart local v8    # "itemCount":I
    .restart local v11    # "k":I
    .restart local v13    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_7
    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v15

    sub-int/2addr v15, v7

    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 155
    .local v2, "currCount":I
    invoke-virtual {v13, v7, v2}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v9

    .line 156
    .local v9, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 157
    const/4 v5, 0x1

    .line 158
    sub-int/2addr v8, v2

    .line 159
    if-nez v8, :cond_9

    .line 177
    .end local v2    # "currCount":I
    .end local v9    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .end local v13    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_8
    add-int/lit8 v12, v10, -0x1

    .local v12, "m":I
    :goto_3
    if-lt v12, v6, :cond_0

    .line 178
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;

    .line 179
    .restart local v3    # "d":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;
    iget v15, v3, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;->index:I

    add-int v16, p1, v6

    sub-int v11, v15, v16

    .line 180
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 177
    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    .line 162
    .end local v3    # "d":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;
    .end local v12    # "m":I
    .restart local v2    # "currCount":I
    .restart local v9    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .restart local v13    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_9
    sget-boolean v15, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->$assertionsDisabled:Z

    if-nez v15, :cond_4

    if-gtz v8, :cond_4

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 165
    .end local v2    # "currCount":I
    .end local v9    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    :cond_a
    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v15

    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 166
    .restart local v2    # "currCount":I
    const/4 v15, 0x0

    invoke-virtual {v13, v15, v2}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v9

    .line 167
    .restart local v9    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 168
    sub-int/2addr v8, v2

    .line 169
    if-eqz v8, :cond_8

    .line 172
    sget-boolean v15, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->$assertionsDisabled:Z

    if-nez v15, :cond_4

    if-gtz v8, :cond_4

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mMediaItemCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfDeletions()I
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mCurrent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->notifyContentChanged()V

    .line 324
    return-void
.end method

.method public reload()J
    .locals 31

    .prologue
    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->reload()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mDataVersion:J

    move-wide/from16 v28, v0

    cmp-long v26, v26, v28

    if-lez v26, :cond_0

    const/16 v21, 0x1

    .line 189
    .local v21, "newData":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mRequests:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 190
    if-nez v21, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mRequests:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_1

    .line 191
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mDataVersion:J

    move-wide/from16 v26, v0

    monitor-exit v28

    .line 310
    :goto_1
    return-wide v26

    .line 188
    .end local v21    # "newData":Z
    :cond_0
    const/16 v21, 0x0

    goto :goto_0

    .line 193
    .restart local v21    # "newData":Z
    :cond_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mRequests:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v9, v0, :cond_6

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mRequests:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Request;

    .line 195
    .local v23, "r":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Request;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Request;->type:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_0

    .line 193
    :cond_2
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 198
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 200
    .local v20, "n":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_4
    move/from16 v0, v20

    if-ge v15, v0, :cond_3

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Request;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 203
    :cond_3
    move/from16 v0, v20

    if-ne v15, v0, :cond_2

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    new-instance v27, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Request;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    move-object/from16 v29, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Request;->indexHint:I

    move/from16 v30, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;I)V

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 226
    .end local v9    # "i":I
    .end local v15    # "j":I
    .end local v20    # "n":I
    .end local v23    # "r":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Request;
    :catchall_0
    move-exception v26

    monitor-exit v28
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v26

    .line 200
    .restart local v9    # "i":I
    .restart local v15    # "j":I
    .restart local v20    # "n":I
    .restart local v23    # "r":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Request;
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 210
    .end local v15    # "j":I
    .end local v20    # "n":I
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 211
    .restart local v20    # "n":I
    const/4 v15, 0x0

    .restart local v15    # "j":I
    :goto_5
    move/from16 v0, v20

    if-ge v15, v0, :cond_2

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Request;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_5

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 211
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 220
    .end local v15    # "j":I
    .end local v20    # "n":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    .line 225
    .end local v23    # "r":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Request;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mRequests:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    .line 226
    monitor-exit v28
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_11

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;->index:I

    move/from16 v19, v0

    .line 233
    .local v19, "minIndex":I
    move/from16 v17, v19

    .line 234
    .local v17, "maxIndex":I
    const/4 v9, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v9, v0, :cond_7

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;

    .line 236
    .local v5, "d":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;
    iget v0, v5, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;->index:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 237
    iget v0, v5, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;->index:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 234
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 241
    .end local v5    # "d":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v20

    .line 242
    .restart local v20    # "n":I
    add-int/lit8 v26, v19, -0x5

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 243
    .local v8, "from":I
    add-int/lit8 v26, v17, 0x5

    move/from16 v0, v26

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v25

    .line 248
    .local v25, "to":I
    const/4 v14, 0x0

    .line 250
    .local v14, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    :try_start_2
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    sub-int v26, v25, v8

    move/from16 v0, v26

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 256
    .restart local v14    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    move v10, v8

    .line 257
    .local v10, "indexCount":I
    sub-int v12, v25, v8

    .line 258
    .local v12, "itemCount":I
    const/4 v7, 0x0

    .line 259
    .local v7, "findOk":Z
    const/16 v16, 0x0

    .local v16, "k":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v26

    move/from16 v0, v16

    move/from16 v1, v26

    if-ge v0, v1, :cond_a

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v18

    .line 261
    .local v18, "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    if-nez v7, :cond_d

    .line 262
    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v26

    sub-int v26, v10, v26

    if-lez v26, :cond_9

    .line 263
    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v26

    sub-int v10, v10, v26

    .line 259
    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 251
    .end local v7    # "findOk":Z
    .end local v10    # "indexCount":I
    .end local v12    # "itemCount":I
    .end local v14    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .end local v16    # "k":I
    .end local v18    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :catch_0
    move-exception v6

    .line 252
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 253
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mDataVersion:J

    move-wide/from16 v26, v0

    goto/16 :goto_1

    .line 266
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v7    # "findOk":Z
    .restart local v10    # "indexCount":I
    .restart local v12    # "itemCount":I
    .restart local v14    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .restart local v16    # "k":I
    .restart local v18    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_9
    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v26

    sub-int v26, v26, v10

    move/from16 v0, v26

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 267
    .local v4, "currCount":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v13

    .line 268
    .local v13, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 269
    const/4 v7, 0x1

    .line 270
    sub-int/2addr v12, v4

    .line 271
    if-nez v12, :cond_c

    .line 288
    .end local v4    # "currCount":I
    .end local v13    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .end local v18    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_a
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v24, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;>;"
    const/4 v9, 0x0

    :goto_8
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v9, v0, :cond_10

    .line 290
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 291
    .local v11, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-nez v11, :cond_e

    .line 289
    :cond_b
    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 274
    .end local v11    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .end local v24    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;>;"
    .restart local v4    # "currCount":I
    .restart local v13    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .restart local v18    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_c
    sget-boolean v26, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->$assertionsDisabled:Z

    if-nez v26, :cond_8

    if-gtz v12, :cond_8

    new-instance v26, Ljava/lang/AssertionError;

    invoke-direct/range {v26 .. v26}, Ljava/lang/AssertionError;-><init>()V

    throw v26

    .line 277
    .end local v4    # "currCount":I
    .end local v13    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    :cond_d
    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v26

    move/from16 v0, v26

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 278
    .restart local v4    # "currCount":I
    const/16 v26, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1, v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v13

    .line 279
    .restart local v13    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 280
    sub-int/2addr v12, v4

    .line 281
    if-eqz v12, :cond_a

    .line 284
    sget-boolean v26, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->$assertionsDisabled:Z

    if-nez v26, :cond_8

    if-gtz v12, :cond_8

    new-instance v26, Ljava/lang/AssertionError;

    invoke-direct/range {v26 .. v26}, Ljava/lang/AssertionError;-><init>()V

    throw v26

    .line 292
    .end local v4    # "currCount":I
    .end local v13    # "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .end local v18    # "mediaSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .restart local v11    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .restart local v24    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;>;"
    :cond_e
    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v22

    .line 294
    .local v22, "p":Lcom/lenovo/scg/gallery3d/data/Path;
    const/4 v15, 0x0

    .restart local v15    # "j":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v15, v0, :cond_b

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;

    .line 296
    .restart local v5    # "d":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;
    iget-object v0, v5, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_f

    .line 297
    add-int v26, v8, v9

    move/from16 v0, v26

    iput v0, v5, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;->index:I

    .line 298
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_9

    .line 294
    :cond_f
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 304
    .end local v5    # "d":Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;
    .end local v11    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .end local v15    # "j":I
    .end local v22    # "p":Lcom/lenovo/scg/gallery3d/data/Path;
    :cond_10
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mCurrent:Ljava/util/ArrayList;

    .line 308
    .end local v7    # "findOk":Z
    .end local v8    # "from":I
    .end local v10    # "indexCount":I
    .end local v12    # "itemCount":I
    .end local v14    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .end local v16    # "k":I
    .end local v17    # "maxIndex":I
    .end local v19    # "minIndex":I
    .end local v20    # "n":I
    .end local v24    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper$Deletion;>;"
    .end local v25    # "to":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mCurrent:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    sub-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mMediaItemCount:I

    .line 309
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->nextVersionNumber()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mDataVersion:J

    .line 310
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->mDataVersion:J

    move-wide/from16 v26, v0

    goto/16 :goto_1

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public removeDeletion(Lcom/lenovo/scg/gallery3d/data/Path;)V
    .locals 2
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 331
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->sendRequest(ILcom/lenovo/scg/gallery3d/data/Path;I)V

    .line 332
    return-void
.end method
