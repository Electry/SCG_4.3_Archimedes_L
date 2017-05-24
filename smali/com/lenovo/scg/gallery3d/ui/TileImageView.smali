.class public Lcom/lenovo/scg/gallery3d/ui/TileImageView;
.super Lcom/lenovo/scg/gallery3d/ui/GLView;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/TileImageView$1;,
        Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileDecoder;,
        Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;,
        Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;,
        Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileUploader;,
        Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileSource;
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

.field private static final TAG:Ljava/lang/String; = "TileImageView"

.field private static final UPLOAD_LIMIT:I = 0x1

.field private static sTileSize:I


# instance fields
.field private final mActiveRange:[Landroid/graphics/Rect;

.field private final mActiveTiles:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundTileUploaded:Z

.field protected mCenterX:I

.field protected mCenterY:I

.field private final mDecodeQueue:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;

.field protected mImageHeight:I

.field protected mImageWidth:I

.field private mIsTextureFreed:Z

.field private mLevel:I

.field protected mLevelCount:I

.field private mModel:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileSource;

.field private mOffsetX:I

.field private mOffsetY:I

.field private final mRecycledQueue:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;

.field private mRenderComplete:Z

.field protected mRotation:I

.field protected mScale:F

.field private mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

.field private final mSourceRect:Landroid/graphics/RectF;

.field private final mTargetRect:Landroid/graphics/RectF;

.field private final mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;

.field private mTileDecoder:Lcom/lenovo/scg/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mTileRange:Landroid/graphics/Rect;

.field private final mTileUploader:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileUploader;

.field private final mUploadQueue:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;

.field private mUploadQuota:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/GalleryContext;)V
    .locals 4
    .param p1, "context"    # Lcom/lenovo/scg/gallery3d/app/GalleryContext;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 182
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/GLView;-><init>()V

    .line 98
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mLevel:I

    .line 110
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mSourceRect:Landroid/graphics/RectF;

    .line 112
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mTargetRect:Landroid/graphics/RectF;

    .line 114
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    .line 117
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;

    invoke-direct {v0, v3}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;-><init>(Lcom/lenovo/scg/gallery3d/ui/TileImageView$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mRecycledQueue:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;

    .line 119
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;

    invoke-direct {v0, v3}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;-><init>(Lcom/lenovo/scg/gallery3d/ui/TileImageView$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;

    .line 121
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;

    invoke-direct {v0, v3}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;-><init>(Lcom/lenovo/scg/gallery3d/ui/TileImageView$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mDecodeQueue:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;

    .line 124
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mImageWidth:I

    .line 126
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mImageHeight:I

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    .line 139
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mActiveRange:[Landroid/graphics/Rect;

    .line 141
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileUploader;

    invoke-direct {v0, p0, v3}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileUploader;-><init>(Lcom/lenovo/scg/gallery3d/ui/TileImageView;Lcom/lenovo/scg/gallery3d/ui/TileImageView$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mTileUploader:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileUploader;

    .line 183
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/app/GalleryContext;->getThreadPool()Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    .line 184
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileDecoder;

    invoke-direct {v1, p0, v3}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileDecoder;-><init>(Lcom/lenovo/scg/gallery3d/ui/TileImageView;Lcom/lenovo/scg/gallery3d/ui/TileImageView$1;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->submit(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mTileDecoder:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 185
    sget v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->sTileSize:I

    if-nez v0, :cond_0

    .line 186
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/app/GalleryContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->isHighResolution(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    const/16 v0, 0x200

    sput v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->sTileSize:I

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    const/16 v0, 0x100

    sput v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->sTileSize:I

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/ui/TileImageView;)Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->sTileSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/ui/TileImageView;)Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileSource;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mModel:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileSource;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/ui/TileImageView;III)Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/TileImageView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->getTile(III)Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/ui/TileImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    .prologue
    .line 43
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mLevel:I

    return v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/ui/TileImageView;)Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mDecodeQueue:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;

    return-object v0
.end method

.method private activateTile(III)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "level"    # I

    .prologue
    .line 578
    invoke-static {p1, p2, p3}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->makeTileKey(III)J

    move-result-wide v0

    .line 579
    .local v0, "key":J
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    .line 580
    .local v2, "tile":Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    if-eqz v2, :cond_1

    .line 581
    iget v3, v2, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 582
    const/4 v3, 0x1

    iput v3, v2, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->obtainTile(III)Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    move-result-object v2

    .line 587
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0
.end method

.method static drawTile(Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 4
    .param p0, "tile"    # Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "source"    # Landroid/graphics/RectF;
    .param p3, "target"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 668
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->isContentValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    invoke-interface {p1, p0, p2, p3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 670
    const/4 v1, 0x1

    .line 675
    :goto_1
    return v1

    .line 674
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->getParentTile()Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    move-result-object v0

    .line 675
    .local v0, "parent":Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 676
    :cond_1
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mX:I

    iget v2, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mX:I

    if-ne v1, v2, :cond_2

    .line 677
    iget v1, p2, Landroid/graphics/RectF;->left:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 678
    iget v1, p2, Landroid/graphics/RectF;->right:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 683
    :goto_2
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mY:I

    iget v2, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mY:I

    if-ne v1, v2, :cond_3

    .line 684
    iget v1, p2, Landroid/graphics/RectF;->top:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 685
    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->bottom:F

    .line 690
    :goto_3
    move-object p0, v0

    .line 691
    goto :goto_0

    .line 680
    :cond_2
    sget v1, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->sTileSize:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 681
    sget v1, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->sTileSize:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_2

    .line 687
    :cond_3
    sget v1, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->sTileSize:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 688
    sget v1, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->sTileSize:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->bottom:F

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
    .line 330
    move/from16 v0, p6

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 331
    .local v10, "radians":D
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v16, v0

    .line 332
    .local v16, "w":D
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-double v6, v0

    .line 334
    .local v6, "h":D
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 335
    .local v4, "cos":D
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 336
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

    .line 337
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

    .line 339
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

    invoke-static/range {v19 .. v19}, Landroid/util/FloatMath;->floor(F)F

    move-result v19

    move/from16 v0, v19

    float-to-int v8, v0

    .line 340
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

    invoke-static/range {v19 .. v19}, Landroid/util/FloatMath;->floor(F)F

    move-result v19

    move/from16 v0, v19

    float-to-int v15, v0

    .line 341
    .local v15, "top":I
    int-to-float v0, v8

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v20, v20, p5

    add-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Landroid/util/FloatMath;->ceil(F)F

    move-result v19

    move/from16 v0, v19

    float-to-int v9, v0

    .line 342
    .local v9, "right":I
    int-to-float v0, v15

    move/from16 v19, v0

    int-to-float v0, v3

    move/from16 v20, v0

    div-float v20, v20, p5

    add-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Landroid/util/FloatMath;->ceil(F)F

    move-result v19

    move/from16 v0, v19

    float-to-int v2, v0

    .line 345
    .local v2, "bottom":I
    sget v19, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->sTileSize:I

    shl-int v14, v19, p4

    .line 346
    .local v14, "size":I
    const/16 v19, 0x0

    div-int v20, v8, v14

    mul-int v20, v20, v14

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 347
    const/16 v19, 0x0

    div-int v20, v15, v14

    mul-int v20, v20, v14

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 348
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mImageWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 349
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mImageHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 351
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v15, v9, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 352
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
    .line 319
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

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->getRange(Landroid/graphics/Rect;IIIFI)V

    .line 320
    return-void
.end method

.method private getTile(III)Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "level"    # I

    .prologue
    .line 591
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-static {p1, p2, p3}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->makeTileKey(III)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    return-object v0
.end method

.method public static isHighResolution(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x800

    .line 176
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 177
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 178
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 179
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

.method private isScreenNailAnimating()Z
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    instance-of v0, v0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutTiles(IIFI)V
    .locals 24
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I
    .param p3, "scale"    # F
    .param p4, "rotation"    # I

    .prologue
    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->getWidth()I

    move-result v21

    .line 236
    .local v21, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->getHeight()I

    move-result v14

    .line 244
    .local v14, "height":I
    const/high16 v3, 0x3f800000    # 1.0f

    div-float v3, v3, p3

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->floorLog2(F)I

    move-result v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mLevelCount:I

    invoke-static {v3, v5, v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(III)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mLevel:I

    .line 249
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mLevel:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mLevelCount:I

    if-eq v3, v5, :cond_1

    .line 250
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    .line 251
    .local v4, "range":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mLevel:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->getRange(Landroid/graphics/Rect;IIIFI)V

    .line 252
    move/from16 v0, v21

    int-to-float v3, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    iget v5, v4, Landroid/graphics/Rect;->left:I

    sub-int v5, v5, p1

    int-to-float v5, v5

    mul-float v5, v5, p3

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mOffsetX:I

    .line 253
    int-to-float v3, v14

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    iget v5, v4, Landroid/graphics/Rect;->top:I

    sub-int v5, v5, p2

    int-to-float v5, v5

    mul-float v5, v5, p3

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mOffsetY:I

    .line 254
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mLevel:I

    shl-int/2addr v3, v5

    int-to-float v3, v3

    mul-float v3, v3, p3

    const/high16 v5, 0x3f400000    # 0.75f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mLevel:I

    add-int/lit8 v13, v3, -0x1

    .line 262
    .end local v4    # "range":Landroid/graphics/Rect;
    .local v13, "fromLevel":I
    :goto_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mLevelCount:I

    add-int/lit8 v5, v5, -0x2

    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 263
    add-int/lit8 v3, v13, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mLevelCount:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 265
    .local v12, "endLevel":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mActiveRange:[Landroid/graphics/Rect;

    .line 266
    .local v4, "range":[Landroid/graphics/Rect;
    move v9, v13

    .local v9, "i":I
    :goto_1
    if-ge v9, v12, :cond_2

    .line 267
    sub-int v3, v9, v13

    aget-object v6, v4, v3

    move-object/from16 v5, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->getRange(Landroid/graphics/Rect;IIII)V

    .line 266
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 254
    .end local v9    # "i":I
    .end local v12    # "endLevel":I
    .end local v13    # "fromLevel":I
    .local v4, "range":Landroid/graphics/Rect;
    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mLevel:I

    goto :goto_0

    .line 257
    .end local v4    # "range":Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mLevel:I

    add-int/lit8 v13, v3, -0x2

    .line 258
    .restart local v13    # "fromLevel":I
    move/from16 v0, v21

    int-to-float v3, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    move/from16 v0, p1

    int-to-float v5, v0

    mul-float v5, v5, p3

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mOffsetX:I

    .line 259
    int-to-float v3, v14

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    move/from16 v0, p2

    int-to-float v5, v0

    mul-float v5, v5, p3

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mOffsetY:I

    goto :goto_0

    .line 271
    .local v4, "range":[Landroid/graphics/Rect;
    .restart local v9    # "i":I
    .restart local v12    # "endLevel":I
    :cond_2
    rem-int/lit8 v3, p4, 0x5a

    if-eqz v3, :cond_3

    .line 303
    :goto_2
    return-void

    .line 273
    :cond_3
    monitor-enter p0

    .line 274
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mDecodeQueue:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;->clean()V

    .line 275
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;->clean()V

    .line 276
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mBackgroundTileUploaded:Z

    .line 280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v16

    .line 281
    .local v16, "n":I
    const/4 v9, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v9, v0, :cond_6

    .line 282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    .line 283
    .local v20, "tile":Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    move-object/from16 v0, v20

    iget v15, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    .line 284
    .local v15, "level":I
    if-lt v15, v13, :cond_4

    if-ge v15, v12, :cond_4

    sub-int v3, v15, v13

    aget-object v3, v4, v3

    move-object/from16 v0, v20

    iget v5, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mX:I

    move-object/from16 v0, v20

    iget v6, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mY:I

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_5

    .line 285
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/support/v4/util/LongSparseArray;->removeAt(I)V

    .line 286
    add-int/lit8 v9, v9, -0x1

    .line 287
    add-int/lit8 v16, v16, -0x1

    .line 288
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->recycleTile(Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;)V

    .line 281
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 291
    .end local v15    # "level":I
    .end local v20    # "tile":Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    move v9, v13

    :goto_4
    if-ge v9, v12, :cond_9

    .line 294
    sget v3, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->sTileSize:I

    shl-int v19, v3, v9

    .line 295
    .local v19, "size":I
    sub-int v3, v9, v13

    aget-object v17, v4, v3

    .line 296
    .local v17, "r":Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    .local v23, "y":I
    move-object/from16 v0, v17

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    .local v11, "bottom":I
    :goto_5
    move/from16 v0, v23

    if-ge v0, v11, :cond_8

    .line 297
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    .local v22, "x":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    .local v18, "right":I
    :goto_6
    move/from16 v0, v22

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 298
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v9}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->activateTile(III)V

    .line 297
    add-int v22, v22, v19

    goto :goto_6

    .line 291
    .end local v11    # "bottom":I
    .end local v16    # "n":I
    .end local v17    # "r":Landroid/graphics/Rect;
    .end local v18    # "right":I
    .end local v19    # "size":I
    .end local v22    # "x":I
    .end local v23    # "y":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 296
    .restart local v11    # "bottom":I
    .restart local v16    # "n":I
    .restart local v17    # "r":Landroid/graphics/Rect;
    .restart local v18    # "right":I
    .restart local v19    # "size":I
    .restart local v22    # "x":I
    .restart local v23    # "y":I
    :cond_7
    add-int v23, v23, v19

    goto :goto_5

    .line 293
    .end local v18    # "right":I
    .end local v22    # "x":I
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 302
    .end local v11    # "bottom":I
    .end local v17    # "r":Landroid/graphics/Rect;
    .end local v19    # "size":I
    .end local v23    # "y":I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->invalidate()V

    goto/16 :goto_2
.end method

.method private static makeTileKey(III)J
    .locals 7
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "level"    # I

    .prologue
    const/16 v6, 0x10

    .line 595
    int-to-long v0, p0

    .line 596
    .local v0, "result":J
    shl-long v2, v0, v6

    int-to-long v4, p1

    or-long v0, v2, v4

    .line 597
    shl-long v2, v0, v6

    int-to-long v4, p2

    or-long v0, v2, v4

    .line 598
    return-wide v0
.end method

.method private declared-synchronized obtainTile(III)Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "level"    # I

    .prologue
    .line 555
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mRecycledQueue:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;->pop()Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    move-result-object v0

    .line 556
    .local v0, "tile":Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    if-eqz v0, :cond_0

    .line 557
    const/4 v1, 0x1

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 558
    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->update(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    .end local v0    # "tile":Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0    # "tile":Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    :cond_0
    :try_start_1
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    .end local v0    # "tile":Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;-><init>(Lcom/lenovo/scg/gallery3d/ui/TileImageView;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 555
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private uploadBackgroundTiles(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 4
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 509
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mBackgroundTileUploaded:Z

    .line 510
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v1

    .line 511
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 512
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    .line 513
    .local v2, "tile":Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->isContentValid()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->queueForDecode(Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;)V

    .line 511
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    .end local v2    # "tile":Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    :cond_1
    return-void
.end method


# virtual methods
.method public clearBuffers()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 391
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v1

    .line 392
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 393
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v4, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    .line 394
    .local v2, "texture":Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->recycle()V

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 396
    .end local v2    # "texture":Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 397
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 399
    monitor-enter p0

    .line 400
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;->clean()V

    .line 401
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mDecodeQueue:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;->clean()V

    .line 402
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mRecycledQueue:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;->pop()Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    move-result-object v3

    .line 403
    .local v3, "tile":Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    :goto_1
    if-eqz v3, :cond_1

    .line 404
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->recycle()V

    .line 405
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mRecycledQueue:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;->pop()Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    move-result-object v3

    goto :goto_1

    .line 407
    :cond_1
    monitor-exit p0

    .line 408
    return-void

    .line 407
    .end local v3    # "tile":Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method decodeTile(Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;)Z
    .locals 4
    .param p1, "tile"    # Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    .prologue
    const/4 v1, 0x0

    .line 534
    monitor-enter p0

    .line 535
    :try_start_0
    iget v2, p1, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    monitor-exit p0

    move v0, v1

    .line 550
    :goto_0
    return v0

    .line 536
    :cond_0
    const/4 v2, 0x4

    iput v2, p1, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 537
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->decode()Z

    move-result v0

    .line 539
    .local v0, "decodeComplete":Z
    monitor-enter p0

    .line 540
    :try_start_1
    iget v2, p1, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    .line 541
    const/16 v2, 0x40

    iput v2, p1, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 542
    iget-object v2, p1, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 543
    invoke-static {}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getInstance()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v2

    iget-object v3, p1, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 544
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 546
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mRecycledQueue:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;->push(Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;)Z

    .line 547
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v1

    goto :goto_0

    .line 537
    .end local v0    # "decodeComplete":Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 549
    .restart local v0    # "decodeComplete":Z
    :cond_2
    if-eqz v0, :cond_3

    const/16 v1, 0x8

    :goto_1
    :try_start_3
    iput v1, p1, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 550
    monitor-exit p0

    goto :goto_0

    .line 551
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 549
    :cond_3
    const/16 v1, 0x10

    goto :goto_1
.end method

.method public drawTile(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIIFFF)V
    .locals 12
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "tx"    # I
    .param p3, "ty"    # I
    .param p4, "level"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "length"    # F

    .prologue
    .line 635
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mSourceRect:Landroid/graphics/RectF;

    .line 636
    .local v5, "source":Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mTargetRect:Landroid/graphics/RectF;

    .line 637
    .local v6, "target":Landroid/graphics/RectF;
    add-float v8, p5, p7

    add-float v9, p6, p7

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v6, v0, v1, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 638
    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v10, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->sTileSize:I

    int-to-float v10, v10

    sget v11, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->sTileSize:I

    int-to-float v11, v11

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 640
    move/from16 v0, p4

    invoke-direct {p0, p2, p3, v0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->getTile(III)Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    move-result-object v7

    .line 641
    .local v7, "tile":Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    if-eqz v7, :cond_4

    .line 642
    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->isContentValid()Z

    move-result v8

    if-nez v8, :cond_0

    .line 643
    iget v8, v7, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_3

    .line 644
    iget v8, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mUploadQuota:I

    if-lez v8, :cond_2

    .line 645
    iget v8, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mUploadQuota:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mUploadQuota:I

    .line 646
    invoke-virtual {v7, p1}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->updateContent(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 655
    :cond_0
    :goto_0
    invoke-static {v7, p1, v5, v6}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->drawTile(Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 664
    :cond_1
    :goto_1
    return-void

    .line 648
    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mRenderComplete:Z

    goto :goto_0

    .line 650
    :cond_3
    iget v8, v7, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/16 v9, 0x10

    if-eq v8, v9, :cond_0

    .line 651
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mRenderComplete:Z

    .line 652
    invoke-virtual {p0, v7}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->queueForDecode(Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;)V

    goto :goto_0

    .line 657
    :cond_4
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    if-eqz v8, :cond_1

    .line 658
    sget v8, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->sTileSize:I

    shl-int v4, v8, p4

    .line 659
    .local v4, "size":I
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    invoke-interface {v8}, Lcom/lenovo/scg/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mImageWidth:I

    int-to-float v9, v9

    div-float v2, v8, v9

    .line 660
    .local v2, "scaleX":F
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    invoke-interface {v8}, Lcom/lenovo/scg/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mImageHeight:I

    int-to-float v9, v9

    div-float v3, v8, v9

    .line 661
    .local v3, "scaleY":F
    int-to-float v8, p2

    mul-float/2addr v8, v2

    int-to-float v9, p3

    mul-float/2addr v9, v3

    add-int v10, p2, v4

    int-to-float v10, v10

    mul-float/2addr v10, v2

    add-int v11, p3, v4

    int-to-float v11, v11

    mul-float/2addr v11, v3

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 662
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    invoke-interface {v8, p1, v5, v6}, Lcom/lenovo/scg/gallery3d/ui/ScreenNail;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_1
.end method

.method public freeTextures()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 412
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mIsTextureFreed:Z

    .line 414
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mTileDecoder:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eqz v4, :cond_0

    .line 415
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mTileDecoder:Lcom/lenovo/scg/gallery3d/util/Future;

    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/util/Future;->cancel()V

    .line 416
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mTileDecoder:Lcom/lenovo/scg/gallery3d/util/Future;

    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/util/Future;->get()Ljava/lang/Object;

    .line 417
    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mTileDecoder:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 420
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v1

    .line 421
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 422
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v4, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    .line 423
    .local v2, "texture":Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->recycle()V

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 425
    .end local v2    # "texture":Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 426
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 428
    monitor-enter p0

    .line 429
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;->clean()V

    .line 430
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mDecodeQueue:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;->clean()V

    .line 431
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mRecycledQueue:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;->pop()Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    move-result-object v3

    .line 432
    .local v3, "tile":Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    :goto_1
    if-eqz v3, :cond_2

    .line 433
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->recycle()V

    .line 434
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mRecycledQueue:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;->pop()Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    move-result-object v3

    goto :goto_1

    .line 436
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->setScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;)V

    .line 438
    return-void

    .line 436
    .end local v3    # "tile":Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getImageCenter(Landroid/graphics/Point;)V
    .locals 8
    .param p1, "center"    # Landroid/graphics/Point;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 357
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->getWidth()I

    move-result v3

    .line 358
    .local v3, "viewW":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->getHeight()I

    move-result v2

    .line 364
    .local v2, "viewH":I
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mRotation:I

    rem-int/lit16 v4, v4, 0xb4

    if-nez v4, :cond_0

    .line 365
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mImageWidth:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mCenterX:I

    sub-int v1, v4, v5

    .line 366
    .local v1, "distW":I
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mImageHeight:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mCenterY:I

    sub-int v0, v4, v5

    .line 374
    .local v0, "distH":I
    :goto_0
    int-to-float v4, v3

    div-float/2addr v4, v7

    int-to-float v5, v1

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mScale:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p1, Landroid/graphics/Point;->x:I

    .line 375
    int-to-float v4, v2

    div-float/2addr v4, v7

    int-to-float v5, v0

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mScale:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p1, Landroid/graphics/Point;->y:I

    .line 376
    return-void

    .line 368
    .end local v0    # "distH":I
    .end local v1    # "distW":I
    :cond_0
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mImageHeight:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mCenterY:I

    sub-int v1, v4, v5

    .line 369
    .restart local v1    # "distW":I
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mImageWidth:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mCenterX:I

    sub-int v0, v4, v5

    .restart local v0    # "distH":I
    goto :goto_0
.end method

.method protected declared-synchronized invalidateTiles()V
    .locals 4

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mDecodeQueue:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;->clean()V

    .line 307
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;->clean()V

    .line 310
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v1

    .line 311
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 312
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    .line 313
    .local v2, "tile":Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->recycleTile(Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;)V

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    .end local v2    # "tile":Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    monitor-exit p0

    return-void

    .line 306
    .end local v0    # "i":I
    .end local v1    # "n":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public notifyModelInvalidated()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->invalidateTiles()V

    .line 205
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mModel:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileSource;

    if-nez v0, :cond_0

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .line 207
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mImageWidth:I

    .line 208
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mImageHeight:I

    .line 209
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mLevelCount:I

    .line 216
    :goto_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mCenterX:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mCenterY:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mScale:F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mRotation:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->layoutTiles(IIFI)V

    .line 217
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->invalidate()V

    .line 218
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mModel:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileSource;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileSource;->getScreenNail()Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->setScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;)V

    .line 212
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mModel:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileSource;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileSource;->getImageWidth()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mImageWidth:I

    .line 213
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mModel:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileSource;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileSource;->getImageHeight()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mImageHeight:I

    .line 214
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mModel:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileSource;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileSource;->getLevelCount()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mLevelCount:I

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changeSize"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 222
    invoke-super/range {p0 .. p5}, Lcom/lenovo/scg/gallery3d/ui/GLView;->onLayout(ZIIII)V

    .line 223
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mCenterX:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mCenterY:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mScale:F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mRotation:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->layoutTiles(IIFI)V

    .line 224
    :cond_0
    return-void
.end method

.method public prepareTextures()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 441
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mTileDecoder:Lcom/lenovo/scg/gallery3d/util/Future;

    if-nez v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    new-instance v2, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileDecoder;

    invoke-direct {v2, p0, v0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileDecoder;-><init>(Lcom/lenovo/scg/gallery3d/ui/TileImageView;Lcom/lenovo/scg/gallery3d/ui/TileImageView$1;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->submit(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mTileDecoder:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 444
    :cond_0
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mIsTextureFreed:Z

    if-eqz v1, :cond_1

    .line 445
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mCenterX:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mCenterY:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mScale:F

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mRotation:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->layoutTiles(IIFI)V

    .line 446
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mIsTextureFreed:Z

    .line 447
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mModel:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileSource;

    if-nez v1, :cond_2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->setScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;)V

    .line 449
    :cond_1
    return-void

    .line 447
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mModel:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileSource;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileSource;->getScreenNail()Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    move-result-object v0

    goto :goto_0
.end method

.method declared-synchronized queueForDecode(Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;)V
    .locals 2
    .param p1, "tile"    # Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    .prologue
    .line 527
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 528
    const/4 v0, 0x2

    iput v0, p1, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 529
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mDecodeQueue:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;->push(Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    :cond_0
    monitor-exit p0

    return-void

    .line 527
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method queueForUpload(Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;)V
    .locals 3
    .param p1, "tile"    # Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    .prologue
    .line 518
    monitor-enter p0

    .line 519
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;->push(Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;)Z

    .line 520
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mTileUploader:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileUploader;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mTileUploader:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileUploader;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcom/lenovo/scg/gallery3d/ui/GLRoot$OnGLIdleListener;)V

    .line 524
    :cond_0
    return-void

    .line 520
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized recycleTile(Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;)V
    .locals 2
    .param p1, "tile"    # Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;

    .prologue
    .line 565
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 566
    const/16 v0, 0x20

    iput v0, p1, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mTileState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    :goto_0
    monitor-exit p0

    return-void

    .line 569
    :cond_0
    const/16 v0, 0x40

    :try_start_1
    iput v0, p1, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 570
    iget-object v0, p1, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 571
    invoke-static {}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getInstance()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v0

    iget-object v1, p1, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 572
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mRecycledQueue:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileQueue;->push(Lcom/lenovo/scg/gallery3d/ui/TileImageView$Tile;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 565
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 24
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 453
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mUploadQuota:I

    .line 454
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mRenderComplete:Z

    .line 456
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mLevel:I

    .line 457
    .local v6, "level":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mRotation:I

    move/from16 v22, v0

    .line 458
    .local v22, "rotation":I
    const/16 v18, 0x0

    .line 459
    .local v18, "flags":I
    if-eqz v22, :cond_0

    or-int/lit8 v18, v18, 0x2

    .line 461
    :cond_0
    if-eqz v18, :cond_1

    .line 462
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 463
    if-eqz v22, :cond_1

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->getWidth()I

    move-result v2

    div-int/lit8 v16, v2, 0x2

    .local v16, "centerX":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->getHeight()I

    move-result v2

    div-int/lit8 v17, v2, 0x2

    .line 465
    .local v17, "centerY":I
    move/from16 v0, v16

    int-to-float v2, v0

    move/from16 v0, v17

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 466
    move/from16 v0, v22

    int-to-float v2, v0

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v10, v11}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 467
    move/from16 v0, v16

    neg-int v2, v0

    int-to-float v2, v2

    move/from16 v0, v17

    neg-int v3, v0

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 471
    .end local v16    # "centerX":I
    .end local v17    # "centerY":I
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mLevelCount:I

    if-eq v6, v2, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->isScreenNailAnimating()Z

    move-result v2

    if-nez v2, :cond_4

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_2

    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/ScreenNail;->noDraw()V

    .line 476
    :cond_2
    sget v2, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->sTileSize:I

    shl-int v23, v2, v6

    .line 477
    .local v23, "size":I
    move/from16 v0, v23

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mScale:F

    mul-float v9, v2, v3

    .line 478
    .local v9, "length":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    .line 480
    .local v21, "r":Landroid/graphics/Rect;
    move-object/from16 v0, v21

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .local v5, "ty":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v5, v2, :cond_5

    .line 481
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mOffsetY:I

    int-to-float v2, v2

    move/from16 v0, v19

    int-to-float v3, v0

    mul-float/2addr v3, v9

    add-float v8, v2, v3

    .line 482
    .local v8, "y":F
    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Rect;->left:I

    .local v4, "tx":I
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_1
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-ge v4, v2, :cond_3

    .line 483
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mOffsetX:I

    int-to-float v2, v2

    move/from16 v0, v20

    int-to-float v3, v0

    mul-float/2addr v3, v9

    add-float v7, v2, v3

    .local v7, "x":F
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 484
    invoke-virtual/range {v2 .. v9}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->drawTile(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIIFFF)V

    .line 482
    add-int v4, v4, v23

    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 480
    .end local v7    # "x":F
    :cond_3
    add-int v5, v5, v23

    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 487
    .end local v4    # "tx":I
    .end local v5    # "ty":I
    .end local v8    # "y":F
    .end local v9    # "length":F
    .end local v19    # "i":I
    .end local v20    # "j":I
    .end local v21    # "r":Landroid/graphics/Rect;
    .end local v23    # "size":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_5

    .line 488
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mOffsetX:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mOffsetY:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mImageWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mScale:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mImageHeight:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mScale:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v15

    move-object/from16 v11, p1

    invoke-interface/range {v10 .. v15}, Lcom/lenovo/scg/gallery3d/ui/ScreenNail;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 489
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->isScreenNailAnimating()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    :cond_5
    if-eqz v18, :cond_6

    invoke-interface/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 497
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mRenderComplete:Z

    if-eqz v2, :cond_9

    .line 498
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mBackgroundTileUploaded:Z

    if-nez v2, :cond_7

    invoke-direct/range {p0 .. p1}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->uploadBackgroundTiles(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 502
    :cond_7
    :goto_2
    return-void

    .line 494
    :catchall_0
    move-exception v2

    if-eqz v18, :cond_8

    invoke-interface/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    :cond_8
    throw v2

    .line 500
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->invalidate()V

    goto :goto_2
.end method

.method public setModel(Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileSource;)V
    .locals 0
    .param p1, "model"    # Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileSource;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mModel:Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileSource;

    .line 196
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->notifyModelInvalidated()V

    .line 197
    :cond_0
    return-void
.end method

.method public setPosition(IIFI)Z
    .locals 1
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I
    .param p3, "scale"    # F
    .param p4, "rotation"    # I

    .prologue
    .line 379
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mCenterX:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mCenterY:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mScale:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mRotation:I

    if-ne v0, p4, :cond_0

    const/4 v0, 0x0

    .line 386
    :goto_0
    return v0

    .line 380
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mCenterX:I

    .line 381
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mCenterY:I

    .line 382
    iput p3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mScale:F

    .line 383
    iput p4, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mRotation:I

    .line 384
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->layoutTiles(IIFI)V

    .line 385
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->invalidate()V

    .line 386
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;)V
    .locals 0
    .param p1, "s"    # Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .line 201
    return-void
.end method
