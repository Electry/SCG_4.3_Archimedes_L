.class public Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;
.super Lcom/lenovo/scg/gallery3d/data/MediaSet;
.source "ClusterAlbumSet.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/data/ContentListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ClusterAlbumSet"


# instance fields
.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

.field private mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

.field private mFirstReloadDone:Z

.field private mKind:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;Lcom/lenovo/scg/gallery3d/data/MediaSet;I)V
    .locals 2
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "application"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    .param p3, "baseSet"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .param p4, "kind"    # I

    .prologue
    .line 43
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;J)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 44
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 45
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 46
    iput p4, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->mKind:I

    .line 47
    invoke-virtual {p3, p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->addContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    .line 48
    return-void
.end method

.method private updateClustersContents()V
    .locals 10

    .prologue
    .line 157
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 158
    .local v0, "existing":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    new-instance v9, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet$1;

    invoke-direct {v9, p0, v0}, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet$1;-><init>(Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;Ljava/util/HashSet;)V

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;)V

    .line 166
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 170
    .local v4, "n":I
    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 171
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v6

    .line 172
    .local v6, "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v5, "newPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 174
    .local v3, "m":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 175
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/scg/gallery3d/data/Path;

    .line 176
    .local v7, "p":Lcom/lenovo/scg/gallery3d/data/Path;
    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 177
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 180
    .end local v7    # "p":Lcom/lenovo/scg/gallery3d/data/Path;
    :cond_1
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;

    invoke-virtual {v8, v5}, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->setMediaItems(Ljava/util/ArrayList;)V

    .line 181
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 182
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 170
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 185
    .end local v2    # "j":I
    .end local v3    # "m":I
    .end local v5    # "newPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    .end local v6    # "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    :cond_3
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-object v1

    .line 54
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->notifyContentChanged()V

    .line 93
    return-void
.end method

.method public reload()J
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->mDataVersion:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 74
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->mFirstReloadDone:Z

    if-eqz v0, :cond_2

    .line 75
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->updateClustersContents()V

    .line 85
    :cond_0
    :goto_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->mDataVersion:J

    .line 87
    :cond_1
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->mDataVersion:J

    return-wide v0

    .line 77
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->updateClusters()V

    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0
.end method

