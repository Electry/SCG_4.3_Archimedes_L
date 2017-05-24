.class public Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera;
.super Lcom/lenovo/scg/gallery3d/data/Clustering;
.source "TimeAllClusteringForCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera$1;,
        Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera$SmallItem;,
        Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera$DateComparator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "TimeAllClustering"

.field private static final sDateComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera$SmallItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field mPaths:Ljava/util/ArrayList;
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
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-class v0, Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera;->$assertionsDisabled:Z

    .line 31
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera$DateComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera$DateComparator;-><init>(Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera$1;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera;->sDateComparator:Ljava/util/Comparator;

    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/data/Clustering;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method public getCluster(I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera;->mPaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getClusterCover(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClusterName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 105
    const-string/jumbo v0, "nullName"

    return-object v0
.end method

.method public getNumberOfClusters()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run(Lcom/lenovo/scg/gallery3d/data/MediaSet;)V
    .locals 17
    .param p1, "baseSet"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .prologue
    .line 53
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v3, "buf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera$SmallItem;>;"
    sget-boolean v14, Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera;->$assertionsDisabled:Z

    if-nez v14, :cond_0

    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;

    if-nez v14, :cond_0

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    :cond_0
    move-object/from16 v4, p1

    .line 63
    check-cast v4, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;

    .line 64
    .local v4, "comboMediaSet":Lcom/lenovo/scg/gallery3d/data/ComboAlbum;
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;->getMediaSets()[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v2

    .local v2, "arr$":[Lcom/lenovo/scg/gallery3d/data/MediaSet;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v10, :cond_3

    aget-object v13, v2, v7

    .line 65
    .local v13, "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "/local/all/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 66
    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v5

    .line 67
    .local v5, "count":I
    const/4 v14, 0x0

    invoke-virtual {v13, v14, v5}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v9

    .line 68
    .local v9, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    .local v11, "n":I
    :goto_1
    if-ge v6, v11, :cond_2

    .line 69
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 70
    .local v8, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    new-instance v12, Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera$SmallItem;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera$SmallItem;-><init>(Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera;)V

    .line 71
    .local v12, "s":Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera$SmallItem;
    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v14

    iput-object v14, v12, Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera$SmallItem;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 72
    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v14

    iput-wide v14, v12, Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera$SmallItem;->dateInMs:J

    .line 73
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 76
    .end local v5    # "count":I
    .end local v6    # "i":I
    .end local v8    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .end local v9    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .end local v11    # "n":I
    .end local v12    # "s":Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera$SmallItem;
    :cond_1
    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v9

    .line 77
    .restart local v9    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_2

    .line 78
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 79
    .restart local v8    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    new-instance v12, Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera$SmallItem;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera$SmallItem;-><init>(Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera;)V

    .line 80
    .restart local v12    # "s":Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera$SmallItem;
    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v14

    iput-object v14, v12, Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera$SmallItem;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 81
    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v14

    iput-wide v14, v12, Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera$SmallItem;->dateInMs:J

    .line 82
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .end local v8    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .end local v12    # "s":Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera$SmallItem;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 86
    .end local v9    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .end local v13    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_3
    sget-object v14, Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera;->sDateComparator:Ljava/util/Comparator;

    invoke-static {v3, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 87
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera;->mPaths:Ljava/util/ArrayList;

    .line 88
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v6, v14, :cond_4

    .line 89
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera$SmallItem;

    iget-object v14, v14, Lcom/lenovo/scg/gallery3d/data/TimeAllClusteringForCamera$SmallItem;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 91
    :cond_4
    return-void
.end method
