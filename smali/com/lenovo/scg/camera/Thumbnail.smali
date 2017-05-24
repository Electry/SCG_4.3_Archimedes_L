.class public Lcom/lenovo/scg/camera/Thumbnail;
.super Ljava/lang/Object;
.source "Thumbnail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/Thumbnail$Media;
    }
.end annotation


# static fields
.field private static final BUFSIZE:I = 0x1000

.field public static final LAST_THUMB_FILENAME:Ljava/lang/String; = "last_thumb"

.field private static final TAG:Ljava/lang/String; = "Thumbnail"

.field public static final THUMBNAIL_DELETED:I = 0x2

.field public static final THUMBNAIL_FOUND:I = 0x1

.field public static final THUMBNAIL_NOT_FOUND:I

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mFromFile:Z

.field private mUri:Landroid/net/Uri;

.field private mZoomBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/Thumbnail;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap;ILcom/lenovo/scg/camera/MaskBitmapHolder;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "orientation"    # I
    .param p4, "holder"    # Lcom/lenovo/scg/camera/MaskBitmapHolder;

    .prologue
    const/4 v5, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/Thumbnail;->mFromFile:Z

    .line 53
    iput-object p1, p0, Lcom/lenovo/scg/camera/Thumbnail;->mUri:Landroid/net/Uri;

    .line 54
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p2, v1, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/Thumbnail;->mZoomBitmap:Landroid/graphics/Bitmap;

    .line 57
    iget-object v1, p0, Lcom/lenovo/scg/camera/Thumbnail;->mZoomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/Thumbnail;->mZoomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 58
    const-string/jumbo v1, "test"

    const-string v2, "(mZoomBitmap.getHeight()/mZoomBitmap.getWidth() >= 2.f"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v1, p0, Lcom/lenovo/scg/camera/Thumbnail;->mZoomBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/lenovo/scg/camera/Thumbnail;->mZoomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/Thumbnail;->mZoomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/lenovo/scg/camera/Thumbnail;->mZoomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/Thumbnail;->mZoomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v1, v5, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 60
    .local v0, "tmpBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/lenovo/scg/camera/Thumbnail;->mZoomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 61
    iput-object v0, p0, Lcom/lenovo/scg/camera/Thumbnail;->mZoomBitmap:Landroid/graphics/Bitmap;

    .line 65
    .end local v0    # "tmpBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {p2, p3, p4}, Lcom/lenovo/scg/camera/Thumbnail;->rotateImage(Landroid/graphics/Bitmap;ILcom/lenovo/scg/camera/MaskBitmapHolder;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    .line 66
    return-void
.end method

.method public static createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;ILcom/lenovo/scg/camera/MaskBitmapHolder;)Lcom/lenovo/scg/camera/Thumbnail;
    .locals 6
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I
    .param p3, "holder"    # Lcom/lenovo/scg/camera/MaskBitmapHolder;

    .prologue
    const/4 v1, 0x0

    .line 192
    if-nez p1, :cond_0

    .line 193
    const-string v2, "Thumbnail"

    const-string v3, "Failed to create thumbnail from null bitmap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :goto_0
    return-object v1

    .line 197
    :cond_0
    :try_start_0
    new-instance v2, Lcom/lenovo/scg/camera/Thumbnail;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/lenovo/scg/camera/Thumbnail;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;ILcom/lenovo/scg/camera/MaskBitmapHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Thumbnail.createThumbnail error: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static createThumbnail([BIILandroid/net/Uri;Lcom/lenovo/scg/camera/MaskBitmapHolder;)Lcom/lenovo/scg/camera/Thumbnail;
    .locals 4
    .param p0, "jpeg"    # [B
    .param p1, "orientation"    # I
    .param p2, "inSampleSize"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "holder"    # Lcom/lenovo/scg/camera/MaskBitmapHolder;

    .prologue
    .line 185
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 186
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 187
    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {p0, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 188
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p3, v0, p1, p4}, Lcom/lenovo/scg/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;ILcom/lenovo/scg/camera/MaskBitmapHolder;)Lcom/lenovo/scg/camera/Thumbnail;

    move-result-object v2

    return-object v2
.end method