.method public updateClusters()V
    .locals 14

    .prologue
    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 99
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v12}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    .line 100
    .local v6, "context":Landroid/content/Context;
    iget v12, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->mKind:I

    sparse-switch v12, :sswitch_data_0

    .line 122
    new-instance v5, Lcom/lenovo/scg/gallery3d/data/SizeClustering;

    invoke-direct {v5, v6}, Lcom/lenovo/scg/gallery3d/data/SizeClustering;-><init>(Landroid/content/Context;)V

    .line 126
    .local v5, "clustering":Lcom/lenovo/scg/gallery3d/data/Clustering;
    :goto_0
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v5, v12}, Lcom/lenovo/scg/gallery3d/data/Clustering;->run(Lcom/lenovo/scg/gallery3d/data/MediaSet;)V

    .line 127
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/Clustering;->getNumberOfClusters()I

    move-result v9

    .line 128
    .local v9, "n":I
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v12}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v7

    .line 129
    .local v7, "dataManager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v9, :cond_3

    .line 131
    invoke-virtual {v5, v8}, Lcom/lenovo/scg/gallery3d/data/Clustering;->getClusterName(I)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "childName":Ljava/lang/String;
    iget v12, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    .line 133
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->mPath:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/lenovo/scg/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v4

    .line 142
    .local v4, "childPath":Lcom/lenovo/scg/gallery3d/data/Path;
    :goto_2
    sget-object v13, Lcom/lenovo/scg/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 143
    :try_start_1
    invoke-virtual {v7, v4}, Lcom/lenovo/scg/gallery3d/data/DataManager;->peekMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;

    .line 144
    .local v2, "album":Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;
    if-nez v2, :cond_0

    .line 145
    new-instance v2, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;

    .end local v2    # "album":Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;
    invoke-direct {v2, v4, v7, p0}, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/data/DataManager;Lcom/lenovo/scg/gallery3d/data/MediaSet;)V

    .line 147
    .restart local v2    # "album":Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;
    :cond_0
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :try_start_2
    invoke-virtual {v5, v8}, Lcom/lenovo/scg/gallery3d/data/Clustering;->getCluster(I)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->setMediaItems(Ljava/util/ArrayList;)V

    .line 149
    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->setName(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v5, v8}, Lcom/lenovo/scg/gallery3d/data/Clustering;->getClusterCover(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;->setCoverMediaItem(Lcom/lenovo/scg/gallery3d/data/MediaItem;)V

    .line 151
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 105
    .end local v2    # "album":Lcom/lenovo/scg/gallery3d/data/ClusterAlbum;
    .end local v3    # "childName":Ljava/lang/String;
    .end local v4    # "childPath":Lcom/lenovo/scg/gallery3d/data/Path;
    .end local v5    # "clustering":Lcom/lenovo/scg/gallery3d/data/Clustering;
    .end local v7    # "dataManager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    .end local v8    # "i":I
    .end local v9    # "n":I
    :sswitch_0
    new-instance v5, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;

    invoke-direct {v5, v6}, Lcom/lenovo/scg/gallery3d/data/TimeClusteringSuper;-><init>(Landroid/content/Context;)V

    .line 107
    .restart local v5    # "clustering":Lcom/lenovo/scg/gallery3d/data/Clustering;
    goto :goto_0

    .line 109
    .end local v5    # "clustering":Lcom/lenovo/scg/gallery3d/data/Clustering;
    :sswitch_1
    new-instance v5, Lcom/lenovo/scg/gallery3d/data/LocationClustering;

    invoke-direct {v5, v6}, Lcom/lenovo/scg/gallery3d/data/LocationClustering;-><init>(Landroid/content/Context;)V

    .line 110
    .restart local v5    # "clustering":Lcom/lenovo/scg/gallery3d/data/Clustering;
    goto :goto_0

    .line 112
    .end local v5    # "clustering":Lcom/lenovo/scg/gallery3d/data/Clustering;
    :sswitch_2
    new-instance v5, Lcom/lenovo/scg/gallery3d/data/TagClustering;

    invoke-direct {v5, v6}, Lcom/lenovo/scg/gallery3d/data/TagClustering;-><init>(Landroid/content/Context;)V

    .line 113
    .restart local v5    # "clustering":Lcom/lenovo/scg/gallery3d/data/Clustering;
    goto :goto_0

    .line 118
    .end local v5    # "clustering":Lcom/lenovo/scg/gallery3d/data/Clustering;
    :sswitch_3
    new-instance v5, Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera;

    invoke-direct {v5, v6}, Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera;-><init>(Landroid/content/Context;)V

    .line 119
    .restart local v5    # "clustering":Lcom/lenovo/scg/gallery3d/data/Clustering;
    goto :goto_0

    .line 134
    .restart local v3    # "childName":Ljava/lang/String;
    .restart local v7    # "dataManager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    .restart local v8    # "i":I
    .restart local v9    # "n":I
    :cond_1
    iget v12, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_2

    .line 135
    move-object v0, v5

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/SizeClustering;

    move-object v12, v0

    invoke-virtual {v12, v8}, Lcom/lenovo/scg/gallery3d/data/SizeClustering;->getMinSize(I)J

    move-result-wide v10

    .line 136
    .local v10, "minSize":J
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->mPath:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v12, v10, v11}, Lcom/lenovo/scg/gallery3d/data/Path;->getChild(J)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v4

    .line 137
    .restart local v4    # "childPath":Lcom/lenovo/scg/gallery3d/data/Path;
    goto :goto_2

    .line 138
    .end local v4    # "childPath":Lcom/lenovo/scg/gallery3d/data/Path;
    .end local v10    # "minSize":J
    :cond_2
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/data/ClusterAlbumSet;->mPath:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v12, v8}, Lcom/lenovo/scg/gallery3d/data/Path;->getChild(I)Lcom/lenovo/scg/gallery3d/data/Path;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    .restart local v4    # "childPath":Lcom/lenovo/scg/gallery3d/data/Path;
    goto :goto_2

    .line 147
    :catchall_0
    move-exception v12

    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v12

    .line 153
    .end local v3    # "childName":Ljava/lang/String;
    .end local v4    # "childPath":Lcom/lenovo/scg/gallery3d/data/Path;
    .end local v5    # "clustering":Lcom/lenovo/scg/gallery3d/data/Clustering;
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "dataManager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    .end local v8    # "i":I
    .end local v9    # "n":I
    :catchall_1
    move-exception v12

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v12

    .restart local v5    # "clustering":Lcom/lenovo/scg/gallery3d/data/Clustering;
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v7    # "dataManager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    .restart local v8    # "i":I
    .restart local v9    # "n":I
    :cond_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 154
    return-void

    .line 100
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x9 -> :sswitch_3
    .end sparse-switch
.end method
