.class public Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;
.super Lcom/lenovo/scg/gallery3d/data/MediaSet;
.source "LocalMergeAlbum.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;
    }
.end annotation


# static fields
.field private static final PAGE_SIZE:I = 0x40

.field private static final TAG:Ljava/lang/String; = "LocalMergeAlbum"


# instance fields
.field private mBucketId:I

.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;

.field private mIndex:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private final mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

.field private mSupportedOperation:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/Path;Ljava/util/Comparator;[Lcom/lenovo/scg/gallery3d/data/MediaSet;I)V
    .locals 6
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p3, "sources"    # [Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .param p4, "bucketId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/data/Path;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/MediaItem;",
            ">;[",
            "Lcom/lenovo/scg/gallery3d/data/MediaSet;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    const-wide/16 v4, -0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/lenovo/scg/gallery3d/data/MediaSet;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;J)V

    .line 56
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    .line 60
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mComparator:Ljava/util/Comparator;

    .line 61
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 62
    iput p4, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mBucketId:I

    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 64
    .local v3, "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v3, p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->addContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v3    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->reload()J

    .line 67
    return-void
.end method

.method private invalidateCache()V
    .locals 5

    .prologue
    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    array-length v1, v2

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 93
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;->invalidate()V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clear()V

    .line 96
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    array-length v4, v4

    new-array v4, v4, [I

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method private updateData()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v1, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSet;>;"
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    array-length v5, v5

    if-nez v5, :cond_0

    move v3, v4

    .line 81
    .local v3, "supported":I
    :goto_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    array-length v5, v5

    new-array v5, v5, [Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    array-length v2, v5

    .local v2, "n":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 83
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;

    new-instance v6, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    aget-object v7, v7, v0

    invoke-direct {v6, v7}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;-><init>(Lcom/lenovo/scg/gallery3d/data/MediaSet;)V

    aput-object v6, v5, v0

    .line 84
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSupportedOperations()I

    move-result v5

    and-int/2addr v3, v5

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    .end local v0    # "i":I
    .end local v2    # "n":I
    .end local v3    # "supported":I
    :cond_0
    const/4 v3, -0x1

    goto :goto_0

    .line 86
    .restart local v0    # "i":I
    .restart local v2    # "n":I
    .restart local v3    # "supported":I
    :cond_1
    iput v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mSupportedOperation:I

    .line 87
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->clear()V

    .line 88
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    array-length v6, v6

    new-array v6, v6, [I

    invoke-virtual {v5, v4, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 4

    .prologue
    .line 231
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 232
    .local v3, "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->delete()V

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    .end local v3    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_0
    return-void
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 101
    iget v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mBucketId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "bucketId":Ljava/lang/String;
    sget-boolean v1, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_MEDIA_PROVIDER_FILES_TABLE:Z

    if-eqz v1, :cond_0

    .line 103
    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "bucketId"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 107
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "bucketId"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
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
    const-string/jumbo v14, "wwf5"

    const-string v15, "LocalMergeAlbum getMediaItem start"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    instance-of v14, v14, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;

    if-eqz v14, :cond_4

    .line 126
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    array-length v14, v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_4

    .line 127
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v8, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v14

    if-nez v14, :cond_1

    .line 130
    move/from16 v4, p1

    .local v4, "i":I
    :goto_0
    add-int v14, p1, p2

    if-ge v4, v14, :cond_0

    .line 131
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14, v4}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;->getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 133
    :cond_0
    const-string/jumbo v14, "wwf5"

    const-string v15, "LocalMergeAlbum getMediaItem end1"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_1
    return-object v8

    .line 135
    .end local v4    # "i":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v1

    .line 136
    .local v1, "count1":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v2

    .line 137
    .local v2, "count2":I
    const/4 v14, 0x0

    sub-int v15, p1, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 138
    .local v11, "start1":I
    sub-int v14, v1, v11

    add-int v15, p1, p2

    sub-int/2addr v15, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 139
    const/4 v12, 0x0

    .line 140
    .local v12, "start2":I
    move v4, v11

    .restart local v4    # "i":I
    :goto_2
    add-int v14, v11, v1

    if-ge v4, v14, :cond_2

    .line 141
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14, v4}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;->getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 143
    :cond_2
    move v4, v12

    :goto_3
    add-int v14, v12, v2

    if-ge v4, v14, :cond_3

    .line 144
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    invoke-virtual {v14, v4}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;->getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 146
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mComparator:Ljava/util/Comparator;

    invoke-static {v8, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 147
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v8, v2, v14}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 148
    const-string/jumbo v14, "wwf5"

    const-string v15, "LocalMergeAlbum getMediaItem end2"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 155
    .end local v1    # "count1":I
    .end local v2    # "count2":I
    .end local v4    # "i":I
    .end local v8    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .end local v11    # "start1":I
    .end local v12    # "start2":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    add-int/lit8 v15, p1, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v3

    .line 156
    .local v3, "head":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;[I>;"
    invoke-interface {v3}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 157
    .local v7, "markPos":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [I

    invoke-virtual {v14}, [I->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    .line 158
    .local v13, "subPos":[I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    array-length v14, v14

    new-array v10, v14, [Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 160
    .local v10, "slot":[Lcom/lenovo/scg/gallery3d/data/MediaItem;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    array-length v9, v14

    .line 163
    .local v9, "size":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    if-ge v4, v9, :cond_5

    .line 164
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;

    aget-object v14, v14, v4

    aget v15, v13, v4

    invoke-virtual {v14, v15}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;->getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v14

    aput-object v14, v10, v4

    .line 163
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 166
    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .restart local v8    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    move v4, v7

    :goto_5
    add-int v14, p1, p2

    if-ge v4, v14, :cond_9

    .line 169
    const/4 v6, -0x1

    .line 170
    .local v6, "k":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_6
    if-ge v5, v9, :cond_8

    .line 171
    aget-object v14, v10, v5

    if-eqz v14, :cond_7

    .line 172
    const/4 v14, -0x1

    if-eq v6, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mComparator:Ljava/util/Comparator;

    aget-object v15, v10, v5

    aget-object v16, v10, v6

    invoke-interface/range {v14 .. v16}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v14

    if-gez v14, :cond_7

    .line 173
    :cond_6
    move v6, v5

    .line 170
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 178
    :cond_8
    const/4 v14, -0x1

    if-ne v6, v14, :cond_a

    .line 192
    .end local v5    # "j":I
    .end local v6    # "k":I
    :cond_9
    const-string/jumbo v14, "wwf5"

    const-string v15, "LocalMergeAlbum getMediaItem end3"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 181
    .restart local v5    # "j":I
    .restart local v6    # "k":I
    :cond_a
    aget v14, v13, v6

    add-int/lit8 v14, v14, 0x1

    aput v14, v13, v6

    .line 182
    move/from16 v0, p1

    if-lt v4, v0, :cond_b

    .line 183
    aget-object v14, v10, v6

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;

    aget-object v14, v14, v6

    aget v15, v13, v6

    invoke-virtual {v14, v15}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum$FetchCache;->getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v14

    aput-object v14, v10, v6

    .line 188
    add-int/lit8 v14, v4, 0x1

    rem-int/lit8 v14, v14, 0x40

    if-nez v14, :cond_c

    .line 189
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    add-int/lit8 v15, v4, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13}, [I->clone()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_5
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->getTotalMediaItemCount()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    array-length v0, v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mSupportedOperation:I

    return v0
.end method

.method public getTotalMediaItemCount()I
    .locals 6

    .prologue
    .line 198
    const/4 v1, 0x0

    .line 199
    .local v1, "count":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/data/MediaSet;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 200
    .local v4, "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v5

    add-int/2addr v1, v5

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    .end local v4    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_0
    return v1
.end method

.method public isCameraRoll()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 71
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    array-length v5, v5

    if-nez v5, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v4

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 73
    .local v3, "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->isCameraRoll()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 75
    .end local v3    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->notifyContentChanged()V

    .line 222
    return-void
.end method

.method public reload()J
    .locals 8

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    array-length v2, v3

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 209
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->reload()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mDataVersion:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    const/4 v0, 0x1

    .line 208
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    :cond_1
    if-eqz v0, :cond_2

    .line 212
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->nextVersionNumber()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mDataVersion:J

    .line 213
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->updateData()V

    .line 214
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->invalidateCache()V

    .line 216
    :cond_2
    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mDataVersion:J

    return-wide v4
.end method

.method public rotate(I)V
    .locals 4
    .param p1, "degrees"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 239
    .local v3, "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v3, p1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->rotate(I)V

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    .end local v3    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_0
    return-void
.end method