.method public static createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "targetWidth"    # I

    .prologue
    .line 555
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/lenovo/scg/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "targetWidth"    # I

    .prologue
    .line 559
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/lenovo/scg/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "targetWidth"    # I

    .prologue
    .line 563
    const/4 v0, 0x0

    .line 564
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 566
    .local v3, "retriever":Landroid/media/MediaMetadataRetriever;
    if-eqz p0, :cond_0

    .line 567
    :try_start_0
    invoke-virtual {v3, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 571
    :goto_0
    const-wide/16 v8, -0x1

    invoke-virtual {v3, v8, v9}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 578
    :try_start_1
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    .line 583
    :goto_1
    if-nez v0, :cond_1

    const/4 v7, 0x0

    .line 594
    :goto_2
    return-object v7

    .line 569
    :cond_0
    :try_start_2
    invoke-virtual {v3, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 572
    :catch_0
    move-exception v7

    .line 578
    :try_start_3
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 579
    :catch_1
    move-exception v7

    goto :goto_1

    .line 574
    :catch_2
    move-exception v7

    .line 578
    :try_start_4
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 579
    :catch_3
    move-exception v7

    goto :goto_1

    .line 577
    :catchall_0
    move-exception v7

    .line 578
    :try_start_5
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    .line 581
    :goto_3
    throw v7

    .line 586
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 587
    .local v6, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 588
    .local v2, "height":I
    if-le v6, p2, :cond_2

    .line 589
    int-to-float v7, p2

    int-to-float v8, v6

    div-float v4, v7, v8

    .line 590
    .local v4, "scale":F
    int-to-float v7, v6

    mul-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 591
    .local v5, "w":I
    int-to-float v7, v2

    mul-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 592
    .local v1, "h":I
    const/4 v7, 0x1

    invoke-static {v0, v5, v1, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local v1    # "h":I
    .end local v4    # "scale":F
    .end local v5    # "w":I
    :cond_2
    move-object v7, v0

    .line 594
    goto :goto_2

    .line 579
    .end local v2    # "height":I
    .end local v6    # "width":I
    :catch_4
    move-exception v7

    goto :goto_1

    :catch_5
    move-exception v8

    goto :goto_3
.end method

.method public static getBitmapFromeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    .line 599
    const/4 v0, 0x0

    .line 601
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 602
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x4

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 603
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 604
    return-object v0
.end method

.method private static getLast2ImageThumbnail(Landroid/content/ContentResolver;)Lcom/lenovo/scg/camera/Thumbnail$Media;
    .locals 16
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v7, 0x0

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 402
    sget-object v14, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 404
    .local v14, "baseUri":Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v5, "limit"

    const-string v10, "2"

    invoke-virtual {v1, v5, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 405
    .local v2, "query":Landroid/net/Uri;
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v3, v11

    const-string/jumbo v1, "orientation"

    aput-object v1, v3, v12

    const-string v1, "datetaken"

    aput-object v1, v3, v13

    .line 406
    .local v3, "projection":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mime_type=\'image/jpeg\' AND bucket_id="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/lenovo/scg/camera/Storage;->BUCKET_ID:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 407
    .local v4, "selection":Ljava/lang/String;
    const-string v6, "datetaken DESC,_id DESC"

    .line 409
    .local v6, "order":Ljava/lang/String;
    const/4 v15, 0x0

    .line 411
    .local v15, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    move-object/from16 v1, p0

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 412
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 413
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 414
    .local v8, "id":J
    new-instance v7, Lcom/lenovo/scg/camera/Thumbnail$Media;

    const/4 v1, 0x1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v1, 0x2

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v14, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    invoke-direct/range {v7 .. v13}, Lcom/lenovo/scg/camera/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    if-eqz v15, :cond_0

    .line 418
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 421
    .end local v8    # "id":J
    :cond_0
    :goto_0
    return-object v7

    .line 417
    :cond_1
    if-eqz v15, :cond_0

    .line 418
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 417
    :catchall_0
    move-exception v1

    if-eqz v15, :cond_2

    .line 418
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private static getLast2VideoThumbnail(Landroid/content/ContentResolver;)Lcom/lenovo/scg/camera/Thumbnail$Media;
    .locals 16
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v7, 0x0

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 504
    sget-object v14, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 506
    .local v14, "baseUri":Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v5, "limit"

    const-string v10, "2"

    invoke-virtual {v1, v5, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 507
    .local v2, "query":Landroid/net/Uri;
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v3, v11

    const-string v1, "_data"

    aput-object v1, v3, v12

    const-string v1, "datetaken"

    aput-object v1, v3, v13

    .line 508
    .local v3, "projection":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bucket_id="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/lenovo/scg/camera/Storage;->BUCKET_ID:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 509
    .local v4, "selection":Ljava/lang/String;
    const-string v6, "datetaken DESC,_id DESC"

    .line 511
    .local v6, "order":Ljava/lang/String;
    const/4 v15, 0x0

    .line 513
    .local v15, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    move-object/from16 v1, p0

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 514
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    const-string v1, "Thumbnail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLastVideoThumbnail: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x1

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 517
    .local v8, "id":J
    new-instance v7, Lcom/lenovo/scg/camera/Thumbnail$Media;

    const/4 v10, 0x0

    const/4 v1, 0x2

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v14, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    invoke-direct/range {v7 .. v13}, Lcom/lenovo/scg/camera/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    if-eqz v15, :cond_0

    .line 521
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 524
    .end local v8    # "id":J
    :cond_0
    :goto_0
    return-object v7

    .line 520
    :cond_1
    if-eqz v15, :cond_0

    .line 521
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 520
    :catchall_0
    move-exception v1

    if-eqz v15, :cond_2

    .line 521
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private static getLastContinuousImageThumbnail(Landroid/content/ContentResolver;I)Lcom/lenovo/scg/camera/Thumbnail$Media;
    .locals 16
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "hashCode"    # I

    .prologue
    .line 425
    sget-object v14, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 427
    .local v14, "baseUri":Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v5, "limit"

    const-string v7, "2"

    invoke-virtual {v1, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 428
    .local v2, "query":Landroid/net/Uri;
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v1

    const/4 v1, 0x1

    const-string/jumbo v5, "orientation"

    aput-object v5, v3, v1

    const/4 v1, 0x2

    const-string v5, "datetaken"

    aput-object v5, v3, v1

    .line 429
    .local v3, "projection":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mime_type=\'image/jpeg\' AND bucket_id="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 430
    .local v4, "selection":Ljava/lang/String;
    const-string v6, "datetaken DESC,_id DESC"

    .line 432
    .local v6, "order":Ljava/lang/String;
    const/4 v15, 0x0

    .line 434
    .local v15, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    move-object/from16 v1, p0

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 435
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 437
    .local v8, "id":J
    new-instance v7, Lcom/lenovo/scg/camera/Thumbnail$Media;

    const/4 v1, 0x1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v1, 0x2

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v14, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    invoke-direct/range {v7 .. v13}, Lcom/lenovo/scg/camera/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    if-eqz v15, :cond_0

    .line 441
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 444
    .end local v8    # "id":J
    :cond_0
    :goto_0
    return-object v7

    .line 440
    :cond_1
    if-eqz v15, :cond_2

    .line 441
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 444
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 440
    :catchall_0
    move-exception v1

    if-eqz v15, :cond_3

    .line 441
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private static getLastContinuousMedia(Landroid/content/ContentResolver;)Lcom/lenovo/scg/camera/Thumbnail$Media;
    .locals 12
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 448
    const/4 v4, 0x0

    .line 449
    .local v4, "image":Lcom/lenovo/scg/camera/Thumbnail$Media;
    new-instance v10, Ljava/io/File;

    invoke-static {}, Lcom/lenovo/scg/camera/Storage;->getCurrentDirectory()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 450
    .local v10, "path":Ljava/io/File;
    new-instance v11, Lcom/lenovo/scg/camera/ContinuosFileFilter;

    invoke-direct {v11}, Lcom/lenovo/scg/camera/ContinuosFileFilter;-><init>()V

    invoke-virtual {v10, v11}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 452
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_4

    .line 453
    const/4 v0, 0x0

    .line 454
    .local v0, "fLast":Ljava/io/File;
    const-wide/16 v8, 0x0

    .line 455
    .local v8, "lLastTime":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v11, v1

    if-ge v3, v11, :cond_3

    .line 456
    aget-object v11, v1, v3

    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 455
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 459
    :cond_1
    aget-object v11, v1, v3

    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 460
    .local v2, "fs":[Ljava/io/File;
    if-eqz v2, :cond_2

    array-length v11, v2

    if-lez v11, :cond_0

    .line 464
    :cond_2
    aget-object v11, v1, v3

    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 465
    .local v6, "lCur":J
    cmp-long v11, v6, v8

    if-lez v11, :cond_0

    .line 466
    move-wide v8, v6

    .line 467
    aget-object v0, v1, v3

    goto :goto_1

    .line 470
    .end local v2    # "fs":[Ljava/io/File;
    .end local v6    # "lCur":J
    :cond_3
    if-eqz v0, :cond_4

    .line 471
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v5

    .line 472
    .local v5, "nCode":I
    invoke-static {p0, v5}, Lcom/lenovo/scg/camera/Thumbnail;->getLastContinuousImageThumbnail(Landroid/content/ContentResolver;I)Lcom/lenovo/scg/camera/Thumbnail$Media;

    move-result-object v4

    .line 476
    .end local v0    # "fLast":Ljava/io/File;
    .end local v3    # "i":I
    .end local v5    # "nCode":I
    .end local v8    # "lLastTime":J
    :cond_4
    return-object v4
.end method

.method private static getLastImageThumbnail(Landroid/content/ContentResolver;)Lcom/lenovo/scg/camera/Thumbnail$Media;
    .locals 16
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 372
    sget-object v14, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 374
    .local v14, "baseUri":Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v5, "limit"

    const-string v10, "1"

    invoke-virtual {v1, v5, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 376
    .local v2, "query":Landroid/net/Uri;
    const/4 v1, 0x6

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v1

    const/4 v1, 0x1

    const-string/jumbo v5, "orientation"

    aput-object v5, v3, v1

    const/4 v1, 0x2

    const-string v5, "datetaken"

    aput-object v5, v3, v1

    const/4 v1, 0x3

    const-string/jumbo v5, "width"

    aput-object v5, v3, v1

    const/4 v1, 0x4

    const-string v5, "height"

    aput-object v5, v3, v1

    const/4 v1, 0x5

    const-string v5, "_data"

    aput-object v5, v3, v1

    .line 377
    .local v3, "projection":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mime_type=\'image/jpeg\' AND bucket_id="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/lenovo/scg/camera/Storage;->BUCKET_ID:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 378
    .local v4, "selection":Ljava/lang/String;
    const-string v6, "datetaken DESC,_id DESC"

    .line 380
    .local v6, "order":Ljava/lang/String;
    const/4 v15, 0x0

    .line 382
    .local v15, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    move-object/from16 v1, p0

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 383
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 385
    .local v8, "id":J
    new-instance v7, Lcom/lenovo/scg/camera/Thumbnail$Media;

    const/4 v1, 0x1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v1, 0x2

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v14, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    invoke-direct/range {v7 .. v13}, Lcom/lenovo/scg/camera/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;)V

    .line 387
    .local v7, "media":Lcom/lenovo/scg/camera/Thumbnail$Media;
    const/4 v1, 0x3

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/lenovo/scg/camera/Thumbnail$Media;->nWidth:I

    .line 388
    const/4 v1, 0x4

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/lenovo/scg/camera/Thumbnail$Media;->nHeight:I

    .line 389
    const/4 v1, 0x5

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/lenovo/scg/camera/Thumbnail$Media;->sPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    if-eqz v15, :cond_0

    .line 395
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 398
    .end local v7    # "media":Lcom/lenovo/scg/camera/Thumbnail$Media;
    .end local v8    # "id":J
    :cond_0
    :goto_0
    return-object v7

    .line 394
    :cond_1
    if-eqz v15, :cond_2

    .line 395
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 398
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 394
    :catchall_0
    move-exception v1

    if-eqz v15, :cond_3

    .line 395
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public static getLastThumbnailFromContentResolver(Landroid/content/ContentResolver;[Lcom/lenovo/scg/camera/Thumbnail;Lcom/lenovo/scg/camera/MaskBitmapHolder;)I
    .locals 13
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "result"    # [Lcom/lenovo/scg/camera/Thumbnail;
    .param p2, "holder"    # Lcom/lenovo/scg/camera/MaskBitmapHolder;

    .prologue
    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 242
    invoke-static {p0}, Lcom/lenovo/scg/camera/Thumbnail;->getLastImageThumbnail(Landroid/content/ContentResolver;)Lcom/lenovo/scg/camera/Thumbnail$Media;

    move-result-object v1

    .line 243
    .local v1, "image":Lcom/lenovo/scg/camera/Thumbnail$Media;
    invoke-static {p0}, Lcom/lenovo/scg/camera/Thumbnail;->getLastVideoThumbnail(Landroid/content/ContentResolver;)Lcom/lenovo/scg/camera/Thumbnail$Media;

    move-result-object v4

    .line 244
    .local v4, "video":Lcom/lenovo/scg/camera/Thumbnail$Media;
    if-nez v1, :cond_0

    .line 245
    invoke-static {p0}, Lcom/lenovo/scg/camera/Thumbnail;->getLast2ImageThumbnail(Landroid/content/ContentResolver;)Lcom/lenovo/scg/camera/Thumbnail$Media;

    move-result-object v1

    .line 247
    :cond_0
    if-nez v4, :cond_1

    .line 248
    invoke-static {p0}, Lcom/lenovo/scg/camera/Thumbnail;->getLast2VideoThumbnail(Landroid/content/ContentResolver;)Lcom/lenovo/scg/camera/Thumbnail$Media;

    move-result-object v4

    .line 252
    :cond_1
    if-nez v1, :cond_3

    if-nez v4, :cond_3

    .line 253
    invoke-static {p0}, Lcom/lenovo/scg/camera/Thumbnail;->getLastContinuousMedia(Landroid/content/ContentResolver;)Lcom/lenovo/scg/camera/Thumbnail$Media;

    move-result-object v1

    .line 273
    :cond_2
    :goto_0
    if-nez v1, :cond_5

    if-nez v4, :cond_5

    .line 292
    :goto_1
    return v5

    .line 255
    :cond_3
    invoke-static {p0}, Lcom/lenovo/scg/camera/Thumbnail;->getLastContinuousMedia(Landroid/content/ContentResolver;)Lcom/lenovo/scg/camera/Thumbnail$Media;

    move-result-object v3

    .line 256
    .local v3, "tmpMedia":Lcom/lenovo/scg/camera/Thumbnail$Media;
    if-eqz v3, :cond_2

    .line 258
    if-eqz v1, :cond_4

    .line 259
    iget-wide v8, v3, Lcom/lenovo/scg/camera/Thumbnail$Media;->dateTaken:J

    iget-wide v10, v1, Lcom/lenovo/scg/camera/Thumbnail$Media;->dateTaken:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_4

    .line 260
    move-object v1, v3

    .line 263
    :cond_4
    if-eqz v4, :cond_2

    .line 264
    iget-wide v8, v3, Lcom/lenovo/scg/camera/Thumbnail$Media;->dateTaken:J

    iget-wide v10, v4, Lcom/lenovo/scg/camera/Thumbnail$Media;->dateTaken:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    .line 265
    move-object v4, v3

    goto :goto_0

    .line 275
    .end local v3    # "tmpMedia":Lcom/lenovo/scg/camera/Thumbnail$Media;
    :cond_5
    const/4 v0, 0x0

    .line 279
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_7

    if-eqz v4, :cond_6

    iget-wide v8, v1, Lcom/lenovo/scg/camera/Thumbnail$Media;->dateTaken:J

    iget-wide v10, v4, Lcom/lenovo/scg/camera/Thumbnail$Media;->dateTaken:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_7

    .line 280
    :cond_6
    iget-wide v8, v1, Lcom/lenovo/scg/camera/Thumbnail$Media;->id:J

    invoke-static {p0, v8, v9, v6, v12}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 281
    move-object v2, v1

    .line 288
    .local v2, "lastMedia":Lcom/lenovo/scg/camera/Thumbnail$Media;
    :goto_2
    iget-object v7, v2, Lcom/lenovo/scg/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    invoke-static {v7, p0}, Lcom/lenovo/scg/camera/CameraUtil;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 289
    iget-object v7, v2, Lcom/lenovo/scg/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    iget v8, v2, Lcom/lenovo/scg/camera/Thumbnail$Media;->orientation:I

    invoke-static {v7, v0, v8, p2}, Lcom/lenovo/scg/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;ILcom/lenovo/scg/camera/MaskBitmapHolder;)Lcom/lenovo/scg/camera/Thumbnail;

    move-result-object v7

    aput-object v7, p1, v5

    move v5, v6

    .line 290
    goto :goto_1

    .line 283
    .end local v2    # "lastMedia":Lcom/lenovo/scg/camera/Thumbnail$Media;
    :cond_7
    iget-wide v8, v4, Lcom/lenovo/scg/camera/Thumbnail$Media;->id:J

    invoke-static {p0, v8, v9, v6, v12}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 284
    move-object v2, v4

    .restart local v2    # "lastMedia":Lcom/lenovo/scg/camera/Thumbnail$Media;
    goto :goto_2

    .line 292
    :cond_8
    const/4 v5, 0x2

    goto :goto_1
.end method

.method public static getLastThumbnailFromContentResolverWithWidth(Landroid/content/ContentResolver;[Lcom/lenovo/scg/camera/Thumbnail;Lcom/lenovo/scg/camera/MaskBitmapHolder;I)I
    .locals 12
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "result"    # [Lcom/lenovo/scg/camera/Thumbnail;
    .param p2, "holder"    # Lcom/lenovo/scg/camera/MaskBitmapHolder;
    .param p3, "nThumbnailWidth"    # I

    .prologue
    .line 297
    invoke-static {p0}, Lcom/lenovo/scg/camera/Thumbnail;->getLastImageThumbnail(Landroid/content/ContentResolver;)Lcom/lenovo/scg/camera/Thumbnail$Media;

    move-result-object v1

    .line 298
    .local v1, "image":Lcom/lenovo/scg/camera/Thumbnail$Media;
    invoke-static {p0}, Lcom/lenovo/scg/camera/Thumbnail;->getLastVideoThumbnail(Landroid/content/ContentResolver;)Lcom/lenovo/scg/camera/Thumbnail$Media;

    move-result-object v7

    .line 299
    .local v7, "video":Lcom/lenovo/scg/camera/Thumbnail$Media;
    if-nez v1, :cond_0

    .line 300
    invoke-static {p0}, Lcom/lenovo/scg/camera/Thumbnail;->getLast2ImageThumbnail(Landroid/content/ContentResolver;)Lcom/lenovo/scg/camera/Thumbnail$Media;

    move-result-object v1

    .line 302
    :cond_0
    if-nez v7, :cond_1

    .line 303
    invoke-static {p0}, Lcom/lenovo/scg/camera/Thumbnail;->getLast2VideoThumbnail(Landroid/content/ContentResolver;)Lcom/lenovo/scg/camera/Thumbnail$Media;

    move-result-object v7

    .line 307
    :cond_1
    if-nez v1, :cond_3

    if-nez v7, :cond_3

    .line 308
    invoke-static {p0}, Lcom/lenovo/scg/camera/Thumbnail;->getLastContinuousMedia(Landroid/content/ContentResolver;)Lcom/lenovo/scg/camera/Thumbnail$Media;

    move-result-object v1

    .line 331
    :cond_2
    :goto_0
    if-nez v1, :cond_6

    if-nez v7, :cond_6

    const/4 v8, 0x0

    .line 366
    :goto_1
    return v8

    .line 310
    :cond_3
    invoke-static {p0}, Lcom/lenovo/scg/camera/Thumbnail;->getLastContinuousMedia(Landroid/content/ContentResolver;)Lcom/lenovo/scg/camera/Thumbnail$Media;

    move-result-object v6

    .line 311
    .local v6, "tmpMedia":Lcom/lenovo/scg/camera/Thumbnail$Media;
    if-eqz v6, :cond_2

    .line 313
    if-eqz v1, :cond_5

    .line 314
    iget-wide v8, v6, Lcom/lenovo/scg/camera/Thumbnail$Media;->dateTaken:J

    iget-wide v10, v1, Lcom/lenovo/scg/camera/Thumbnail$Media;->dateTaken:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    .line 315
    move-object v1, v6

    .line 320
    :cond_4
    :goto_2
    if-eqz v7, :cond_2

    .line 321
    iget-wide v8, v6, Lcom/lenovo/scg/camera/Thumbnail$Media;->dateTaken:J

    iget-wide v10, v7, Lcom/lenovo/scg/camera/Thumbnail$Media;->dateTaken:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 323
    move-object v1, v6

    goto :goto_0

    .line 318
    :cond_5
    move-object v1, v6

    goto :goto_2

    .line 333
    .end local v6    # "tmpMedia":Lcom/lenovo/scg/camera/Thumbnail$Media;
    :cond_6
    const/4 v0, 0x0

    .line 337
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_a

    if-eqz v7, :cond_7

    iget-wide v8, v1, Lcom/lenovo/scg/camera/Thumbnail$Media;->dateTaken:J

    iget-wide v10, v7, Lcom/lenovo/scg/camera/Thumbnail$Media;->dateTaken:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_a

    .line 339
    :cond_7
    move-object v4, v1

    .line 341
    .local v4, "lastMedia":Lcom/lenovo/scg/camera/Thumbnail$Media;
    if-lez p3, :cond_9

    iget v8, v1, Lcom/lenovo/scg/camera/Thumbnail$Media;->nWidth:I

    if-lez v8, :cond_9

    .line 342
    iget v8, v1, Lcom/lenovo/scg/camera/Thumbnail$Media;->nWidth:I

    int-to-double v8, v8

    int-to-double v10, p3

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    .line 343
    .local v5, "ratio":I
    const/4 v2, 0x0

    .line 344
    .local v2, "inSampleSize":I
    iget v8, v1, Lcom/lenovo/scg/camera/Thumbnail$Media;->nHeight:I

    const/16 v9, 0x72c

    if-ne v8, v9, :cond_8

    .line 345
    const/4 v2, 0x4

    .line 349
    :goto_3
    iget-object v8, v4, Lcom/lenovo/scg/camera/Thumbnail$Media;->sPath:Ljava/lang/String;

    invoke-static {v8}, Lcom/lenovo/scg/common/utils/file/FileUtils;->readFileToBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 350
    .local v3, "jpegData":[B
    const/4 v8, 0x0

    iget v9, v4, Lcom/lenovo/scg/camera/Thumbnail$Media;->orientation:I

    iget-object v10, v4, Lcom/lenovo/scg/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    invoke-static {v3, v9, v2, v10, p2}, Lcom/lenovo/scg/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;Lcom/lenovo/scg/camera/MaskBitmapHolder;)Lcom/lenovo/scg/camera/Thumbnail;

    move-result-object v9

    aput-object v9, p1, v8

    .line 351
    const/4 v8, 0x1

    goto :goto_1

    .line 347
    .end local v3    # "jpegData":[B
    :cond_8
    invoke-static {v5}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    goto :goto_3

    .line 353
    .end local v2    # "inSampleSize":I
    .end local v5    # "ratio":I
    :cond_9
    iget-wide v8, v1, Lcom/lenovo/scg/camera/Thumbnail$Media;->id:J

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {p0, v8, v9, v10, v11}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 362
    :goto_4
    iget-object v8, v4, Lcom/lenovo/scg/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    invoke-static {v8, p0}, Lcom/lenovo/scg/camera/CameraUtil;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 363
    const/4 v8, 0x0

    iget-object v9, v4, Lcom/lenovo/scg/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    iget v10, v4, Lcom/lenovo/scg/camera/Thumbnail$Media;->orientation:I

    invoke-static {v9, v0, v10, p2}, Lcom/lenovo/scg/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;ILcom/lenovo/scg/camera/MaskBitmapHolder;)Lcom/lenovo/scg/camera/Thumbnail;

    move-result-object v9

    aput-object v9, p1, v8

    .line 364
    const/4 v8, 0x1

    goto :goto_1

    .line 357
    .end local v4    # "lastMedia":Lcom/lenovo/scg/camera/Thumbnail$Media;
    :cond_a
    iget-wide v8, v7, Lcom/lenovo/scg/camera/Thumbnail$Media;->id:J

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {p0, v8, v9, v10, v11}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 358
    move-object v4, v7

    .restart local v4    # "lastMedia":Lcom/lenovo/scg/camera/Thumbnail$Media;
    goto :goto_4

    .line 366
    :cond_b
    const/4 v8, 0x2

    goto/16 :goto_1
.end method

.method public static getLastThumbnailFromFile(Ljava/io/File;Landroid/content/ContentResolver;)Lcom/lenovo/scg/camera/Thumbnail;
    .locals 16
    .param p0, "filesDir"    # Ljava/io/File;
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 146
    new-instance v9, Ljava/io/File;

    const-string v12, "last_thumb"

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    .local v9, "file":Ljava/io/File;
    const/4 v11, 0x0

    .line 148
    .local v11, "uri":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 149
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 150
    .local v7, "f":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 151
    .local v1, "b":Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 152
    .local v4, "d":Ljava/io/DataInputStream;
    sget-object v13, Lcom/lenovo/scg/camera/Thumbnail;->sLock:Ljava/lang/Object;

    monitor-enter v13

    .line 154
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 155
    .end local v7    # "f":Ljava/io/FileInputStream;
    .local v8, "f":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v12, 0x1000

    invoke-direct {v2, v8, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 156
    .end local v1    # "b":Ljava/io/BufferedInputStream;
    .local v2, "b":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 157
    .end local v4    # "d":Ljava/io/DataInputStream;
    .local v5, "d":Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 158
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/lenovo/scg/camera/CameraUtil;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 159
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 160
    const/4 v10, 0x0

    .line 168
    :try_start_4
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 169
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 170
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v4, v5

    .end local v5    # "d":Ljava/io/DataInputStream;
    .restart local v4    # "d":Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2    # "b":Ljava/io/BufferedInputStream;
    .restart local v1    # "b":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .line 178
    .end local v8    # "f":Ljava/io/FileInputStream;
    .restart local v7    # "f":Ljava/io/FileInputStream;
    :goto_0
    return-object v10

    .line 162
    .end local v1    # "b":Ljava/io/BufferedInputStream;
    .end local v4    # "d":Ljava/io/DataInputStream;
    .end local v7    # "f":Ljava/io/FileInputStream;
    .restart local v2    # "b":Ljava/io/BufferedInputStream;
    .restart local v5    # "d":Ljava/io/DataInputStream;
    .restart local v8    # "f":Ljava/io/FileInputStream;
    :cond_0
    :try_start_5
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-result-object v3

    .line 168
    :try_start_6
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 169
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 170
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 172
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 173
    const/4 v10, 0x0

    .line 174
    .local v10, "thumbnail":Lcom/lenovo/scg/camera/Thumbnail;
    if-eqz v3, :cond_1

    .line 175
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v13}, Lcom/lenovo/scg/camera/MaskBitmapHolder;->getInstance(Landroid/content/res/Resources;)Lcom/lenovo/scg/camera/MaskBitmapHolder;

    move-result-object v13

    invoke-static {v11, v3, v12, v13}, Lcom/lenovo/scg/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;ILcom/lenovo/scg/camera/MaskBitmapHolder;)Lcom/lenovo/scg/camera/Thumbnail;

    move-result-object v10

    .line 177
    :cond_1
    if-eqz v10, :cond_2

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/lenovo/scg/camera/Thumbnail;->setFromFile(Z)V

    :cond_2
    move-object v4, v5

    .end local v5    # "d":Ljava/io/DataInputStream;
    .restart local v4    # "d":Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2    # "b":Ljava/io/BufferedInputStream;
    .restart local v1    # "b":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .line 178
    .end local v8    # "f":Ljava/io/FileInputStream;
    .restart local v7    # "f":Ljava/io/FileInputStream;
    goto :goto_0

    .line 164
    .end local v10    # "thumbnail":Lcom/lenovo/scg/camera/Thumbnail;
    :catch_0
    move-exception v6

    .line 165
    .local v6, "e":Ljava/io/IOException;
    :goto_1
    :try_start_7
    const-string v12, "Thumbnail"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Fail to load bitmap. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 166
    const/4 v10, 0x0

    .line 168
    :try_start_8
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 169
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 170
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    monitor-exit v13

    goto :goto_0

    .line 172
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_2
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v12

    .line 168
    :catchall_1
    move-exception v12

    :goto_3
    :try_start_9
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 169
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 170
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 172
    .end local v1    # "b":Ljava/io/BufferedInputStream;
    .end local v4    # "d":Ljava/io/DataInputStream;
    .end local v7    # "f":Ljava/io/FileInputStream;
    .restart local v2    # "b":Ljava/io/BufferedInputStream;
    .restart local v5    # "d":Ljava/io/DataInputStream;
    .restart local v8    # "f":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v12

    move-object v4, v5

    .end local v5    # "d":Ljava/io/DataInputStream;
    .restart local v4    # "d":Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2    # "b":Ljava/io/BufferedInputStream;
    .restart local v1    # "b":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "f":Ljava/io/FileInputStream;
    .restart local v7    # "f":Ljava/io/FileInputStream;
    goto :goto_2

    .line 168
    .end local v7    # "f":Ljava/io/FileInputStream;
    .restart local v8    # "f":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v12

    move-object v7, v8

    .end local v8    # "f":Ljava/io/FileInputStream;
    .restart local v7    # "f":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1    # "b":Ljava/io/BufferedInputStream;
    .end local v7    # "f":Ljava/io/FileInputStream;
    .restart local v2    # "b":Ljava/io/BufferedInputStream;
    .restart local v8    # "f":Ljava/io/FileInputStream;
    :catchall_4
    move-exception v12

    move-object v1, v2

    .end local v2    # "b":Ljava/io/BufferedInputStream;
    .restart local v1    # "b":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "f":Ljava/io/FileInputStream;
    .restart local v7    # "f":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1    # "b":Ljava/io/BufferedInputStream;
    .end local v4    # "d":Ljava/io/DataInputStream;
    .end local v7    # "f":Ljava/io/FileInputStream;
    .restart local v2    # "b":Ljava/io/BufferedInputStream;
    .restart local v5    # "d":Ljava/io/DataInputStream;
    .restart local v8    # "f":Ljava/io/FileInputStream;
    :catchall_5
    move-exception v12

    move-object v4, v5

    .end local v5    # "d":Ljava/io/DataInputStream;
    .restart local v4    # "d":Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2    # "b":Ljava/io/BufferedInputStream;
    .restart local v1    # "b":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "f":Ljava/io/FileInputStream;
    .restart local v7    # "f":Ljava/io/FileInputStream;
    goto :goto_3

    .line 164
    .end local v7    # "f":Ljava/io/FileInputStream;
    .restart local v8    # "f":Ljava/io/FileInputStream;
    :catch_1
    move-exception v6

    move-object v7, v8

    .end local v8    # "f":Ljava/io/FileInputStream;
    .restart local v7    # "f":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v1    # "b":Ljava/io/BufferedInputStream;
    .end local v7    # "f":Ljava/io/FileInputStream;
    .restart local v2    # "b":Ljava/io/BufferedInputStream;
    .restart local v8    # "f":Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    move-object v1, v2

    .end local v2    # "b":Ljava/io/BufferedInputStream;
    .restart local v1    # "b":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "f":Ljava/io/FileInputStream;
    .restart local v7    # "f":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v1    # "b":Ljava/io/BufferedInputStream;
    .end local v4    # "d":Ljava/io/DataInputStream;
    .end local v7    # "f":Ljava/io/FileInputStream;
    .restart local v2    # "b":Ljava/io/BufferedInputStream;
    .restart local v5    # "d":Ljava/io/DataInputStream;
    .restart local v8    # "f":Ljava/io/FileInputStream;
    :catch_3
    move-exception v6

    move-object v4, v5

    .end local v5    # "d":Ljava/io/DataInputStream;
    .restart local v4    # "d":Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2    # "b":Ljava/io/BufferedInputStream;
    .restart local v1    # "b":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "f":Ljava/io/FileInputStream;
    .restart local v7    # "f":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private static getLastVideoThumbnail(Landroid/content/ContentResolver;)Lcom/lenovo/scg/camera/Thumbnail$Media;
    .locals 16
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v7, 0x0

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 480
    sget-object v14, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 482
    .local v14, "baseUri":Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v5, "limit"

    const-string v10, "1"

    invoke-virtual {v1, v5, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 483
    .local v2, "query":Landroid/net/Uri;
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v3, v11

    const-string v1, "_data"

    aput-object v1, v3, v12

    const-string v1, "datetaken"

    aput-object v1, v3, v13

    .line 484
    .local v3, "projection":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bucket_id="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/lenovo/scg/camera/Storage;->BUCKET_ID:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 485
    .local v4, "selection":Ljava/lang/String;
    const-string v6, "datetaken DESC,_id DESC"

    .line 487
    .local v6, "order":Ljava/lang/String;
    const/4 v15, 0x0

    .line 489
    .local v15, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    move-object/from16 v1, p0

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 490
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 491
    const-string v1, "Thumbnail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLastVideoThumbnail: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x1

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 493
    .local v8, "id":J
    new-instance v7, Lcom/lenovo/scg/camera/Thumbnail$Media;

    const/4 v10, 0x0

    const/4 v1, 0x2

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v14, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    invoke-direct/range {v7 .. v13}, Lcom/lenovo/scg/camera/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    if-eqz v15, :cond_0

    .line 497
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 500
    .end local v8    # "id":J
    :cond_0
    :goto_0
    return-object v7

    .line 496
    :cond_1
    if-eqz v15, :cond_0

    .line 497
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 496
    :catchall_0
    move-exception v1

    if-eqz v15, :cond_2

    .line 497
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static needSpectialHandle(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 609
    const/4 v8, 0x0

    .line 610
    .local v8, "pathName":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 611
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "width"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "height"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_data"

    aput-object v1, v2, v0

    .local v2, "projection":[Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 612
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 613
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 614
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 615
    const-string/jumbo v0, "width"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 616
    .local v9, "width":I
    const-string v0, "height"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 617
    .local v7, "height":I
    rem-int/lit8 v0, v9, 0x10

    if-nez v0, :cond_0

    rem-int/lit8 v0, v7, 0x10

    if-eqz v0, :cond_1

    .line 618
    :cond_0
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 621
    .end local v7    # "height":I
    .end local v9    # "width":I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 624
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    return-object v8
.end method

.method private static rotateImage(Landroid/graphics/Bitmap;ILcom/lenovo/scg/camera/MaskBitmapHolder;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "orientation"    # I
    .param p2, "holder"    # Lcom/lenovo/scg/camera/MaskBitmapHolder;

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 208
    if-eqz p1, :cond_2

    .line 210
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 211
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 214
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 217
    .local v8, "rotated":Landroid/graphics/Bitmap;
    if-eq v8, p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 218
    :cond_0
    invoke-virtual {p2, v8}, Lcom/lenovo/scg/camera/MaskBitmapHolder;->makeBitmapWithMask(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 219
    .local v7, "masked":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_1

    .line 220
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v8    # "rotated":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object v7

    .line 223
    .end local v7    # "masked":Landroid/graphics/Bitmap;
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :catch_0
    move-exception v9

    .line 224
    .local v9, "t":Ljava/lang/Throwable;
    const-string v0, "Thumbnail"

    const-string v1, "Failed to rotate thumbnail"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v9    # "t":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {p2, p0}, Lcom/lenovo/scg/camera/MaskBitmapHolder;->makeBitmapWithMask(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 228
    .restart local v7    # "masked":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_1

    .line 229
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public fromFile()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/Thumbnail;->mFromFile:Z

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lenovo/scg/camera/Thumbnail;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getZoomBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/camera/Thumbnail;->mZoomBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public saveLastThumbnailToFile(Ljava/io/File;)V
    .locals 12
    .param p1, "filesDir"    # Ljava/io/File;

    .prologue
    .line 110
    iget-object v8, p0, Lcom/lenovo/scg/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/lenovo/scg/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 111
    :cond_0
    const-string/jumbo v8, "saveLastThumbnailToFile: bitmap is null or recycled"

    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 141
    :goto_0
    return-void

    .line 114
    :cond_1
    new-instance v7, Ljava/io/File;

    const-string v8, "last_thumb"

    invoke-direct {v7, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    .local v7, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 116
    .local v5, "f":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 117
    .local v0, "b":Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    .line 118
    .local v2, "d":Ljava/io/DataOutputStream;
    sget-object v9, Lcom/lenovo/scg/camera/Thumbnail;->sLock:Ljava/lang/Object;

    monitor-enter v9

    .line 120
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 121
    .end local v5    # "f":Ljava/io/FileOutputStream;
    .local v6, "f":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v8, 0x1000

    invoke-direct {v1, v6, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 122
    .end local v0    # "b":Ljava/io/BufferedOutputStream;
    .local v1, "b":Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 123
    .end local v2    # "d":Ljava/io/DataOutputStream;
    .local v3, "d":Ljava/io/DataOutputStream;
    :try_start_3
    iget-object v8, p0, Lcom/lenovo/scg/camera/Thumbnail;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 124
    iget-object v8, p0, Lcom/lenovo/scg/camera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x5a

    invoke-virtual {v8, v10, v11, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 135
    :try_start_4
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 137
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 138
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v2, v3

    .end local v3    # "d":Ljava/io/DataOutputStream;
    .restart local v2    # "d":Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1    # "b":Ljava/io/BufferedOutputStream;
    .restart local v0    # "b":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .line 140
    .end local v6    # "f":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_5
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v8

    :goto_2
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v8

    .line 128
    :catch_0
    move-exception v4

    .line 129
    .local v4, "e":Ljava/lang/IllegalStateException;
    :goto_3
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 135
    :try_start_7
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 137
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 138
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 130
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v4

    .line 131
    .local v4, "e":Ljava/lang/NullPointerException;
    :goto_4
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 135
    :try_start_9
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 137
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 138
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 132
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v4

    .line 133
    .local v4, "e":Ljava/io/IOException;
    :goto_5
    :try_start_a
    const-string v8, "Thumbnail"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fail to store bitmap. path="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 135
    :try_start_b
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 137
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 138
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 135
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v8

    :goto_6
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 137
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 138
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 140
    .end local v0    # "b":Ljava/io/BufferedOutputStream;
    .end local v2    # "d":Ljava/io/DataOutputStream;
    .end local v5    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "b":Ljava/io/BufferedOutputStream;
    .restart local v3    # "d":Ljava/io/DataOutputStream;
    .restart local v6    # "f":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v2, v3

    .end local v3    # "d":Ljava/io/DataOutputStream;
    .restart local v2    # "d":Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1    # "b":Ljava/io/BufferedOutputStream;
    .restart local v0    # "b":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "f":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 135
    .end local v5    # "f":Ljava/io/FileOutputStream;
    .restart local v6    # "f":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v8

    move-object v5, v6

    .end local v6    # "f":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v0    # "b":Ljava/io/BufferedOutputStream;
    .end local v5    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "b":Ljava/io/BufferedOutputStream;
    .restart local v6    # "f":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v8

    move-object v0, v1

    .end local v1    # "b":Ljava/io/BufferedOutputStream;
    .restart local v0    # "b":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "f":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v0    # "b":Ljava/io/BufferedOutputStream;
    .end local v2    # "d":Ljava/io/DataOutputStream;
    .end local v5    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "b":Ljava/io/BufferedOutputStream;
    .restart local v3    # "d":Ljava/io/DataOutputStream;
    .restart local v6    # "f":Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v8

    move-object v2, v3

    .end local v3    # "d":Ljava/io/DataOutputStream;
    .restart local v2    # "d":Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1    # "b":Ljava/io/BufferedOutputStream;
    .restart local v0    # "b":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "f":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 132
    .end local v5    # "f":Ljava/io/FileOutputStream;
    .restart local v6    # "f":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    move-object v5, v6

    .end local v6    # "f":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v0    # "b":Ljava/io/BufferedOutputStream;
    .end local v5    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "b":Ljava/io/BufferedOutputStream;
    .restart local v6    # "f":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v4

    move-object v0, v1

    .end local v1    # "b":Ljava/io/BufferedOutputStream;
    .restart local v0    # "b":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "f":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v0    # "b":Ljava/io/BufferedOutputStream;
    .end local v2    # "d":Ljava/io/DataOutputStream;
    .end local v5    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "b":Ljava/io/BufferedOutputStream;
    .restart local v3    # "d":Ljava/io/DataOutputStream;
    .restart local v6    # "f":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3    # "d":Ljava/io/DataOutputStream;
    .restart local v2    # "d":Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1    # "b":Ljava/io/BufferedOutputStream;
    .restart local v0    # "b":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "f":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 130
    .end local v5    # "f":Ljava/io/FileOutputStream;
    .restart local v6    # "f":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v4

    move-object v5, v6

    .end local v6    # "f":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v0    # "b":Ljava/io/BufferedOutputStream;
    .end local v5    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "b":Ljava/io/BufferedOutputStream;
    .restart local v6    # "f":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v4

    move-object v0, v1

    .end local v1    # "b":Ljava/io/BufferedOutputStream;
    .restart local v0    # "b":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "f":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v0    # "b":Ljava/io/BufferedOutputStream;
    .end local v2    # "d":Ljava/io/DataOutputStream;
    .end local v5    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "b":Ljava/io/BufferedOutputStream;
    .restart local v3    # "d":Ljava/io/DataOutputStream;
    .restart local v6    # "f":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v4

    move-object v2, v3

    .end local v3    # "d":Ljava/io/DataOutputStream;
    .restart local v2    # "d":Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1    # "b":Ljava/io/BufferedOutputStream;
    .restart local v0    # "b":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "f":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 128
    .end local v5    # "f":Ljava/io/FileOutputStream;
    .restart local v6    # "f":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v4

    move-object v5, v6

    .end local v6    # "f":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v0    # "b":Ljava/io/BufferedOutputStream;
    .end local v5    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "b":Ljava/io/BufferedOutputStream;
    .restart local v6    # "f":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v4

    move-object v0, v1

    .end local v1    # "b":Ljava/io/BufferedOutputStream;
    .restart local v0    # "b":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "f":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v0    # "b":Ljava/io/BufferedOutputStream;
    .end local v2    # "d":Ljava/io/DataOutputStream;
    .end local v5    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "b":Ljava/io/BufferedOutputStream;
    .restart local v3    # "d":Ljava/io/DataOutputStream;
    .restart local v6    # "f":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v4

    move-object v2, v3

    .end local v3    # "d":Ljava/io/DataOutputStream;
    .restart local v2    # "d":Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1    # "b":Ljava/io/BufferedOutputStream;
    .restart local v0    # "b":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "f":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/FileOutputStream;
    goto/16 :goto_3
.end method

.method public setFromFile(Z)V
    .locals 0
    .param p1, "fromFile"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/Thumbnail;->mFromFile:Z

    .line 96
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/lenovo/scg/camera/Thumbnail;->mUri:Landroid/net/Uri;

    .line 80
    return-void
.end method
