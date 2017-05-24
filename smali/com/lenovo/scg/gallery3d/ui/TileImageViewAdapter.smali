.class public Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;
.super Ljava/lang/Object;
.source "TileImageViewAdapter.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileSource;


# static fields
.field private static final TAG:Ljava/lang/String; = "TileImageViewAdapter"


# instance fields
.field protected mImageHeight:I

.field protected mImageWidth:I

.field protected mLevelCount:I

.field protected mOwnScreenNail:Z

.field protected mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field protected mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method private calculateLevelCount()I
    .locals 3

    .prologue
    .line 77
    const/4 v0, 0x0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->ceilLog2(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getTileWithoutReusingBitmap(IIII)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "level"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "tileSize"    # I

    .prologue
    .line 146
    shl-int v8, p4, p1

    .line 147
    .local v8, "t":I
    new-instance v9, Landroid/graphics/Rect;

    add-int v10, p2, v8

    add-int v11, p3, v8

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v9, v0, v1, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 152
    .local v9, "wantRegion":Landroid/graphics/Rect;
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 154
    .local v6, "regionDecoder":Landroid/graphics/BitmapRegionDecoder;
    if-nez v6, :cond_1

    const/4 v2, 0x0

    monitor-exit p0

    .line 179
    :cond_0
    :goto_0
    return-object v2

    .line 155
    :cond_1
    new-instance v5, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    iget v13, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    invoke-direct {v5, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 156
    .local v5, "overlapRegion":Landroid/graphics/Rect;
    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v10

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/common/Utils;->assertTrue(Z)V

    .line 157
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 160
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v10, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 161
    const/4 v10, 0x1

    iput-boolean v10, v4, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 162
    const/4 v10, 0x1

    shl-int/2addr v10, p1

    iput v10, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 163
    const/4 v2, 0x0

    .line 166
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    monitor-enter v6

    .line 167
    :try_start_1
    invoke-virtual {v6, v5, v4}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 168
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    if-nez v2, :cond_2

    .line 171
    const-string v10, "TileImageViewAdapter"

    const-string v11, "fail in decoding region"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_2
    invoke-virtual {v9, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 176
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p4

    move/from16 v1, p4

    invoke-static {v0, v1, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 177
    .local v7, "result":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 178
    .local v3, "canvas":Landroid/graphics/Canvas;
    iget v10, v5, Landroid/graphics/Rect;->left:I

    iget v11, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    shr-int/2addr v10, p1

    int-to-float v10, v10

    iget v11, v5, Landroid/graphics/Rect;->top:I

    iget v12, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    shr-int/2addr v11, p1

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-virtual {v3, v2, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object v2, v7

    .line 179
    goto :goto_0

    .line 157
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "overlapRegion":Landroid/graphics/Rect;
    .end local v6    # "regionDecoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v7    # "result":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 168
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "overlapRegion":Landroid/graphics/Rect;
    .restart local v6    # "regionDecoder":Landroid/graphics/BitmapRegionDecoder;
    :catchall_1
    move-exception v10

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v10
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    return v0
.end method

.method public getLevelCount()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I

    return v0
.end method

.method public getScreenNail()Lcom/lenovo/scg/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    return-object v0
.end method

.method public getTile(IIII)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "level"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "tileSize"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 94
    sget-boolean v6, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_REGION_DECODER:Z

    if-nez v6, :cond_1

    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->getTileWithoutReusingBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 142
    :cond_0
    :goto_0
    return-object v0

    .line 98
    :cond_1
    shl-int v4, p4, p1

    .line 100
    .local v4, "t":I
    new-instance v5, Landroid/graphics/Rect;

    add-int v6, p2, v4

    add-int v7, p3, v4

    invoke-direct {v5, p2, p3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 103
    .local v5, "wantRegion":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 105
    .local v3, "regionDecoder":Landroid/graphics/BitmapRegionDecoder;
    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 107
    if-nez v3, :cond_2

    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 111
    :cond_2
    :try_start_1
    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v1, 0x1

    .line 112
    .local v1, "needClear":Z
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    invoke-static {}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getInstance()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v6

    invoke-virtual {v6, p4, p4}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 115
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_6

    .line 116
    if-eqz v1, :cond_3

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 121
    :cond_3
    :goto_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 122
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 123
    const/4 v6, 0x1

    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 124
    const/4 v6, 0x1

    shl-int/2addr v6, p1

    iput v6, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 125
    iput-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 129
    :try_start_2
    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 130
    :try_start_3
    invoke-virtual {v3, v5, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 133
    iget-object v6, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v6, v0, :cond_4

    iget-object v6, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_4

    .line 134
    invoke-static {}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getInstance()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v6

    iget-object v7, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 135
    const/4 v6, 0x0

    iput-object v6, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 139
    :cond_4
    if-nez v0, :cond_0

    .line 140
    const-string v6, "TileImageViewAdapter"

    const-string v7, "fail in decoding region"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "needClear":Z
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 118
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "needClear":Z
    :cond_6
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 131
    .restart local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_1
    move-exception v6

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 133
    :catchall_2
    move-exception v6

    iget-object v7, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v7, v0, :cond_7

    iget-object v7, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_7

    .line 134
    invoke-static {}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getInstance()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v7

    iget-object v8, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 135
    const/4 v7, 0x0

    iput-object v7, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_7
    throw v6
.end method

.method public declared-synchronized setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V
    .locals 1
    .param p1, "decoder"    # Landroid/graphics/BitmapRegionDecoder;

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 71
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    .line 72
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    .line 73
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->calculateLevelCount()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;II)V
    .locals 1
    .param p1, "screenNail"    # Lcom/lenovo/scg/gallery3d/ui/ScreenNail;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .line 63
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    .line 64
    iput p3, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
