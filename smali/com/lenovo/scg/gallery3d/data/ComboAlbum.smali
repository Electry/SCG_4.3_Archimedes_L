.class public Lcom/lenovo/scg/gallery3d/data/ComboAlbum;
.super Lcom/lenovo/scg/gallery3d/data/MediaSet;
.source "ComboAlbum.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/data/ContentListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ComboAlbum"


# instance fields
.field private mName:Ljava/lang/String;

.field private final mSets:[Lcom/lenovo/scg/gallery3d/data/MediaSet;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/Path;[Lcom/lenovo/scg/gallery3d/data/MediaSet;Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "mediaSets"    # [Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;->nextVersionNumber()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5}, Lcom/lenovo/scg/gallery3d/data/MediaSet;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;J)V

    .line 37
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;->mSets:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;->mSets:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 39
    .local v3, "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v3, p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->addContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    .end local v3    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_0
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;->mName:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 9
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
    .line 46
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;->mSets:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/data/MediaSet;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v6, v0, v3

    .line 49
    .local v6, "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    if-eqz v6, :cond_2

    .line 51
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v7

    .line 52
    .local v7, "size":I
    const/4 v8, 0x1

    if-ge p2, v8, :cond_1

    .line 64
    .end local v6    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .end local v7    # "size":I
    :cond_0
    return-object v4

    .line 53
    .restart local v6    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .restart local v7    # "size":I
    :cond_1
    if-ge p1, v7, :cond_4

    .line 54
    add-int v8, p1, p2

    if-gt v8, v7, :cond_3

    move v1, p2

    .line 55
    .local v1, "fetchCount":I
    :goto_1
    invoke-virtual {v6, p1, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 56
    .local v2, "fetchItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 57
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr p2, v8

    .line 58
    const/4 p1, 0x0

    .line 47
    .end local v1    # "fetchCount":I
    .end local v2    # "fetchItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .end local v7    # "size":I
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    .restart local v7    # "size":I
    :cond_3
    sub-int v1, v7, p1

    goto :goto_1

    .line 60
    :cond_4
    sub-int/2addr p1, v7

    goto :goto_2
.end method

.method public getMediaItemCount()I
    .locals 6

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 70
    .local v1, "count":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;->mSets:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/data/MediaSet;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 72
    .local v4, "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    if-eqz v4, :cond_0

    .line 74
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v5

    add-int/2addr v1, v5

    .line 70
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    .end local v4    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_1
    return v1
.end method

.method public getMediaSets()[Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;->mSets:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;->notifyContentChanged()V

    .line 112
    return-void
.end method

.method public reload()J
    .locals 8

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;->mSets:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    array-length v2, v3

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 99
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;->mSets:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;->mSets:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->reload()J

    move-result-wide v4

    .line 102
    .local v4, "version":J
    iget-wide v6, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;->mDataVersion:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    const/4 v0, 0x1

    .line 97
    .end local v4    # "version":J
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;->nextVersionNumber()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;->mDataVersion:J

    .line 106
    :cond_2
    iget-wide v6, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;->mDataVersion:J

    return-wide v6
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
    .line 116
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;->mSets:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {p0, v0, p1}, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;->requestSyncOnMultipleSets([Lcom/lenovo/scg/gallery3d/data/MediaSet;Lcom/lenovo/scg/gallery3d/data/MediaSet$SyncListener;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v0

    return-object v0
.end method

.method public useNameOfChild(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;->mSets:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;->mSets:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;->mName:Ljava/lang/String;

    .line 92
    :cond_0
    return-void
.end method
