.class Lcom/lenovo/scg/gallery3d/data/LocationClustering;
.super Lcom/lenovo/scg/gallery3d/data/Clustering;
.source "LocationClustering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/data/LocationClustering$SmallItem;,
        Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;
    }
.end annotation


# static fields
.field private static final MAX_GROUPS:I = 0x14

.field private static final MAX_ITERATIONS:I = 0x1e

.field private static final MIN_GROUPS:I = 0x1

.field private static final STOP_CHANGE_RATIO:F = 0.01f

.field private static final TAG:Ljava/lang/String; = "LocationClustering"


# instance fields
.field private mClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/LocationClustering$SmallItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoLocationString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/data/Clustering;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/LocationClustering;->mContext:Landroid/content/Context;

    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocationClustering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f067f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocationClustering;->mNoLocationString:Ljava/lang/String;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocationClustering;->mHandler:Landroid/os/Handler;

    .line 79
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/data/LocationClustering;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/data/LocationClustering;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocationClustering;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static generateName(Ljava/util/ArrayList;Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;)Ljava/lang/String;
    .locals 10
    .param p1, "geocoder"    # Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/LocationClustering$SmallItem;",
            ">;",
            "Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/LocationClustering$SmallItem;>;"
    new-instance v7, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;

    invoke-direct {v7}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;-><init>()V

    .line 169
    .local v7, "set":Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 170
    .local v6, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_4

    .line 171
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/data/LocationClustering$SmallItem;

    .line 172
    .local v1, "item":Lcom/lenovo/scg/gallery3d/data/LocationClustering$SmallItem;
    iget-wide v2, v1, Lcom/lenovo/scg/gallery3d/data/LocationClustering$SmallItem;->lat:D

    .line 173
    .local v2, "itemLatitude":D
    iget-wide v4, v1, Lcom/lenovo/scg/gallery3d/data/LocationClustering$SmallItem;->lng:D

    .line 175
    .local v4, "itemLongitude":D
    iget-wide v8, v7, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    cmpl-double v8, v8, v2

    if-lez v8, :cond_0

    .line 176
    iput-wide v2, v7, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    .line 177
    iput-wide v4, v7, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLongitude:D

    .line 179
    :cond_0
    iget-wide v8, v7, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    cmpg-double v8, v8, v2

    if-gez v8, :cond_1

    .line 180
    iput-wide v2, v7, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    .line 181
    iput-wide v4, v7, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLongitude:D

    .line 183
    :cond_1
    iget-wide v8, v7, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    cmpl-double v8, v8, v4

    if-lez v8, :cond_2

    .line 184
    iput-wide v2, v7, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLatitude:D

    .line 185
    iput-wide v4, v7, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    .line 187
    :cond_2
    iget-wide v8, v7, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    cmpg-double v8, v8, v4

    if-gez v8, :cond_3

    .line 188
    iput-wide v2, v7, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLatitude:D

    .line 189
    iput-wide v4, v7, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    .line 170
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    .end local v1    # "item":Lcom/lenovo/scg/gallery3d/data/LocationClustering$SmallItem;
    .end local v2    # "itemLatitude":D
    .end local v4    # "itemLongitude":D
    :cond_4
    invoke-virtual {p1, v7}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->computeAddress(Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private static kMeans([Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;[I)[I
    .locals 34
    .param p0, "points"    # [Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;
    .param p1, "bestK"    # [I

    .prologue
    .line 220
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v27, v0

    .line 223
    .local v27, "n":I
    const/4 v2, 0x1

    move/from16 v0, v27

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v26

    .line 224
    .local v26, "minK":I
    const/16 v2, 0x14

    move/from16 v0, v27

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v25

    .line 226
    .local v25, "maxK":I
    move/from16 v0, v25

    new-array v14, v0, [Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;

    .line 227
    .local v14, "center":[Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;
    move/from16 v0, v25

    new-array v0, v0, [Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;

    move-object/from16 v18, v0

    .line 228
    .local v18, "groupSum":[Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;
    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 229
    .local v17, "groupCount":[I
    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 231
    .local v19, "grouping":[I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 232
    new-instance v2, Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;

    invoke-direct {v2}, Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;-><init>()V

    aput-object v2, v14, v20

    .line 233
    new-instance v2, Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;

    invoke-direct {v2}, Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;-><init>()V

    aput-object v2, v18, v20

    .line 231
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 238
    :cond_0
    const v13, 0x7f7fffff    # Float.MAX_VALUE

    .line 240
    .local v13, "bestScore":F
    move/from16 v0, v27

    new-array v11, v0, [I

    .line 242
    .local v11, "bestGrouping":[I
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, p1, v2

    .line 244
    const/16 v24, 0x0

    .line 245
    .local v24, "lastDistance":F
    const/16 v33, 0x0

    .line 247
    .local v33, "totalDistance":F
    move/from16 v23, v26

    .local v23, "k":I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v25

    if-gt v0, v1, :cond_d

    .line 249
    div-int v15, v27, v23

    .line 250
    .local v15, "delta":I
    const/16 v20, 0x0

    :goto_2
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 251
    mul-int v2, v20, v15

    aget-object v28, p0, v2

    .line 252
    .local v28, "p":Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;
    aget-object v2, v14, v20

    move-object/from16 v0, v28

    iget-wide v4, v0, Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;->latRad:D

    iput-wide v4, v2, Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;->latRad:D

    .line 253
    aget-object v2, v14, v20

    move-object/from16 v0, v28

    iget-wide v4, v0, Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;->lngRad:D

    iput-wide v4, v2, Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;->lngRad:D

    .line 250
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 256
    .end local v28    # "p":Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;
    :cond_1
    const/16 v21, 0x0

    .local v21, "iter":I
    :goto_3
    const/16 v2, 0x1e

    move/from16 v0, v21

    if-ge v0, v2, :cond_9

    .line 258
    const/16 v20, 0x0

    :goto_4
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 259
    aget-object v2, v18, v20

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;->latRad:D

    .line 260
    aget-object v2, v18, v20

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;->lngRad:D

    .line 261
    const/4 v2, 0x0

    aput v2, v17, v20

    .line 258
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 263
    :cond_2
    const/16 v33, 0x0

    .line 265
    const/16 v20, 0x0

    :goto_5
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    .line 266
    aget-object v28, p0, v20

    .line 267
    .restart local v28    # "p":Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;
    const v10, 0x7f7fffff    # Float.MAX_VALUE

    .line 268
    .local v10, "bestDistance":F
    const/4 v12, 0x0

    .line 269
    .local v12, "bestIndex":I
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_6
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 270
    move-object/from16 v0, v28

    iget-wide v2, v0, Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;->latRad:D

    move-object/from16 v0, v28

    iget-wide v4, v0, Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;->lngRad:D

    aget-object v6, v14, v22

    iget-wide v6, v6, Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;->latRad:D

    aget-object v8, v14, v22

    iget-wide v8, v8, Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;->lngRad:D

    invoke-static/range {v2 .. v9}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->fastDistanceMeters(DDDD)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v16, v0

    .line 274
    .local v16, "distance":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v16, v2

    if-gez v2, :cond_3

    .line 275
    const/16 v16, 0x0

    .line 277
    :cond_3
    cmpg-float v2, v16, v10

    if-gez v2, :cond_4

    .line 278
    move/from16 v10, v16

    .line 279
    move/from16 v12, v22

    .line 269
    :cond_4
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 282
    .end local v16    # "distance":F
    :cond_5
    aput v12, v19, v20

    .line 283
    aget v2, v17, v12

    add-int/lit8 v2, v2, 0x1

    aput v2, v17, v12

    .line 284
    aget-object v2, v18, v12

    iget-wide v4, v2, Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;->latRad:D

    move-object/from16 v0, v28

    iget-wide v6, v0, Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;->latRad:D

    add-double/2addr v4, v6

    iput-wide v4, v2, Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;->latRad:D

    .line 285
    aget-object v2, v18, v12

    iget-wide v4, v2, Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;->lngRad:D

    move-object/from16 v0, v28

    iget-wide v6, v0, Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;->lngRad:D

    add-double/2addr v4, v6

    iput-wide v4, v2, Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;->lngRad:D

    .line 286
    add-float v33, v33, v10

    .line 265
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 290
    .end local v10    # "bestDistance":F
    .end local v12    # "bestIndex":I
    .end local v22    # "j":I
    .end local v28    # "p":Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;
    :cond_6
    const/16 v20, 0x0

    :goto_7
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 291
    aget v2, v17, v20

    if-lez v2, :cond_7

    .line 292
    aget-object v2, v14, v20

    aget-object v3, v18, v20

    iget-wide v4, v3, Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;->latRad:D

    aget v3, v17, v20

    int-to-double v6, v3

    div-double/2addr v4, v6

    iput-wide v4, v2, Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;->latRad:D

    .line 293
    aget-object v2, v14, v20

    aget-object v3, v18, v20

    iget-wide v4, v3, Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;->lngRad:D

    aget v3, v17, v20

    int-to-double v6, v3

    div-double/2addr v4, v6

    iput-wide v4, v2, Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;->lngRad:D

    .line 290
    :cond_7
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 297
    :cond_8
    const/4 v2, 0x0

    cmpl-float v2, v33, v2

    if-eqz v2, :cond_9

    sub-float v2, v24, v33

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float v2, v2, v33

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_a

    .line 304
    :cond_9
    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v31, v0

    .line 305
    .local v31, "reassign":[I
    const/16 v29, 0x0

    .line 306
    .local v29, "realK":I
    const/16 v20, 0x0

    move/from16 v30, v29

    .end local v29    # "realK":I
    .local v30, "realK":I
    :goto_8
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    .line 307
    aget v2, v17, v20

    if-lez v2, :cond_f

    .line 308
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "realK":I
    .restart local v29    # "realK":I
    aput v30, v31, v20

    .line 306
    :goto_9
    add-int/lit8 v20, v20, 0x1

    move/from16 v30, v29

    .end local v29    # "realK":I
    .restart local v30    # "realK":I
    goto :goto_8

    .line 300
    .end local v30    # "realK":I
    .end local v31    # "reassign":[I
    :cond_a
    move/from16 v24, v33

    .line 256
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3

    .line 313
    .restart local v30    # "realK":I
    .restart local v31    # "reassign":[I
    :cond_b
    move/from16 v0, v30

    int-to-float v2, v0

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    mul-float v32, v33, v2

    .line 315
    .local v32, "score":F
    cmpg-float v2, v32, v13

    if-gez v2, :cond_e

    .line 316
    move/from16 v13, v32

    .line 317
    const/4 v2, 0x0

    aput v30, p1, v2

    .line 318
    const/16 v20, 0x0

    :goto_a
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    .line 319
    aget v2, v19, v20

    aget v2, v31, v2

    aput v2, v11, v20

    .line 318
    add-int/lit8 v20, v20, 0x1

    goto :goto_a

    .line 321
    :cond_c
    const/4 v2, 0x0

    cmpl-float v2, v32, v2

    if-nez v2, :cond_e

    .line 326
    .end local v15    # "delta":I
    .end local v21    # "iter":I
    .end local v30    # "realK":I
    .end local v31    # "reassign":[I
    .end local v32    # "score":F
    :cond_d
    return-object v11

    .line 247
    .restart local v15    # "delta":I
    .restart local v21    # "iter":I
    .restart local v30    # "realK":I
    .restart local v31    # "reassign":[I
    .restart local v32    # "score":F
    :cond_e
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    .end local v32    # "score":F
    :cond_f
    move/from16 v29, v30

    .end local v30    # "realK":I
    .restart local v29    # "realK":I
    goto :goto_9
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
    .line 203
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 204
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/LocationClustering$SmallItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 206
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/data/LocationClustering$SmallItem;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/data/LocationClustering$SmallItem;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_0
    return-object v3
.end method

.method public getClusterName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocationClustering;->mNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfClusters()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public run(Lcom/lenovo/scg/gallery3d/data/MediaSet;)V
    .locals 30
    .param p1, "baseSet"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .prologue
    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v21

    .line 84
    .local v21, "total":I
    move/from16 v0, v21

    new-array v7, v0, [Lcom/lenovo/scg/gallery3d/data/LocationClustering$SmallItem;

    .line 86
    .local v7, "buf":[Lcom/lenovo/scg/gallery3d/data/LocationClustering$SmallItem;
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v15, v0, [D

    .line 87
    .local v15, "latLong":[D
    new-instance v24, Lcom/lenovo/scg/gallery3d/data/LocationClustering$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v15, v7}, Lcom/lenovo/scg/gallery3d/data/LocationClustering$1;-><init>(Lcom/lenovo/scg/gallery3d/data/LocationClustering;I[D[Lcom/lenovo/scg/gallery3d/data/LocationClustering$SmallItem;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;)V

    .line 101
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v22, "withLatLong":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/LocationClustering$SmallItem;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v23, "withoutLatLong":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/LocationClustering$SmallItem;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v18, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v21

    if-ge v12, v0, :cond_2

    .line 105
    aget-object v20, v7, v12

    .line 106
    .local v20, "s":Lcom/lenovo/scg/gallery3d/data/LocationClustering$SmallItem;
    if-nez v20, :cond_0

    .line 104
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 107
    :cond_0
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/lenovo/scg/gallery3d/data/LocationClustering$SmallItem;->lat:D

    move-wide/from16 v24, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/lenovo/scg/gallery3d/data/LocationClustering$SmallItem;->lng:D

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 108
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v24, Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/lenovo/scg/gallery3d/data/LocationClustering$SmallItem;->lat:D

    move-wide/from16 v26, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/lenovo/scg/gallery3d/data/LocationClustering$SmallItem;->lng:D

    move-wide/from16 v28, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    move-wide/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;-><init>(DD)V

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 111
    :cond_1
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 115
    .end local v20    # "s":Lcom/lenovo/scg/gallery3d/data/LocationClustering$SmallItem;
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v9, "clusters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/LocationClustering$SmallItem;>;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 118
    .local v16, "m":I
    if-lez v16, :cond_4

    .line 120
    move/from16 v0, v16

    new-array v0, v0, [Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;

    move-object/from16 v19, v0

    .line 121
    .local v19, "pointsArray":[Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;
    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "pointsArray":[Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;
    check-cast v19, [Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;

    .line 122
    .restart local v19    # "pointsArray":[Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v6, v0, [I

    .line 123
    .local v6, "bestK":[I
    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lcom/lenovo/scg/gallery3d/data/LocationClustering;->kMeans([Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;[I)[I

    move-result-object v14

    .line 125
    .local v14, "index":[I
    const/4 v12, 0x0

    :goto_2
    const/16 v24, 0x0

    aget v24, v6, v24

    move/from16 v0, v24

    if-ge v12, v0, :cond_3

    .line 126
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 129
    :cond_3
    const/4 v12, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v12, v0, :cond_4

    .line 130
    aget v24, v14, v12

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 134
    .end local v6    # "bestK":[I
    .end local v14    # "index":[I
    .end local v19    # "pointsArray":[Lcom/lenovo/scg/gallery3d/data/LocationClustering$Point;
    :cond_4
    new-instance v10, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/LocationClustering;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    .line 135
    .local v10, "geocoder":Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/data/LocationClustering;->mNames:Ljava/util/ArrayList;

    .line 136
    const/4 v11, 0x0

    .line 137
    .local v11, "hasUnresolvedAddress":Z
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    .line 138
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 139
    .local v8, "cluster":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/LocationClustering$SmallItem;>;"
    invoke-static {v8, v10}, Lcom/lenovo/scg/gallery3d/data/LocationClustering;->generateName(Ljava/util/ArrayList;Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;)Ljava/lang/String;

    move-result-object v17

    .line 140
    .local v17, "name":Ljava/lang/String;
    if-eqz v17, :cond_5

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/LocationClustering;->mNames:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 145
    :cond_5
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 146
    const/4 v11, 0x1

    goto :goto_4

    .line 150
    .end local v8    # "cluster":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/LocationClustering$SmallItem;>;"
    .end local v17    # "name":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_7

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/LocationClustering;->mNames:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/LocationClustering;->mNoLocationString:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_7
    if-eqz v11, :cond_8

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/data/LocationClustering;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    new-instance v25, Lcom/lenovo/scg/gallery3d/data/LocationClustering$2;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/data/LocationClustering$2;-><init>(Lcom/lenovo/scg/gallery3d/data/LocationClustering;)V

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    :cond_8
    return-void
.end method
