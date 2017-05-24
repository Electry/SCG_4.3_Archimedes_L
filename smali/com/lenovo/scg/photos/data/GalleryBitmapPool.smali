.class public Lcom/lenovo/scg/photos/data/GalleryBitmapPool;
.super Ljava/lang/Object;
.source "GalleryBitmapPool.java"


# static fields
.field private static final CAPACITY_BYTES:I = 0x1400000

.field private static final COMMON_PHOTO_ASPECT_RATIOS:[Landroid/graphics/Point;

.field private static final POOL_INDEX_MISC:I = 0x2

.field private static final POOL_INDEX_NONE:I = -0x1

.field private static final POOL_INDEX_PHOTO:I = 0x1

.field private static final POOL_INDEX_SQUARE:I

.field private static sInstance:Lcom/lenovo/scg/photos/data/GalleryBitmapPool;


# instance fields
.field private mCapacityBytes:I

.field private mPools:[Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;

.field private mSharedNodePool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool",
            "<",
            "Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x3

    .line 38
    new-array v0, v4, [Landroid/graphics/Point;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x10

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v5

    sput-object v0, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->COMMON_PHOTO_ASPECT_RATIOS:[Landroid/graphics/Point;

    .line 54
    new-instance v0, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    const/high16 v1, 0x1400000

    invoke-direct {v0, v1}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;-><init>(I)V

    sput-object v0, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->sInstance:Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 5
    .param p1, "capacityBytes"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->mSharedNodePool:Landroid/util/Pools$Pool;

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;

    iput-object v0, p0, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->mPools:[Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;

    .line 48
    iget-object v0, p0, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->mPools:[Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;

    const/4 v1, 0x0

    new-instance v2, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;

    div-int/lit8 v3, p1, 0x3

    iget-object v4, p0, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->mSharedNodePool:Landroid/util/Pools$Pool;

    invoke-direct {v2, v3, v4}, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;-><init>(ILandroid/util/Pools$Pool;)V

    aput-object v2, v0, v1

    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->mPools:[Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;

    const/4 v1, 0x1

    new-instance v2, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;

    div-int/lit8 v3, p1, 0x3

    iget-object v4, p0, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->mSharedNodePool:Landroid/util/Pools$Pool;

    invoke-direct {v2, v3, v4}, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;-><init>(ILandroid/util/Pools$Pool;)V

    aput-object v2, v0, v1

    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->mPools:[Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;

    const/4 v1, 0x2

    new-instance v2, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;

    div-int/lit8 v3, p1, 0x3

    iget-object v4, p0, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->mSharedNodePool:Landroid/util/Pools$Pool;

    invoke-direct {v2, v3, v4}, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;-><init>(ILandroid/util/Pools$Pool;)V

    aput-object v2, v0, v1

    .line 51
    iput p1, p0, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->mCapacityBytes:I

    .line 52
    return-void
.end method

.method public static getInstance()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->sInstance:Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    return-object v0
.end method

.method private getPoolForDimensions(II)Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getPoolIndexForDimensions(II)I

    move-result v0

    .line 62
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 63
    const/4 v1, 0x0

    .line 65
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->mPools:[Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method private getPoolIndexForDimensions(II)I
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 70
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 71
    :cond_0
    const/4 v6, -0x1

    .line 89
    :goto_0
    return v6

    .line 73
    :cond_1
    if-ne p1, p2, :cond_2

    .line 74
    const/4 v6, 0x0

    goto :goto_0

    .line 77
    :cond_2
    if-le p1, p2, :cond_3

    .line 78
    move v5, p2

    .line 79
    .local v5, "min":I
    move v4, p1

    .line 84
    .local v4, "max":I
    :goto_1
    sget-object v1, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->COMMON_PHOTO_ASPECT_RATIOS:[Landroid/graphics/Point;

    .local v1, "arr$":[Landroid/graphics/Point;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v3, :cond_5

    aget-object v0, v1, v2

    .line 85
    .local v0, "ar":Landroid/graphics/Point;
    iget v6, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v6, v5

    iget v7, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v7, v4

    if-ne v6, v7, :cond_4

    .line 86
    const/4 v6, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "ar":Landroid/graphics/Point;
    .end local v1    # "arr$":[Landroid/graphics/Point;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "max":I
    .end local v5    # "min":I
    :cond_3
    move v5, p1

    .line 82
    .restart local v5    # "min":I
    move v4, p2

    .restart local v4    # "max":I
    goto :goto_1

    .line 84
    .restart local v0    # "ar":Landroid/graphics/Point;
    .restart local v1    # "arr$":[Landroid/graphics/Point;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 89
    .end local v0    # "ar":Landroid/graphics/Point;
    :cond_5
    const/4 v6, 0x2

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->mPools:[Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;

    .local v0, "arr$":[Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 128
    .local v3, "p":Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;
    invoke-virtual {v3}, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->clear()V

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v3    # "p":Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;
    :cond_0
    return-void
.end method

.method public get(II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getPoolForDimensions(II)Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;

    move-result-object v0

    .line 106
    .local v0, "pool":Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;
    if-nez v0, :cond_0

    .line 107
    const/4 v1, 0x0

    .line 109
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public declared-synchronized getCapacity()I
    .locals 1

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->mCapacityBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSize()I
    .locals 6

    .prologue
    .line 97
    monitor-enter p0

    const/4 v4, 0x0

    .line 98
    .local v4, "total":I
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->mPools:[Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;

    .local v0, "arr$":[Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 99
    .local v3, "p":Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;
    invoke-virtual {v3}, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->getSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    add-int/2addr v4, v5

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v3    # "p":Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;
    :cond_0
    monitor-exit p0

    return v4

    .line 97
    .end local v0    # "arr$":[Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public put(Landroid/graphics/Bitmap;)Z
    .locals 4
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 114
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v2, v3, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v1

    .line 117
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getPoolForDimensions(II)Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;

    move-result-object v0

    .line 118
    .local v0, "pool":Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;
    if-nez v0, :cond_2

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    move-result v1

    goto :goto_0
.end method
