.class public Lcom/lenovo/scg/photos/views/TiledImageRenderer;
.super Ljava/lang/Object;
.source "TiledImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/photos/views/TiledImageRenderer$1;,
        Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileDecoder;,
        Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;,
        Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;,
        Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileSource;
    }
.end annotation


# static fields
.field public static final SIZE_UNKNOWN:I = -0x1

.field private static final STATE_ACTIVATED:I = 0x1

.field private static final STATE_DECODED:I = 0x8

.field private static final STATE_DECODE_FAIL:I = 0x10

.field private static final STATE_DECODING:I = 0x4

.field private static final STATE_IN_QUEUE:I = 0x2

.field private static final STATE_RECYCLED:I = 0x40

.field private static final STATE_RECYCLING:I = 0x20

.field private static final TAG:Ljava/lang/String; = "TiledImageRenderer"

.field private static final UPLOAD_LIMIT:I = 0x1

.field private static sTilePool:Lcom/lenovo/scg/photos/data/GalleryBitmapPool;


# instance fields
.field private final mActiveRange:[Landroid/graphics/Rect;

.field private final mActiveTiles:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundTileUploaded:Z

.field protected mCenterX:I

.field protected mCenterY:I

.field private final mDecodeQueue:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;

.field protected mImageHeight:I

.field protected mImageWidth:I

.field private mLayoutTiles:Z

.field private mLevel:I

.field protected mLevelCount:I

.field private mModel:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileSource;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mParent:Landroid/view/View;

.field private final mQueueLock:Ljava/lang/Object;

.field private final mRecycledQueue:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;

.field private mRenderComplete:Z

.field protected mRotation:I

.field protected mScale:F

.field private final mSourceRect:Landroid/graphics/RectF;

.field private final mTargetRect:Landroid/graphics/RectF;

.field private mTileDecoder:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileDecoder;

.field private final mTileRange:Landroid/graphics/Rect;

.field private mTileSize:I

.field private final mUploadQueue:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;

.field private mUploadQuota:I

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getInstance()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->sTilePool:Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput v2, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mLevel:I

    .line 98
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mSourceRect:Landroid/graphics/RectF;

    .line 100
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mTargetRect:Landroid/graphics/RectF;

    .line 102
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    .line 107
    new-instance v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;

    invoke-direct {v0, v3}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;-><init>(Lcom/lenovo/scg/photos/views/TiledImageRenderer$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mRecycledQueue:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;

    .line 109
    new-instance v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;

    invoke-direct {v0, v3}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;-><init>(Lcom/lenovo/scg/photos/views/TiledImageRenderer$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mUploadQueue:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;

    .line 111
    new-instance v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;

    invoke-direct {v0, v3}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;-><init>(Lcom/lenovo/scg/photos/views/TiledImageRenderer$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mDecodeQueue:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;

    .line 114
    iput v1, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mImageWidth:I

    .line 116
    iput v1, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mImageHeight:I

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mTileRange:Landroid/graphics/Rect;

    .line 131
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mActiveRange:[Landroid/graphics/Rect;

    .line 175
    iput-object p1, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mParent:Landroid/view/View;

    .line 176
    new-instance v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileDecoder;

    invoke-direct {v0, p0, v3}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileDecoder;-><init>(Lcom/lenovo/scg/photos/views/TiledImageRenderer;Lcom/lenovo/scg/photos/views/TiledImageRenderer$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mTileDecoder:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileDecoder;

    .line 177
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mTileDecoder:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileDecoder;

    invoke-virtual {v0}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileDecoder;->start()V

    .line 178
    return-void
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/photos/views/TiledImageRenderer;Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/photos/views/TiledImageRenderer;
    .param p1, "x1"    # Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->queueForUpload(Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;)V

    return-void
.end method

.method static synthetic access$200()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->sTilePool:Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/photos/views/TiledImageRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/views/TiledImageRenderer;

    .prologue
    .line 34
    iget v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mTileSize:I

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/photos/views/TiledImageRenderer;)Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileSource;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/views/TiledImageRenderer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mModel:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileSource;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/photos/views/TiledImageRenderer;III)Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/views/TiledImageRenderer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->getTile(III)Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/photos/views/TiledImageRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/views/TiledImageRenderer;

    .prologue
    .line 34
    iget v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mLevel:I

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/photos/views/TiledImageRenderer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/views/TiledImageRenderer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/photos/views/TiledImageRenderer;)Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/views/TiledImageRenderer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mDecodeQueue:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/photos/views/TiledImageRenderer;Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/views/TiledImageRenderer;
    .param p1, "x1"    # Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->decodeTile(Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;)Z

    move-result v0

    return v0
.end method

.method private activateTile(III)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "level"    # I

    .prologue
    .line 530
    invoke-static {p1, p2, p3}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->makeTileKey(III)J

    move-result-wide v0

    .line 531
    .local v0, "key":J
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    .line 532
    .local v2, "tile":Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;
    if-eqz v2, :cond_1

    .line 533
    iget v3, v2, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 534
    const/4 v3, 0x1

    iput v3, v2, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->obtainTile(III)Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    move-result-object v2

    .line 539
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0
.end method

.method private static calulateLevelCount(Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileSource;)I
    .locals 5
    .param p0, "source"    # Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileSource;

    .prologue
    .line 205
    const/4 v0, 0x1

    .line 206
    .local v0, "levels":I
    invoke-interface {p0}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v3

    invoke-interface {p0}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 207
    .local v1, "maxDim":I
    invoke-interface {p0}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileSource;->getTileSize()I

    move-result v2

    .line 208
    .local v2, "t":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 209
    shl-int/lit8 v2, v2, 0x1

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    return v0
.end method

.method private decodeTile(Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;)Z
    .locals 5
    .param p1, "tile"    # Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    .prologue
    const/4 v1, 0x0

    .line 482
    iget-object v2, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 483
    :try_start_0
    iget v3, p1, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    monitor-exit v2

    move v0, v1

    .line 498
    :goto_0
    return v0

    .line 484
    :cond_0
    const/4 v3, 0x4

    iput v3, p1, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 485
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    invoke-virtual {p1}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->decode()Z

    move-result v0

    .line 487
    .local v0, "decodeComplete":Z
    iget-object v2, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 488
    :try_start_1
    iget v3, p1, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/16 v4, 0x20

    if-ne v3, v4, :cond_3

    .line 489
    const/16 v3, 0x40

    iput v3, p1, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 490
    iget-object v3, p1, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 491
    sget-object v3, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->sTilePool:Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->sTilePool:Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    iget-object v4, p1, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 492
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 494
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mRecycledQueue:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;->push(Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;)Z

    .line 495
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v1

    goto :goto_0

    .line 485
    .end local v0    # "decodeComplete":Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 497
    .restart local v0    # "decodeComplete":Z
    :cond_3
    if-eqz v0, :cond_4

    const/16 v1, 0x8

    :goto_1
    :try_start_3
    iput v1, p1, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 498
    monitor-exit v2

    goto :goto_0

    .line 499
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 497
    :cond_4
    const/16 v1, 0x10

    goto :goto_1
.end method

.method private drawTile(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIIFFF)V
    .locals 7
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "tx"    # I
    .param p3, "ty"    # I
    .param p4, "level"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "length"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 575
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mSourceRect:Landroid/graphics/RectF;

    .line 576
    .local v0, "source":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mTargetRect:Landroid/graphics/RectF;

    .line 577
    .local v1, "target":Landroid/graphics/RectF;
    add-float v3, p5, p7

    add-float v4, p6, p7

    invoke-virtual {v1, p5, p6, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 578
    iget v3, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mTileSize:I

    int-to-float v3, v3

    iget v4, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mTileSize:I

    int-to-float v4, v4

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 580
    invoke-direct {p0, p2, p3, p4}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->getTile(III)Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    move-result-object v2

    .line 581
    .local v2, "tile":Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;
    if-eqz v2, :cond_1

    .line 582
    invoke-virtual {v2}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->isContentValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 583
    iget v3, v2, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 584
    iget v3, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mUploadQuota:I

    if-lez v3, :cond_2

    .line 585
    iget v3, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mUploadQuota:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mUploadQuota:I

    .line 586
    invoke-virtual {v2, p1}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->updateContent(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 595
    :cond_0
    :goto_0
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->drawTile(Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 597
    :cond_1
    return-void

    .line 588
    :cond_2
    iput-boolean v6, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mRenderComplete:Z

    goto :goto_0

    .line 590
    :cond_3
    iget v3, v2, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/16 v4, 0x10

    if-eq v3, v4, :cond_0

    .line 591
    iput-boolean v6, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mRenderComplete:Z

    .line 592
    invoke-direct {p0, v2}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->queueForDecode(Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;)V

    goto :goto_0
.end method

.method private drawTile(Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 4
    .param p1, "tile"    # Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;
    .param p2, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p3, "source"    # Landroid/graphics/RectF;
    .param p4, "target"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 601
    :goto_0
    invoke-virtual {p1}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->isContentValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    invoke-interface {p2, p1, p3, p4}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 603
    const/4 v1, 0x1

    .line 608
    :goto_1
    return v1

    .line 607
    :cond_0
    invoke-virtual {p1}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->getParentTile()Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    move-result-object v0

    .line 608
    .local v0, "parent":Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 609
    :cond_1
    iget v1, p1, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mX:I

    iget v2, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mX:I

    if-ne v1, v2, :cond_2

    .line 610
    iget v1, p3, Landroid/graphics/RectF;->left:F

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->left:F

    .line 611
    iget v1, p3, Landroid/graphics/RectF;->right:F

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->right:F

    .line 616
    :goto_2
    iget v1, p1, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mY:I

    iget v2, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mY:I

    if-ne v1, v2, :cond_3

    .line 617
    iget v1, p3, Landroid/graphics/RectF;->top:F

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->top:F

    .line 618
    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->bottom:F

    .line 623
    :goto_3
    move-object p1, v0

    .line 624
    goto :goto_0

    .line 613
    :cond_2
    iget v1, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mTileSize:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->left:F

    .line 614
    iget v1, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mTileSize:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->right:F

    goto :goto_2

    .line 620
    :cond_3
    iget v1, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mTileSize:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->top:F

    .line 621
    iget v1, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mTileSize:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->bottom:F

    goto :goto_3
.end method

.method private getRange(Landroid/graphics/Rect;IIIFI)V
    .locals 26
    .param p1, "out"    # Landroid/graphics/Rect;
    .param p2, "cX"    # I
    .param p3, "cY"    # I
    .param p4, "level"    # I
    .param p5, "scale"    # F
    .param p6, "rotation"    # I

    .prologue
    .line 352
    move/from16 v0, p6

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 353
    .local v10, "radians":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mViewWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v16, v0

    .line 354
    .local v16, "w":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mViewHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v6, v0

    .line 356
    .local v6, "h":D
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 357
    .local v4, "cos":D
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 358
    .local v12, "sin":D
    mul-double v20, v4, v16

    mul-double v22, v12, v6

    sub-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    mul-double v22, v4, v16

    mul-double v24, v12, v6

    add-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v18, v0

    .line 359
    .local v18, "width":I
    mul-double v20, v12, v16

    mul-double v22, v4, v6

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    mul-double v22, v12, v16

    mul-double v24, v4, v6

    sub-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v3, v0

    .line 361
    .local v3, "height":I
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    mul-float v21, v21, p5

    div-float v20, v20, v21

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v8, v0

    .line 362
    .local v8, "left":I
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v3

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    mul-float v21, v21, p5

    div-float v20, v20, v21

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v15, v0

    .line 363
    .local v15, "top":I
    int-to-float v0, v8

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v20, v20, p5

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v9, v0

    .line 364
    .local v9, "right":I
    int-to-float v0, v15

    move/from16 v19, v0

    int-to-float v0, v3

    move/from16 v20, v0

    div-float v20, v20, p5

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v2, v0

    .line 367
    .local v2, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mTileSize:I

    move/from16 v19, v0

    shl-int v14, v19, p4

    .line 368
    .local v14, "size":I
    const/16 v19, 0x0

    div-int v20, v8, v14

    mul-int v20, v20, v14

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 369
    const/16 v19, 0x0

    div-int v20, v15, v14

    mul-int v20, v20, v14

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 370
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mImageWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 371
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mImageHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 373
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v15, v9, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 374
    return-void
.end method

.method private getRange(Landroid/graphics/Rect;IIII)V
    .locals 7
    .param p1, "out"    # Landroid/graphics/Rect;
    .param p2, "cX"    # I
    .param p3, "cY"    # I
    .param p4, "level"    # I
    .param p5, "rotation"    # I

    .prologue
    .line 341
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    add-int/lit8 v2, p4, 0x1

    shl-int/2addr v1, v2

    int-to-float v1, v1

    div-float v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->getRange(Landroid/graphics/Rect;IIIFI)V

    .line 342
    return-void
.end method

.method private getTile(III)Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "level"    # I

    .prologue
    .line 543
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-static {p1, p2, p3}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->makeTileKey(III)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    return-object v0
.end method

.method private invalidate()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 190
    return-void
.end method

.method private invalidateTiles()V
    .locals 5

    .prologue
    .line 326
    iget-object v4, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 327
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mDecodeQueue:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v3}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;->clean()V

    .line 328
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mUploadQueue:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v3}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;->clean()V

    .line 331
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v1

    .line 332
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 333
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    .line 334
    .local v2, "tile":Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;
    invoke-direct {p0, v2}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->recycleTile(Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;)V

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    .end local v2    # "tile":Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 337
    monitor-exit v4

    .line 338
    return-void

    .line 337
    .end local v0    # "i":I
    .end local v1    # "n":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static isHighResolution(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x800

    .line 168
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 169
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 170
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 171
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v2, v3, :cond_0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private layoutTiles()V
    .locals 22

    .prologue
    .line 253
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mViewWidth:I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mViewHeight:I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mLayoutTiles:Z

    if-nez v3, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mLayoutTiles:Z

    .line 264
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mScale:F

    div-float/2addr v3, v5

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->floorLog2(F)I

    move-result v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mLevelCount:I

    invoke-static {v3, v5, v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(III)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mLevel:I

    .line 269
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mLevel:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mLevelCount:I

    if-eq v3, v5, :cond_3

    .line 270
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mTileRange:Landroid/graphics/Rect;

    .line 271
    .local v4, "range":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mCenterX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mCenterY:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mLevel:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mScale:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mRotation:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->getRange(Landroid/graphics/Rect;IIIFI)V

    .line 272
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mViewWidth:I

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    iget v5, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mCenterX:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mScale:F

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mOffsetX:I

    .line 273
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mViewHeight:I

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    iget v5, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mCenterY:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mScale:F

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mOffsetY:I

    .line 274
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mScale:F

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mLevel:I

    shl-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v3, v5

    const/high16 v5, 0x3f400000    # 0.75f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mLevel:I

    add-int/lit8 v13, v3, -0x1

    .line 282
    .end local v4    # "range":Landroid/graphics/Rect;
    .local v13, "fromLevel":I
    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mLevelCount:I

    add-int/lit8 v5, v5, -0x2

    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 283
    add-int/lit8 v3, v13, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mLevelCount:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 285
    .local v12, "endLevel":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mActiveRange:[Landroid/graphics/Rect;

    .line 286
    .local v4, "range":[Landroid/graphics/Rect;
    move v9, v13

    .local v9, "i":I
    :goto_2
    if-ge v9, v12, :cond_4

    .line 287
    sub-int v3, v9, v13

    aget-object v6, v4, v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mCenterX:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mCenterY:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mRotation:I

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->getRange(Landroid/graphics/Rect;IIII)V

    .line 286
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 274
    .end local v9    # "i":I
    .end local v12    # "endLevel":I
    .end local v13    # "fromLevel":I
    .local v4, "range":Landroid/graphics/Rect;
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mLevel:I

    goto :goto_1

    .line 277
    .end local v4    # "range":Landroid/graphics/Rect;
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mLevel:I

    add-int/lit8 v13, v3, -0x2

    .line 278
    .restart local v13    # "fromLevel":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mViewWidth:I

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mCenterX:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mOffsetX:I

    .line 279
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mViewHeight:I

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mCenterY:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mOffsetY:I

    goto :goto_1

    .line 291
    .local v4, "range":[Landroid/graphics/Rect;
    .restart local v9    # "i":I
    .restart local v12    # "endLevel":I
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mRotation:I

    rem-int/lit8 v3, v3, 0x5a

    if-nez v3, :cond_0

    .line 293
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v5

    .line 294
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mDecodeQueue:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v3}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;->clean()V

    .line 295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mUploadQueue:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v3}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;->clean()V

    .line 296
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mBackgroundTileUploaded:Z

    .line 300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v15

    .line 301
    .local v15, "n":I
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v15, :cond_7

    .line 302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    .line 303
    .local v19, "tile":Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;
    move-object/from16 v0, v19

    iget v14, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mTileLevel:I

    .line 304
    .local v14, "level":I
    if-lt v14, v13, :cond_5

    if-ge v14, v12, :cond_5

    sub-int v3, v14, v13

    aget-object v3, v4, v3

    move-object/from16 v0, v19

    iget v6, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mX:I

    move-object/from16 v0, v19

    iget v7, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mY:I

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_6

    .line 305
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/support/v4/util/LongSparseArray;->removeAt(I)V

    .line 306
    add-int/lit8 v9, v9, -0x1

    .line 307
    add-int/lit8 v15, v15, -0x1

    .line 308
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->recycleTile(Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;)V

    .line 301
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 311
    .end local v14    # "level":I
    .end local v19    # "tile":Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;
    :cond_7
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    move v9, v13

    :goto_4
    if-ge v9, v12, :cond_a

    .line 314
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mTileSize:I

    shl-int v18, v3, v9

    .line 315
    .local v18, "size":I
    sub-int v3, v9, v13

    aget-object v16, v4, v3

    .line 316
    .local v16, "r":Landroid/graphics/Rect;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    .local v21, "y":I
    move-object/from16 v0, v16

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    .local v11, "bottom":I
    :goto_5
    move/from16 v0, v21

    if-ge v0, v11, :cond_9

    .line 317
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    .local v20, "x":I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    .local v17, "right":I
    :goto_6
    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    .line 318
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v9}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->activateTile(III)V

    .line 317
    add-int v20, v20, v18

    goto :goto_6

    .line 311
    .end local v11    # "bottom":I
    .end local v15    # "n":I
    .end local v16    # "r":Landroid/graphics/Rect;
    .end local v17    # "right":I
    .end local v18    # "size":I
    .end local v20    # "x":I
    .end local v21    # "y":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 316
    .restart local v11    # "bottom":I
    .restart local v15    # "n":I
    .restart local v16    # "r":Landroid/graphics/Rect;
    .restart local v17    # "right":I
    .restart local v18    # "size":I
    .restart local v20    # "x":I
    .restart local v21    # "y":I
    :cond_8
    add-int v21, v21, v18

    goto :goto_5

    .line 313
    .end local v17    # "right":I
    .end local v20    # "x":I
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 322
    .end local v11    # "bottom":I
    .end local v16    # "r":Landroid/graphics/Rect;
    .end local v18    # "size":I
    .end local v21    # "y":I
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->invalidate()V

    goto/16 :goto_0
.end method

.method private static makeTileKey(III)J
    .locals 7
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "level"    # I

    .prologue
    const/16 v6, 0x10

    .line 547
    int-to-long v0, p0

    .line 548
    .local v0, "result":J
    shl-long v2, v0, v6

    int-to-long v4, p1

    or-long v0, v2, v4

    .line 549
    shl-long v2, v0, v6

    int-to-long v4, p2

    or-long v0, v2, v4

    .line 550
    return-wide v0
.end method

.method private obtainTile(III)Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "level"    # I

    .prologue
    .line 503
    iget-object v2, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 504
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mRecycledQueue:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v1}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;->pop()Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    move-result-object v0

    .line 505
    .local v0, "tile":Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;
    if-eqz v0, :cond_0

    .line 506
    const/4 v1, 0x1

    iput v1, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 507
    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->update(III)V

    .line 508
    monitor-exit v2

    .line 510
    .end local v0    # "tile":Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;
    :goto_0
    return-object v0

    .restart local v0    # "tile":Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;
    :cond_0
    new-instance v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    .end local v0    # "tile":Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;-><init>(Lcom/lenovo/scg/photos/views/TiledImageRenderer;III)V

    monitor-exit v2

    goto :goto_0

    .line 511
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private queueForDecode(Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;)V
    .locals 3
    .param p1, "tile"    # Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    .prologue
    .line 471
    iget-object v1, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 472
    :try_start_0
    iget v0, p1, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 473
    const/4 v0, 0x2

    iput v0, p1, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 474
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mDecodeQueue:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;->push(Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 478
    :cond_0
    monitor-exit v1

    .line 479
    return-void

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private queueForUpload(Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;)V
    .locals 2
    .param p1, "tile"    # Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    .prologue
    .line 460
    iget-object v1, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mUploadQueue:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;->push(Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;)Z

    .line 462
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    invoke-direct {p0}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->invalidate()V

    .line 468
    return-void

    .line 462
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private recycleTile(Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;)V
    .locals 3
    .param p1, "tile"    # Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    .prologue
    .line 515
    iget-object v1, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 516
    :try_start_0
    iget v0, p1, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 517
    const/16 v0, 0x20

    iput v0, p1, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 518
    monitor-exit v1

    .line 527
    :goto_0
    return-void

    .line 520
    :cond_0
    const/16 v0, 0x40

    iput v0, p1, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 521
    iget-object v0, p1, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 522
    sget-object v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->sTilePool:Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->sTilePool:Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    iget-object v2, p1, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 523
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 525
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mRecycledQueue:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;->push(Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;)Z

    .line 526
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static suggestedTileSize(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    invoke-static {p0}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->isHighResolution(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x200

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x100

    goto :goto_0
.end method

.method private uploadBackgroundTiles(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 4
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 449
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mBackgroundTileUploaded:Z

    .line 450
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v1

    .line 451
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 452
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    .line 453
    .local v2, "tile":Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;
    invoke-virtual {v2}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->isContentValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 454
    invoke-direct {p0, v2}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->queueForDecode(Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;)V

    .line 451
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 457
    .end local v2    # "tile":Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;
    :cond_1
    return-void
.end method

.method private uploadTiles(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 4
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 554
    const/4 v0, 0x1

    .line 555
    .local v0, "quota":I
    const/4 v1, 0x0

    .line 556
    .local v1, "tile":Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 557
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 558
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mUploadQueue:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v2}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;->pop()Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    move-result-object v1

    .line 559
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    if-nez v1, :cond_3

    .line 567
    :cond_1
    if-eqz v1, :cond_2

    .line 568
    invoke-direct {p0}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->invalidate()V

    .line 570
    :cond_2
    return-void

    .line 559
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 561
    :cond_3
    invoke-virtual {v1}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->isContentValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 562
    iget v2, v1, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->assertTrue(Z)V

    .line 563
    invoke-virtual {v1, p1}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->updateContent(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 564
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 562
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 21
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 401
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->layoutTiles()V

    .line 402
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->uploadTiles(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 404
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mUploadQuota:I

    .line 405
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mRenderComplete:Z

    .line 407
    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mLevel:I

    .line 408
    .local v7, "level":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mRotation:I

    move/from16 v17, v0

    .line 409
    .local v17, "rotation":I
    const/4 v13, 0x0

    .line 410
    .local v13, "flags":I
    if-eqz v17, :cond_0

    or-int/lit8 v13, v13, 0x2

    .line 412
    :cond_0
    if-eqz v13, :cond_1

    .line 413
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 414
    if-eqz v17, :cond_1

    .line 415
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mViewWidth:I

    div-int/lit8 v11, v3, 0x2

    .local v11, "centerX":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mViewHeight:I

    div-int/lit8 v12, v3, 0x2

    .line 416
    .local v12, "centerY":I
    int-to-float v3, v11

    int-to-float v4, v12

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 417
    move/from16 v0, v17

    int-to-float v3, v0

    const/4 v4, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v3, v4, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 418
    neg-int v3, v11

    int-to-float v3, v3

    neg-int v4, v12

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 422
    .end local v11    # "centerX":I
    .end local v12    # "centerY":I
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mLevelCount:I

    if-eq v7, v3, :cond_3

    .line 423
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mTileSize:I

    shl-int v18, v3, v7

    .line 424
    .local v18, "size":I
    move/from16 v0, v18

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mScale:F

    mul-float v10, v3, v4

    .line 425
    .local v10, "length":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mTileRange:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    .line 427
    .local v16, "r":Landroid/graphics/Rect;
    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/Rect;->top:I

    .local v6, "ty":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v3, :cond_3

    .line 428
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mOffsetY:I

    int-to-float v3, v3

    int-to-float v4, v14

    mul-float/2addr v4, v10

    add-float v9, v3, v4

    .line 429
    .local v9, "y":F
    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->left:I

    .local v5, "tx":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_1
    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-ge v5, v3, :cond_2

    .line 430
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mOffsetX:I

    int-to-float v3, v3

    int-to-float v4, v15

    mul-float/2addr v4, v10

    add-float v8, v3, v4

    .local v8, "x":F
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 431
    invoke-direct/range {v3 .. v10}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->drawTile(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIIFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    add-int v5, v5, v18

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 427
    .end local v8    # "x":F
    :cond_2
    add-int v6, v6, v18

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 436
    .end local v5    # "tx":I
    .end local v6    # "ty":I
    .end local v9    # "y":F
    .end local v10    # "length":F
    .end local v14    # "i":I
    .end local v15    # "j":I
    .end local v16    # "r":Landroid/graphics/Rect;
    .end local v18    # "size":I
    :cond_3
    if-eqz v13, :cond_4

    invoke-interface/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 439
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mRenderComplete:Z

    if-eqz v3, :cond_7

    .line 440
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mBackgroundTileUploaded:Z

    if-nez v3, :cond_5

    .line 441
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->uploadBackgroundTiles(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 446
    :cond_5
    :goto_2
    return-void

    .line 436
    :catchall_0
    move-exception v3

    if-eqz v13, :cond_6

    invoke-interface/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    :cond_6
    throw v3

    .line 444
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->invalidate()V

    goto :goto_2
.end method

.method public freeTextures()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 377
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mLayoutTiles:Z

    .line 379
    iget-object v5, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v5

    .line 380
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mUploadQueue:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v4}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;->clean()V

    .line 381
    iget-object v4, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mDecodeQueue:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v4}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;->clean()V

    .line 382
    iget-object v4, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mRecycledQueue:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v4}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;->pop()Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    move-result-object v3

    .line 383
    .local v3, "tile":Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;
    :goto_0
    if-eqz v3, :cond_0

    .line 384
    invoke-virtual {v3}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->recycle()V

    .line 385
    iget-object v4, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mRecycledQueue:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v4}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileQueue;->pop()Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    move-result-object v3

    goto :goto_0

    .line 387
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    iget-object v4, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v1

    .line 390
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 391
    iget-object v4, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v4, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;

    .line 392
    .local v2, "texture":Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;
    invoke-virtual {v2}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;->recycle()V

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 387
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "texture":Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;
    .end local v3    # "tile":Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 394
    .restart local v0    # "i":I
    .restart local v1    # "n":I
    .restart local v3    # "tile":Lcom/lenovo/scg/photos/views/TiledImageRenderer$Tile;
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 395
    iget-object v4, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mTileRange:Landroid/graphics/Rect;

    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 397
    sget-object v4, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->sTilePool:Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->sTilePool:Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    invoke-virtual {v4}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->clear()V

    .line 398
    :cond_2
    return-void
.end method

.method public getViewHeight()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mViewHeight:I

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mViewWidth:I

    return v0
.end method

.method public notifyModelInvalidated()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 216
    invoke-direct {p0}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->invalidateTiles()V

    .line 217
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mModel:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileSource;

    if-nez v0, :cond_0

    .line 218
    iput v1, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mImageWidth:I

    .line 219
    iput v1, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mImageHeight:I

    .line 220
    iput v1, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mLevelCount:I

    .line 227
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mLayoutTiles:Z

    .line 228
    invoke-direct {p0}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->invalidate()V

    .line 229
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mModel:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mImageWidth:I

    .line 223
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mModel:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mImageHeight:I

    .line 224
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mModel:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileSource;

    invoke-static {v0}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->calulateLevelCount(Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileSource;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mLevelCount:I

    .line 225
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mModel:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileSource;->getTileSize()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mTileSize:I

    goto :goto_0
.end method

.method public setModel(Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileSource;I)V
    .locals 1
    .param p1, "model"    # Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileSource;
    .param p2, "rotation"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mModel:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileSource;

    if-eq v0, p1, :cond_0

    .line 194
    iput-object p1, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mModel:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileSource;

    .line 195
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->notifyModelInvalidated()V

    .line 197
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mRotation:I

    if-eq v0, p2, :cond_1

    .line 198
    iput p2, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mRotation:I

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mLayoutTiles:Z

    .line 200
    invoke-direct {p0}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->invalidate()V

    .line 202
    :cond_1
    return-void
.end method

.method public setPosition(IIF)V
    .locals 1
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I
    .param p3, "scale"    # F

    .prologue
    .line 237
    iget v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mCenterX:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mCenterY:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mScale:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 238
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mCenterX:I

    .line 239
    iput p2, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mCenterY:I

    .line 240
    iput p3, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mScale:F

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mLayoutTiles:Z

    .line 242
    invoke-direct {p0}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->invalidate()V

    goto :goto_0
.end method

.method public setViewSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 232
    iput p1, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mViewWidth:I

    .line 233
    iput p2, p0, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->mViewHeight:I

    .line 234
    return-void
.end method
