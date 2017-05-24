.class public Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;
.super Lcom/lenovo/scg/gallery3d/data/MediaSet;
.source "LocalTimeMergeAlbum.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum$FetchCache;
    }
.end annotation


# static fields
.field private static final PAGE_SIZE:I = 0x15

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

.field private mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum$FetchCache;

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
    .line 61
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    const-wide/16 v4, -0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/lenovo/scg/gallery3d/data/MediaSet;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;J)V

    .line 58
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mIndex:Ljava/util/TreeMap;

    .line 62
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mComparator:Ljava/util/Comparator;

    .line 63
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 64
    iput p4, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mBucketId:I

    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 66
    .local v3, "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v3, p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->addContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v3    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->reload()J

    .line 69
    return-void
.end method

.method private invalidateCache()V
    .locals 5

    .prologue
    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    array-length v1, v2

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 95
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum$FetchCache;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum$FetchCache;->invalidate()V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clear()V

    .line 98
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mIndex:Ljava/util/TreeMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    array-length v4, v4

    new-array v4, v4, [I

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method private updateData()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v1, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSet;>;"
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    array-length v5, v5

    if-nez v5, :cond_0

    move v3, v4

    .line 83
    .local v3, "supported":I
    :goto_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    array-length v5, v5

    new-array v5, v5, [Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum$FetchCache;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum$FetchCache;

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    array-length v2, v5

    .local v2, "n":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 85
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum$FetchCache;

    new-instance v6, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum$FetchCache;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    aget-object v7, v7, v0

    invoke-direct {v6, v7}, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum$FetchCache;-><init>(Lcom/lenovo/scg/gallery3d/data/MediaSet;)V

    aput-object v6, v5, v0

    .line 86
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSupportedOperations()I

    move-result v5

    and-int/2addr v3, v5

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    .end local v0    # "i":I
    .end local v2    # "n":I
    .end local v3    # "supported":I
    :cond_0
    const/4 v3, -0x1

    goto :goto_0

    .line 88
    .restart local v0    # "i":I
    .restart local v2    # "n":I
    .restart local v3    # "supported":I
    :cond_1
    iput v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSupportedOperation:I

    .line 89
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->clear()V

    .line 90
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    array-length v6, v6

    new-array v6, v6, [I

    invoke-virtual {v5, v4, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 4

    .prologue
    .line 256
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 257
    .local v3, "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->delete()V

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    .end local v3    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_0
    return-void
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 103
    iget v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mBucketId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "bucketId":Ljava/lang/String;
    sget-boolean v1, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_MEDIA_PROVIDER_FILES_TABLE:Z

    if-eqz v1, :cond_0

    .line 105
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

    .line 109
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

.method public getIndexOfItem(Lcom/lenovo/scg/gallery3d/data/Path;I)I
    .locals 1
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "hint"    # I

    .prologue
    .line 317
    const/4 v0, -0x1

    return v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 20
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
    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 127
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v9, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v17

    if-nez v17, :cond_1

    .line 130
    add-int v17, p1, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v2

    .line 131
    .local v2, "count1":I
    :goto_0
    move/from16 v5, p1

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_d

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum$FetchCache;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum$FetchCache;->getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 130
    .end local v2    # "count1":I
    .end local v5    # "i":I
    :cond_0
    add-int v2, p1, p2

    goto :goto_0

    .line 136
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v12, "sortList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v2

    .line 138
    .restart local v2    # "count1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v3

    .line 139
    .local v3, "count2":I
    const/16 v17, 0x0

    sub-int v18, p1, v3

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 140
    .local v13, "start1":I
    sub-int v17, v2, v13

    add-int v18, p1, p2

    sub-int v18, v18, v13

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 141
    const/4 v14, 0x0

    .line 142
    .local v14, "start2":I
    move v5, v13

    .restart local v5    # "i":I
    :goto_2
    add-int v17, v13, v2

    move/from16 v0, v17

    if-ge v5, v0, :cond_3

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum$FetchCache;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum$FetchCache;->getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum$FetchCache;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum$FetchCache;->getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 147
    :cond_3
    move v5, v14

    :goto_3
    add-int v17, v14, v3

    move/from16 v0, v17

    if-ge v5, v0, :cond_5

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum$FetchCache;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum$FetchCache;->getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v17

    if-eqz v17, :cond_4

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum$FetchCache;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum$FetchCache;->getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 152
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mComparator:Ljava/util/Comparator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 153
    sub-int v17, p1, v13

    add-int v17, v17, p2

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 154
    .local v15, "subCount":I
    :goto_4
    sub-int v5, p1, v13

    :goto_5
    if-ge v5, v15, :cond_d

    .line 155
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 153
    .end local v15    # "subCount":I
    :cond_6
    sub-int v17, p1, v13

    add-int v15, v17, p2

    goto :goto_4

    .line 165
    .end local v2    # "count1":I
    .end local v3    # "count2":I
    .end local v5    # "i":I
    .end local v9    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .end local v12    # "sortList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .end local v13    # "start1":I
    .end local v14    # "start2":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mIndex:Ljava/util/TreeMap;

    move-object/from16 v17, v0

    add-int/lit8 v18, p1, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v4

    .line 166
    .local v4, "head":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;[I>;"
    invoke-interface {v4}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 167
    .local v8, "markPos":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [I

    invoke-virtual/range {v17 .. v17}, [I->clone()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [I

    .line 168
    .local v16, "subPos":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v11, v0, [Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 170
    .local v11, "slot":[Lcom/lenovo/scg/gallery3d/data/MediaItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v10, v0

    .line 181
    .local v10, "size":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_6
    if-ge v5, v10, :cond_8

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum$FetchCache;

    move-object/from16 v17, v0

    aget-object v17, v17, v5

    aget v18, v16, v5

    invoke-virtual/range {v17 .. v18}, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum$FetchCache;->getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v17

    aput-object v17, v11, v5

    .line 181
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 184
    :cond_8
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .restart local v9    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    move v5, v8

    :goto_7
    add-int v17, p1, p2

    move/from16 v0, v17

    if-ge v5, v0, :cond_c

    .line 187
    const/4 v7, -0x1

    .line 188
    .local v7, "k":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_8
    if-ge v6, v10, :cond_b

    .line 189
    aget-object v17, v11, v6

    if-eqz v17, :cond_a

    .line 190
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mComparator:Ljava/util/Comparator;

    move-object/from16 v17, v0

    aget-object v18, v11, v6

    aget-object v19, v11, v7

    invoke-interface/range {v17 .. v19}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v17

    if-gez v17, :cond_a

    .line 191
    :cond_9
    move v7, v6

    .line 188
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 196
    :cond_b
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_e

    .line 210
    .end local v6    # "j":I
    .end local v7    # "k":I
    :cond_c
    const-string/jumbo v17, "wwf5"

    const-string v18, "LocalTimeMergeAlbum getMediaItem end1"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .end local v4    # "head":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;[I>;"
    .end local v8    # "markPos":I
    .end local v10    # "size":I
    .end local v11    # "slot":[Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .end local v16    # "subPos":[I
    :cond_d
    return-object v9

    .line 199
    .restart local v4    # "head":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;[I>;"
    .restart local v6    # "j":I
    .restart local v7    # "k":I
    .restart local v8    # "markPos":I
    .restart local v10    # "size":I
    .restart local v11    # "slot":[Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .restart local v16    # "subPos":[I
    :cond_e
    aget v17, v16, v7

    add-int/lit8 v17, v17, 0x1

    aput v17, v16, v7

    .line 200
    move/from16 v0, p1

    if-lt v5, v0, :cond_f

    .line 201
    aget-object v17, v11, v7

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum$FetchCache;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    aget v18, v16, v7

    invoke-virtual/range {v17 .. v18}, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum$FetchCache;->getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v17

    aput-object v17, v11, v7

    .line 206
    add-int/lit8 v17, v5, 0x1

    rem-int/lit8 v17, v17, 0x15

    if-nez v17, :cond_10

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mIndex:Ljava/util/TreeMap;

    move-object/from16 v17, v0

    add-int/lit8 v18, v5, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, [I->clone()Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_7
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->getTotalMediaItemCount()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    array-length v0, v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSupportedOperation:I

    return v0
.end method

.method public getTotalMediaItemCount()I
    .locals 6

    .prologue
    .line 223
    const/4 v1, 0x0

    .line 224
    .local v1, "count":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/data/MediaSet;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 225
    .local v4, "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v5

    add-int/2addr v1, v5

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    .end local v4    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_0
    return v1
.end method

.method public isCameraRoll()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 73
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    array-length v5, v5

    if-nez v5, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v4

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 75
    .local v3, "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->isCameraRoll()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 77
    .end local v3    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->notifyContentChanged()V

    .line 247
    return-void
.end method

.method public reload()J
    .locals 8

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    array-length v2, v3

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 234
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->reload()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mDataVersion:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    const/4 v0, 0x1

    .line 233
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    :cond_1
    if-eqz v0, :cond_2

    .line 237
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->nextVersionNumber()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mDataVersion:J

    .line 238
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->updateData()V

    .line 239
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->invalidateCache()V

    .line 241
    :cond_2
    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mDataVersion:J

    return-wide v4
.end method

.method public rotate(I)V
    .locals 4
    .param p1, "degrees"    # I

    .prologue
    .line 263
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 264
    .local v3, "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v3, p1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->rotate(I)V

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    .end local v3    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_0
    return-void
.end method

.method public setMediaItemCount(II)V
    .locals 2
    .param p1, "imageCount"    # I
    .param p2, "videoCount"    # I

    .prologue
    .line 217
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->setMediaItemCount(I)V

    .line 218
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;->mSources:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->setMediaItemCount(I)V

    .line 219
    return-void
.end method
