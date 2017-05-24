.class public Lcom/lenovo/scg/gallery3d/data/TimeClustering;
.super Lcom/lenovo/scg/gallery3d/data/Clustering;
.source "TimeClustering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/data/TimeClustering$DateComparator;
    }
.end annotation


# static fields
.field private static CLUSTER_SPLIT_MULTIPLIER:I = 0x0

.field private static final GEOGRAPHIC_DISTANCE_CUTOFF_IN_MILES:I = 0x14

.field private static final MAX_CLUSTER_SPLIT_TIME_IN_MS:J = 0x6ddd00L

.field private static final MAX_MAX_CLUSTER_SIZE:I = 0x32

.field private static final MAX_MIN_CLUSTER_SIZE:I = 0xf

.field private static final MIN_CLUSTER_SPLIT_TIME_IN_MS:J = 0xea60L

.field private static final MIN_MAX_CLUSTER_SIZE:I = 0x14

.field private static final MIN_MIN_CLUSTER_SIZE:I = 0x8

.field private static final MIN_PARTITION_CHANGE_FACTOR:I = 0x2

.field private static final NUM_CLUSTERS_TARGETED:I = 0x9

.field private static final PARTITION_CLUSTER_SPLIT_TIME_FACTOR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TimeClustering"

.field private static final sDateComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClusterSplitTime:J

.field private mClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/Cluster;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrCluster:Lcom/lenovo/scg/gallery3d/data/Cluster;

.field private mLargeClusterSplitTime:J

.field private mMaxClusterSize:I

.field private mMinClusterSize:I

