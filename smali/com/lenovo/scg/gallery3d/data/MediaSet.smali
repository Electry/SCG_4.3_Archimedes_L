.class public abstract Lcom/lenovo/scg/gallery3d/data/MediaSet;
.super Lcom/lenovo/scg/gallery3d/data/MediaObject;
.source "MediaSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/data/MediaSet$MultiSetSyncFuture;,
        Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;,
        Lcom/lenovo/scg/gallery3d/data/MediaSet$SyncListener;
    }
.end annotation


# static fields
.field private static final FUTURE_STUB:Lcom/lenovo/scg/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final INDEX_NOT_FOUND:I = -0x1

.field public static final MEDIAITEM_BATCH_FETCH_COUNT:I = 0x1f4

.field public static final SYNC_RESULT_CANCELLED:I = 0x1

.field public static final SYNC_RESULT_ERROR:I = 0x2

.field public static final SYNC_RESULT_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaSet"


# instance fields
.field private mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/ContentListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 318
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/MediaSet$1;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet$1;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/MediaSet;->FUTURE_STUB:Lcom/lenovo/scg/gallery3d/util/Future;

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/Path;J)V
    .locals 2
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "version"    # J

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/data/MediaObject;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;J)V

    .line 164
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    .line 68
    return-void
.end method


# virtual methods
.method public addContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/data/ContentListener;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected enumerateMediaItems(Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;I)I
    .locals 9
    .param p1, "consumer"    # Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;
    .param p2, "startIndex"    # I

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v6

    .line 230
    .local v6, "total":I
    const/4 v5, 0x0

    .line 231
    .local v5, "start":I
    :goto_0
    if-ge v5, v6, :cond_1

    .line 232
    const/16 v7, 0x1f4

    sub-int v8, v6, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 233
    .local v0, "count":I
    invoke-virtual {p0, v5, v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    .line 234
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "n":I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 235
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 236
    .local v2, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    add-int v7, p2, v5

    add-int/2addr v7, v1

    invoke-interface {p1, v7, v2}, Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;->consume(ILcom/lenovo/scg/gallery3d/data/MediaItem;)V

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 238
    .end local v2    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_0
    add-int/2addr v5, v0

    .line 239
    goto :goto_0

    .line 240
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .end local v4    # "n":I
    :cond_1
    return v6
.end method

.method public enumerateMediaItems(Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;)V
    .locals 1
    .param p1, "consumer"    # Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->enumerateMediaItems(Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;I)I

    .line 214
    return-void
.end method

.method protected enumerateTotalMediaItems(Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;I)I
    .locals 12
    .param p1, "consumer"    # Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;
    .param p2, "startIndex"    # I

    .prologue
    const/4 v11, 0x0

    .line 258
    const/4 v6, 0x0

    .line 259
    .local v6, "start":I
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->enumerateMediaItems(Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;I)I

    move-result v8

    add-int/2addr v6, v8

    .line 260
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v4

    .line 261
    .local v4, "m":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_4

    .line 263
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v7

    .line 264
    .local v7, "tmp":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    const/4 v1, 0x0

    .line 266
    .local v1, "isFound":Z
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getSelectedMap()Ljava/util/Map;

    move-result-object v5

    .line 268
    .local v5, "selectedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x1

    invoke-virtual {v7, v11, v8}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;

    .line 269
    .local v2, "item":Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;
    iget-object v8, v2, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    iget-object v9, v2, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "itemFilePath":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 271
    const/4 v1, 0x1

    .line 293
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 294
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v8

    add-int v9, p2, v6

    invoke-virtual {v8, p1, v9}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;I)I

    move-result v8

    add-int/2addr v6, v8

    .line 261
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_2
    const-string v8, "/DCIM/Camera/continuous_"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 273
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v8

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->checkCCBucketIdinDb(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 274
    const/4 v1, 0x0

    goto :goto_1

    .line 276
    :cond_3
    const/4 v1, 0x1

    .line 277
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->saveBucketId2Db(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 297
    .end local v1    # "isFound":Z
    .end local v2    # "item":Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;
    .end local v3    # "itemFilePath":Ljava/lang/String;
    .end local v5    # "selectedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "tmp":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_4
    return v6
.end method

.method public enumerateTotalMediaItems(Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;)V
    .locals 1
    .param p1, "consumer"    # Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;I)I

    .line 218
    return-void
.end method

.method public getCoverMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 90
    const/4 v4, 0x1

    invoke-virtual {p0, v5, v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 91
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 96
    :goto_0
    return-object v4

    .line 92
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v3

    .local v3, "n":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 93
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getCoverMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    .line 94
    .local v0, "cover":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v0, :cond_1

    move-object v4, v0

    goto :goto_0

    .line 92
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 96
    .end local v0    # "cover":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getDetails()Lcom/lenovo/scg/gallery3d/data/MediaDetails;
    .locals 3

    .prologue
    .line 204
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/data/MediaObject;->getDetails()Lcom/lenovo/scg/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 205
    .local v0, "details":Lcom/lenovo/scg/gallery3d/data/MediaDetails;
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 206
    return-object v0
.end method

.method protected getIndexOf(Lcom/lenovo/scg/gallery3d/data/Path;Ljava/util/ArrayList;)I
    .locals 4
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/data/Path;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/MediaItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 154
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 156
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/data/MediaObject;

    .line 157
    .local v1, "item":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/lenovo/scg/gallery3d/data/MediaObject;->mPath:Lcom/lenovo/scg/gallery3d/data/Path;

    if-ne v3, p1, :cond_0

    .line 159
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    :goto_1
    return v0

    .line 154
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "item":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getIndexOfItem(Lcom/lenovo/scg/gallery3d/data/Path;I)I
    .locals 7
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "hint"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v3, 0x1f4

    .line 136
    add-int/lit16 v6, p2, -0xfa

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 137
    .local v2, "start":I
    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 138
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    invoke-virtual {p0, p1, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getIndexOf(Lcom/lenovo/scg/gallery3d/data/Path;Ljava/util/ArrayList;)I

    move-result v0

    .line 139
    .local v0, "index":I
    if-eq v0, v5, :cond_0

    add-int v3, v2, v0

    .line 147
    :goto_0
    return v3

    .line 142
    :cond_0
    if-nez v2, :cond_1

    move v2, v3

    .line 143
    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 145
    :goto_2
    invoke-virtual {p0, p1, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getIndexOf(Lcom/lenovo/scg/gallery3d/data/Path;Ljava/util/ArrayList;)I

    move-result v0

    .line 146
    if-eq v0, v5, :cond_2

    add-int v3, v2, v0

    goto :goto_0

    :cond_1
    move v2, v4

    .line 142
    goto :goto_1

    .line 147
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v3, :cond_3

    move v3, v5

    goto :goto_0

    .line 148
    :cond_3
    add-int/lit16 v2, v2, 0x1f4

    .line 149
    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_2
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 1
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
    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 104
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public getTotalMediaItemCount()I
    .locals 4

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v2

    .line 126
    .local v2, "total":I
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 127
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    return v2
.end method

.method public isCameraRoll()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public notifyContentChanged()V
    .locals 3

    .prologue
    .line 193
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/data/ContentListener;

    .line 194
    .local v1, "listener":Lcom/lenovo/scg/gallery3d/data/ContentListener;
    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/data/ContentListener;->onContentDirty()V

    goto :goto_0

    .line 196
    .end local v1    # "listener":Lcom/lenovo/scg/gallery3d/data/ContentListener;
    :cond_0
    return-void
.end method

.method public abstract reload()J
.end method

.method public removeContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/data/ContentListener;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public requestSync(Lcom/lenovo/scg/gallery3d/data/MediaSet$SyncListener;)Lcom/lenovo/scg/gallery3d/util/Future;
    .locals 1
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/data/MediaSet$SyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/data/MediaSet$SyncListener;",
            ")",
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet$SyncListener;->onSyncDone(Lcom/lenovo/scg/gallery3d/data/MediaSet;I)V

    .line 315
    sget-object v0, Lcom/lenovo/scg/gallery3d/data/MediaSet;->FUTURE_STUB:Lcom/lenovo/scg/gallery3d/util/Future;

    return-object v0
.end method

.method protected requestSyncOnMultipleSets([Lcom/lenovo/scg/gallery3d/data/MediaSet;Lcom/lenovo/scg/gallery3d/data/MediaSet$SyncListener;)Lcom/lenovo/scg/gallery3d/util/Future;
    .locals 1
    .param p1, "sets"    # [Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .param p2, "listener"    # Lcom/lenovo/scg/gallery3d/data/MediaSet$SyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/lenovo/scg/gallery3d/data/MediaSet;",
            "Lcom/lenovo/scg/gallery3d/data/MediaSet$SyncListener;",
            ")",
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/MediaSet$MultiSetSyncFuture;

    invoke-direct {v0, p0, p1, p2}, Lcom/lenovo/scg/gallery3d/data/MediaSet$MultiSetSyncFuture;-><init>(Lcom/lenovo/scg/gallery3d/data/MediaSet;[Lcom/lenovo/scg/gallery3d/data/MediaSet;Lcom/lenovo/scg/gallery3d/data/MediaSet$SyncListener;)V

    return-object v0
.end method

.method public setMediaItemCount(II)V
    .locals 0
    .param p1, "imageCount"    # I
    .param p2, "videoCount"    # I

    .prologue
    .line 76
    return-void
.end method
