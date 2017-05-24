.class public Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;
.super Lcom/lenovo/scg/gallery3d/data/MediaSet;
.source "ClusterAlbum.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/data/ContentListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ClusterAlbum"


# instance fields
.field private mClusterAlbumSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

.field private mCover:Lcom/lenovo/scg/gallery3d/data/MediaItem;

.field private mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;

.field private mName:Ljava/lang/String;

.field private mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/data/DataManager;Lcom/lenovo/scg/gallery3d/data/MediaSet;)V
    .locals 2
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "dataManager"    # Lcom/lenovo/scg/gallery3d/data/DataManager;
    .param p3, "clusterAlbumSet"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .prologue
    .line 37
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;J)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->mName:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;

    .line 39
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->mClusterAlbumSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->mClusterAlbumSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->addContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    .line 41
    return-void
.end method

.method public static getMediaItemFromPath(Ljava/util/ArrayList;IILcom/lenovo/scg/gallery3d/data/DataManager;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "dataManager"    # Lcom/lenovo/scg/gallery3d/data/DataManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/Path;",
            ">;II",
            "Lcom/lenovo/scg/gallery3d/data/DataManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt p1, v6, :cond_1

    .line 81
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 98
    :cond_0
    return-object v4

    .line 83
    :cond_1
    add-int v6, p1, p2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 84
    .local v2, "end":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 85
    .local v5, "subset":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    sub-int v6, v2, p1

    new-array v0, v6, [Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 86
    .local v0, "buf":[Lcom/lenovo/scg/gallery3d/data/MediaItem;
    new-instance v1, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum$1;

    invoke-direct {v1, v0}, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum$1;-><init>([Lcom/lenovo/scg/gallery3d/data/MediaItem;)V

    .line 93
    .local v1, "consumer":Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;
    const/4 v6, 0x0

    invoke-virtual {p3, v5, v1, v6}, Lcom/lenovo/scg/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;I)V

    .line 94
    new-instance v4, Ljava/util/ArrayList;

    sub-int v6, v2, p1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_0

    .line 96
    aget-object v6, v0, v3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 4

    .prologue
    .line 132
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum$2;-><init>(Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;)V

    .line 142
    .local v0, "consumer":Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/lenovo/scg/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;I)V

    .line 143
    return-void
.end method

.method protected enumerateMediaItems(Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;I)I
    .locals 2
    .param p1, "consumer"    # Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;
    .param p2, "startIndex"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1, p2}, Lcom/lenovo/scg/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;I)V

    .line 104
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCoverMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->mCover:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->mCover:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getCoverMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 2
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
    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;

    invoke-static {v0, p1, p2, v1}, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->getMediaItemFromPath(Ljava/util/ArrayList;IILcom/lenovo/scg/gallery3d/data/DataManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getMediaItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 127
    const/16 v0, 0x405

    return v0
.end method

.method public getTotalMediaItemCount()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->notifyContentChanged()V

    .line 123
    return-void
.end method

.method public reload()J
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->mClusterAlbumSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->mDataVersion:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 115
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->mDataVersion:J

    .line 117
    :cond_0
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->mDataVersion:J

    return-wide v0
.end method

.method public setCoverMediaItem(Lcom/lenovo/scg/gallery3d/data/MediaItem;)V
    .locals 0
    .param p1, "cover"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->mCover:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 45
    return-void
.end method

.method setMediaItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/Path;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    .line 54
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->mName:Ljava/lang/String;

    .line 62
    return-void
.end method