.field private mNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x3

    sput v0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->CLUSTER_SPLIT_MULTIPLIER:I

    .line 89
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/TimeClustering$DateComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/data/TimeClustering$DateComparator;-><init>(Lcom/lenovo/scg/gallery3d/data/TimeClustering$1;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->sDateComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/data/Clustering;-><init>()V

    .line 81
    const-wide/32 v0, 0x3763b0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mClusterSplitTime:J

    .line 83
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mClusterSplitTime:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mLargeClusterSplitTime:J

    .line 85
    const/16 v0, 0xb

    iput v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mMinClusterSize:I

    .line 87
    const/16 v0, 0x23

    iput v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mMaxClusterSize:I

    .line 100
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mContext:Landroid/content/Context;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/Cluster;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/data/Cluster;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/lenovo/scg/gallery3d/data/Cluster;

    .line 103
    return-void
.end method

.method private compute(Lcom/lenovo/scg/gallery3d/data/SmallItem;)V
    .locals 10
    .param p1, "currentItem"    # Lcom/lenovo/scg/gallery3d/data/SmallItem;

    .prologue
    .line 200
    if-eqz p1, :cond_7

    .line 201
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 202
    .local v2, "numClusters":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/lenovo/scg/gallery3d/data/Cluster;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/Cluster;->size()I

    move-result v3

    .line 203
    .local v3, "numCurrClusterItems":I
    const/4 v0, 0x0

    .line 204
    .local v0, "geographicallySeparateItem":Z
    const/4 v1, 0x0

    .line 208
    .local v1, "itemAddedToCurrentCluster":Z
    if-nez v3, :cond_1

    .line 209
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/lenovo/scg/gallery3d/data/Cluster;

    invoke-virtual {v5, p1}, Lcom/lenovo/scg/gallery3d/data/Cluster;->addItem(Lcom/lenovo/scg/gallery3d/data/SmallItem;)V

    .line 251
    .end local v0    # "geographicallySeparateItem":Z
    .end local v1    # "itemAddedToCurrentCluster":Z
    .end local v2    # "numClusters":I
    .end local v3    # "numCurrClusterItems":I
    :cond_0
    :goto_0
    return-void

    .line 211
    .restart local v0    # "geographicallySeparateItem":Z
    .restart local v1    # "itemAddedToCurrentCluster":Z
    .restart local v2    # "numClusters":I
    .restart local v3    # "numCurrClusterItems":I
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/lenovo/scg/gallery3d/data/Cluster;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/Cluster;->getLastItem()Lcom/lenovo/scg/gallery3d/data/SmallItem;

    move-result-object v4

    .line 212
    .local v4, "prevItem":Lcom/lenovo/scg/gallery3d/data/SmallItem;
    invoke-static {v4, p1}, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->isGeographicallySeparated(Lcom/lenovo/scg/gallery3d/data/SmallItem;Lcom/lenovo/scg/gallery3d/data/SmallItem;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 213
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/lenovo/scg/gallery3d/data/Cluster;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    const/4 v0, 0x1

    .line 227
    :goto_1
    if-nez v1, :cond_0

    .line 228
    new-instance v5, Lcom/lenovo/scg/gallery3d/data/Cluster;

    invoke-direct {v5}, Lcom/lenovo/scg/gallery3d/data/Cluster;-><init>()V

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/lenovo/scg/gallery3d/data/Cluster;

    .line 229
    if-eqz v0, :cond_2

    .line 230
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/lenovo/scg/gallery3d/data/Cluster;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/lenovo/scg/gallery3d/data/Cluster;->mGeographicallySeparatedFromPrevCluster:Z

    .line 232
    :cond_2
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/lenovo/scg/gallery3d/data/Cluster;

    invoke-virtual {v5, p1}, Lcom/lenovo/scg/gallery3d/data/Cluster;->addItem(Lcom/lenovo/scg/gallery3d/data/SmallItem;)V

    goto :goto_0

    .line 215
    :cond_3
    iget v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mMaxClusterSize:I

    if-le v3, v5, :cond_4

    .line 216
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->splitAndAddCurrentCluster()V

    goto :goto_1

    .line 217
    :cond_4
    invoke-static {v4, p1}, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->timeDistance(Lcom/lenovo/scg/gallery3d/data/SmallItem;Lcom/lenovo/scg/gallery3d/data/SmallItem;)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mClusterSplitTime:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_5

    .line 218
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/lenovo/scg/gallery3d/data/Cluster;

    invoke-virtual {v5, p1}, Lcom/lenovo/scg/gallery3d/data/Cluster;->addItem(Lcom/lenovo/scg/gallery3d/data/SmallItem;)V

    .line 219
    const/4 v1, 0x1

    goto :goto_1

    .line 220
    :cond_5
    if-lez v2, :cond_6

    iget v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mMinClusterSize:I

    if-ge v3, v5, :cond_6

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/lenovo/scg/gallery3d/data/Cluster;

    iget-boolean v5, v5, Lcom/lenovo/scg/gallery3d/data/Cluster;->mGeographicallySeparatedFromPrevCluster:Z

    if-nez v5, :cond_6

    .line 221
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mergeAndAddCurrentCluster()V

    goto :goto_1

    .line 223
    :cond_6
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/lenovo/scg/gallery3d/data/Cluster;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 236
    .end local v0    # "geographicallySeparateItem":Z
    .end local v1    # "itemAddedToCurrentCluster":Z
    .end local v2    # "numClusters":I
    .end local v3    # "numCurrClusterItems":I
    .end local v4    # "prevItem":Lcom/lenovo/scg/gallery3d/data/SmallItem;
    :cond_7
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/lenovo/scg/gallery3d/data/Cluster;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/Cluster;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 237
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 238
    .restart local v2    # "numClusters":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/lenovo/scg/gallery3d/data/Cluster;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/Cluster;->size()I

    move-result v3

    .line 241
    .restart local v3    # "numCurrClusterItems":I
    iget v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mMaxClusterSize:I

    if-le v3, v5, :cond_8

    .line 242
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->splitAndAddCurrentCluster()V

    .line 248
    :goto_2
    new-instance v5, Lcom/lenovo/scg/gallery3d/data/Cluster;

    invoke-direct {v5}, Lcom/lenovo/scg/gallery3d/data/Cluster;-><init>()V

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/lenovo/scg/gallery3d/data/Cluster;

    goto :goto_0

    .line 243
    :cond_8
    if-lez v2, :cond_9

    iget v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mMinClusterSize:I

    if-ge v3, v5, :cond_9

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/lenovo/scg/gallery3d/data/Cluster;

    iget-boolean v5, v5, Lcom/lenovo/scg/gallery3d/data/Cluster;->mGeographicallySeparatedFromPrevCluster:Z

    if-nez v5, :cond_9

    .line 244
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mergeAndAddCurrentCluster()V

    goto :goto_2

    .line 246
    :cond_9
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/lenovo/scg/gallery3d/data/Cluster;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private getPartitionIndexForCurrentCluster()I
    .locals 26

    .prologue
    .line 274
    const/4 v14, -0x1

    .line 275
    .local v14, "partitionIndex":I
    const/high16 v10, 0x40000000    # 2.0f

    .line 276
    .local v10, "largestChange":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/lenovo/scg/gallery3d/data/Cluster;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/data/Cluster;->getItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 277
    .local v3, "currClusterItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/SmallItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/lenovo/scg/gallery3d/data/Cluster;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/data/Cluster;->size()I

    move-result v13

    .line 278
    .local v13, "numCurrClusterItems":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mMinClusterSize:I

    .line 281
    .local v11, "minClusterSize":I
    add-int/lit8 v22, v11, 0x1

    move/from16 v0, v22

    if-le v13, v0, :cond_3

    .line 282
    move v5, v11

    .local v5, "i":I
    :goto_0
    sub-int v22, v13, v11

    move/from16 v0, v22

    if-ge v5, v0, :cond_3

    .line 283
    add-int/lit8 v22, v5, -0x1

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/lenovo/scg/gallery3d/data/SmallItem;

    .line 284
    .local v15, "prevItem":Lcom/lenovo/scg/gallery3d/data/SmallItem;
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/data/SmallItem;

    .line 285
    .local v4, "currItem":Lcom/lenovo/scg/gallery3d/data/SmallItem;
    add-int/lit8 v22, v5, 0x1

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lenovo/scg/gallery3d/data/SmallItem;

    .line 287
    .local v12, "nextItem":Lcom/lenovo/scg/gallery3d/data/SmallItem;
    iget-wide v0, v12, Lcom/lenovo/scg/gallery3d/data/SmallItem;->dateInMs:J

    move-wide/from16 v18, v0

    .line 288
    .local v18, "timeNext":J
    iget-wide v0, v4, Lcom/lenovo/scg/gallery3d/data/SmallItem;->dateInMs:J

    move-wide/from16 v16, v0

    .line 289
    .local v16, "timeCurr":J
    iget-wide v0, v15, Lcom/lenovo/scg/gallery3d/data/SmallItem;->dateInMs:J

    move-wide/from16 v20, v0

    .line 291
    .local v20, "timePrev":J
    const-wide/16 v22, 0x0

    cmp-long v22, v18, v22

    if-eqz v22, :cond_0

    const-wide/16 v22, 0x0

    cmp-long v22, v16, v22

    if-eqz v22, :cond_0

    const-wide/16 v22, 0x0

    cmp-long v22, v20, v22

    if-nez v22, :cond_1

    .line 282
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 293
    :cond_1
    sub-long v22, v18, v16

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 294
    .local v6, "diff1":J
    sub-long v22, v16, v20

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    .line 296
    .local v8, "diff2":J
    long-to-float v0, v6

    move/from16 v22, v0

    long-to-float v0, v8

    move/from16 v23, v0

    const v24, 0x3c23d70a    # 0.01f

    add-float v23, v23, v24

    div-float v22, v22, v23

    long-to-float v0, v8

    move/from16 v23, v0

    long-to-float v0, v6

    move/from16 v24, v0

    const v25, 0x3c23d70a    # 0.01f

    add-float v24, v24, v25

    div-float v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 297
    .local v2, "change":F
    cmpl-float v22, v2, v10

    if-lez v22, :cond_0

    .line 298
    invoke-static {v4, v15}, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->timeDistance(Lcom/lenovo/scg/gallery3d/data/SmallItem;Lcom/lenovo/scg/gallery3d/data/SmallItem;)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mLargeClusterSplitTime:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-lez v22, :cond_2

    .line 299
    move v14, v5

    .line 300
    move v10, v2

    goto :goto_1

    .line 301
    :cond_2
    invoke-static {v12, v4}, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->timeDistance(Lcom/lenovo/scg/gallery3d/data/SmallItem;Lcom/lenovo/scg/gallery3d/data/SmallItem;)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mLargeClusterSplitTime:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-lez v22, :cond_0

    .line 302
    add-int/lit8 v14, v5, 0x1

    .line 303
    move v10, v2

    goto :goto_1

    .line 308
    .end local v2    # "change":F
    .end local v4    # "currItem":Lcom/lenovo/scg/gallery3d/data/SmallItem;
    .end local v5    # "i":I
    .end local v6    # "diff1":J
    .end local v8    # "diff2":J
    .end local v12    # "nextItem":Lcom/lenovo/scg/gallery3d/data/SmallItem;
    .end local v15    # "prevItem":Lcom/lenovo/scg/gallery3d/data/SmallItem;
    .end local v16    # "timeCurr":J
    .end local v18    # "timeNext":J
    .end local v20    # "timePrev":J
    :cond_3
    return v14
.end method

.method private static isGeographicallySeparated(Lcom/lenovo/scg/gallery3d/data/SmallItem;Lcom/lenovo/scg/gallery3d/data/SmallItem;)Z
    .locals 11
    .param p0, "itemA"    # Lcom/lenovo/scg/gallery3d/data/SmallItem;
    .param p1, "itemB"    # Lcom/lenovo/scg/gallery3d/data/SmallItem;

    .prologue
    const/4 v10, 0x0

    .line 328
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/SmallItem;->lat:D

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/SmallItem;->lng:D

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/lenovo/scg/gallery3d/data/SmallItem;->lat:D

    iget-wide v2, p1, Lcom/lenovo/scg/gallery3d/data/SmallItem;->lng:D

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v10

    .line 334
    :goto_0
    return v0

    .line 332
    :cond_1
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/SmallItem;->lat:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/SmallItem;->lng:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    iget-wide v4, p1, Lcom/lenovo/scg/gallery3d/data/SmallItem;->lat:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    iget-wide v6, p1, Lcom/lenovo/scg/gallery3d/data/SmallItem;->lng:D

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->fastDistanceMeters(DDDD)D

    move-result-wide v8

    .line 334
    .local v8, "distance":D
    invoke-static {v8, v9}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->toMile(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v10

    goto :goto_0
.end method

.method private mergeAndAddCurrentCluster()V
    .locals 7

    .prologue
    .line 312
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 313
    .local v2, "numClusters":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/data/Cluster;

    .line 314
    .local v4, "prevCluster":Lcom/lenovo/scg/gallery3d/data/Cluster;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/lenovo/scg/gallery3d/data/Cluster;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/Cluster;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 315
    .local v0, "currClusterItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/SmallItem;>;"
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/lenovo/scg/gallery3d/data/Cluster;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/Cluster;->size()I

    move-result v3

    .line 316
    .local v3, "numCurrClusterItems":I
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/Cluster;->size()I

    move-result v5

    iget v6, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mMinClusterSize:I

    if-ge v5, v6, :cond_1

    .line 317
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 318
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/data/SmallItem;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/data/Cluster;->addItem(Lcom/lenovo/scg/gallery3d/data/SmallItem;)V

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 324
    .end local v1    # "i":I
    :goto_1
    return-void

    .line 322
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/lenovo/scg/gallery3d/data/Cluster;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private setTimeRange(JI)V
    .locals 7
    .param p1, "timeRange"    # J
    .param p3, "numItems"    # I

    .prologue
    .line 185
    if-eqz p3, :cond_0

    .line 186
    div-int/lit8 v6, p3, 0x9

    .line 189
    .local v6, "meanItemsPerCluster":I
    div-int/lit8 v0, v6, 0x2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mMinClusterSize:I

    .line 190
    mul-int/lit8 v0, v6, 0x2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mMaxClusterSize:I

    .line 191
    int-to-long v0, p3

    div-long v0, p1, v0

    sget v2, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->CLUSTER_SPLIT_MULTIPLIER:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mClusterSplitTime:J

    .line 193
    .end local v6    # "meanItemsPerCluster":I
    :cond_0
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mClusterSplitTime:J

    const-wide/32 v2, 0xea60

    const-wide/32 v4, 0x6ddd00

    invoke-static/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mClusterSplitTime:J

    .line 194
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mClusterSplitTime:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mLargeClusterSplitTime:J

    .line 195
    iget v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mMinClusterSize:I

    const/16 v1, 0x8

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mMinClusterSize:I

    .line 196
    iget v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mMaxClusterSize:I

    const/16 v1, 0x14

    const/16 v2, 0x32

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mMaxClusterSize:I

    .line 197
    return-void
.end method

.method private splitAndAddCurrentCluster()V
    .locals 7

    .prologue
    .line 254
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/lenovo/scg/gallery3d/data/Cluster;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/Cluster;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 255
    .local v0, "currClusterItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/SmallItem;>;"
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/lenovo/scg/gallery3d/data/Cluster;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/Cluster;->size()I

    move-result v2

    .line 256
    .local v2, "numCurrClusterItems":I
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->getPartitionIndexForCurrentCluster()I

    move-result v4

    .line 257
    .local v4, "secondPartitionStartIndex":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 258
    new-instance v3, Lcom/lenovo/scg/gallery3d/data/Cluster;

    invoke-direct {v3}, Lcom/lenovo/scg/gallery3d/data/Cluster;-><init>()V

    .line 259
    .local v3, "partitionedCluster":Lcom/lenovo/scg/gallery3d/data/Cluster;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 260
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/data/SmallItem;

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/gallery3d/data/Cluster;->addItem(Lcom/lenovo/scg/gallery3d/data/SmallItem;)V

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v3, Lcom/lenovo/scg/gallery3d/data/Cluster;

    .end local v3    # "partitionedCluster":Lcom/lenovo/scg/gallery3d/data/Cluster;
    invoke-direct {v3}, Lcom/lenovo/scg/gallery3d/data/Cluster;-><init>()V

    .line 264
    .restart local v3    # "partitionedCluster":Lcom/lenovo/scg/gallery3d/data/Cluster;
    move v1, v4

    :goto_1
    if-ge v1, v2, :cond_1

    .line 265
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/data/SmallItem;

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/gallery3d/data/Cluster;->addItem(Lcom/lenovo/scg/gallery3d/data/SmallItem;)V

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 267
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .end local v1    # "j":I
    .end local v3    # "partitionedCluster":Lcom/lenovo/scg/gallery3d/data/Cluster;
    :goto_2
    return-void

    .line 269
    :cond_2
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/lenovo/scg/gallery3d/data/Cluster;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private static timeDistance(Lcom/lenovo/scg/gallery3d/data/SmallItem;Lcom/lenovo/scg/gallery3d/data/SmallItem;)J
    .locals 4
    .param p0, "a"    # Lcom/lenovo/scg/gallery3d/data/SmallItem;
    .param p1, "b"    # Lcom/lenovo/scg/gallery3d/data/SmallItem;

    .prologue
    .line 339
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/SmallItem;->dateInMs:J

    iget-wide v2, p1, Lcom/lenovo/scg/gallery3d/data/SmallItem;->dateInMs:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getCluster(I)Ljava/util/ArrayList;
    .locals 5
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
    .line 171
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/data/Cluster;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/Cluster;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 172
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/SmallItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 174
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/data/SmallItem;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/data/SmallItem;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_0
    return-object v3
.end method

.method public getClusterName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getNumberOfClusters()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public run(Lcom/lenovo/scg/gallery3d/data/MediaSet;)V
    .locals 20
    .param p1, "baseSet"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .prologue
    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v16

    .line 108
    .local v16, "total":I
    move/from16 v0, v16

    new-array v4, v0, [Lcom/lenovo/scg/gallery3d/data/SmallItem;

    .line 109
    .local v4, "buf":[Lcom/lenovo/scg/gallery3d/data/SmallItem;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v7, v0, [D

    .line 111
    .local v7, "latLng":[D
    new-instance v17, Lcom/lenovo/scg/gallery3d/data/TimeClustering$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v7, v4}, Lcom/lenovo/scg/gallery3d/data/TimeClustering$1;-><init>(Lcom/lenovo/scg/gallery3d/data/TimeClustering;I[D[Lcom/lenovo/scg/gallery3d/data/SmallItem;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;)V

    .line 126
    new-instance v6, Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    .local v6, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/SmallItem;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v5, v0, :cond_1

    .line 128
    aget-object v17, v4, v5

    if-eqz v17, :cond_0

    .line 129
    aget-object v17, v4, v5

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 133
    :cond_1
    sget-object v17, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->sDateComparator:Ljava/util/Comparator;

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 135
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 136
    .local v9, "n":I
    const-wide/16 v12, 0x0

    .line 137
    .local v12, "minTime":J
    const-wide/16 v10, 0x0

    .line 138
    .local v10, "maxTime":J
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v9, :cond_4

    .line 139
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lenovo/scg/gallery3d/data/SmallItem;

    move-object/from16 v0, v17

    iget-wide v14, v0, Lcom/lenovo/scg/gallery3d/data/SmallItem;->dateInMs:J

    .line 140
    .local v14, "t":J
    const-wide/16 v18, 0x0

    cmp-long v17, v14, v18

    if-nez v17, :cond_2

    .line 138
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 141
    :cond_2
    const-wide/16 v18, 0x0

    cmp-long v17, v12, v18

    if-nez v17, :cond_3

    .line 142
    move-wide v10, v14

    move-wide v12, v14

    goto :goto_2

    .line 144
    :cond_3
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 145
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_2

    .line 149
    .end local v14    # "t":J
    :cond_4
    sub-long v18, v10, v12

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2, v9}, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->setTimeRange(JI)V

    .line 151
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v9, :cond_5

    .line 152
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lenovo/scg/gallery3d/data/SmallItem;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->compute(Lcom/lenovo/scg/gallery3d/data/SmallItem;)V

    .line 151
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 155
    :cond_5
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->compute(Lcom/lenovo/scg/gallery3d/data/SmallItem;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 158
    .local v8, "m":I
    new-array v0, v8, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mNames:[Ljava/lang/String;

    .line 159
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v8, :cond_6

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mNames:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lenovo/scg/gallery3d/data/Cluster;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/TimeClustering;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/Cluster;->generateCaption(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v18, v5

    .line 159
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 162
    :cond_6
    return-void
.end method
