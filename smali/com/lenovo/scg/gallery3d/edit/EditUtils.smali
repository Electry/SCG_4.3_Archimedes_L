.class public Lcom/lenovo/scg/gallery3d/edit/EditUtils;
.super Ljava/lang/Object;
.source "EditUtils.java"


# static fields
.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x5a

.field private static final EXIF_TAGS:[Ljava/lang/String;

.field private static FILEPATH:Ljava/lang/String;

.field private static final IMAGE_PROJECTION:[Ljava/lang/String;

.field private static final INDEX_ORIENTATION:I

.field private static SCALED_IMAGE_HEIGHT:I

.field private static SCALED_IMAGE_WIDTH:I


# instance fields
.field private oldExif:Landroid/media/ExifInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DateTime"

    aput-object v1, v0, v3

    const-string v1, "Make"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "Model"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Flash"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "GPSLatitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "GPSLongitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GPSLatitudeRef"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GPSLongitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "GPSAltitude"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GPSAltitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "GPSTimeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "GPSDateStamp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "WhiteBalance"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "FocalLength"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "GPSProcessingMethod"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->EXIF_TAGS:[Ljava/lang/String;

    .line 54
    const/16 v0, 0x2d0

    sput v0, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->SCALED_IMAGE_WIDTH:I

    .line 56
    const/16 v0, 0x4b0

    sput v0, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->SCALED_IMAGE_HEIGHT:I

    .line 60
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "orientation"

    aput-object v1, v0, v3

    sput-object v0, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->IMAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->oldExif:Landroid/media/ExifInterface;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".Gallery3d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->FILEPATH:Ljava/lang/String;

    .line 64
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->FILEPATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/edit/EditUtils;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/EditUtils;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->deleteFile(Ljava/io/File;)V

    return-void
.end method

.method private closeStream(Ljava/io/Closeable;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/Closeable;

    .prologue
    .line 291
    if-eqz p1, :cond_0

    .line 293
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private createBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "m"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v1, 0x0

    .line 265
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 266
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    return-object v7
.end method

.method private deleteFile(Ljava/io/File;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 347
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 357
    :goto_0
    return-void

    .line 350
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 351
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 352
    .local v4, "subs":[Ljava/io/File;
    move-object v0, v4

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 353
    .local v1, "f":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->deleteFile(Ljava/io/File;)V

    .line 352
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 356
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "subs":[Ljava/io/File;
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private getBitmapBounds(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 270
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 271
    .local v0, "bounds":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 274
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 275
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 276
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 277
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 279
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 280
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v4, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->closeStream(Ljava/io/Closeable;)V

    .line 287
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v0

    .line 281
    :catch_0
    move-exception v1

    .line 282
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v4

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->closeStream(Ljava/io/Closeable;)V

    throw v4
.end method

.method public static initOriginalBitmapPath(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 418
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 420
    .local v0, "application":Landroid/app/Application;
    invoke-static {p1, p0}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->getRealPath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, "mOriginalBitmapPath":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 423
    check-cast v0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;

    .end local v0    # "application":Landroid/app/Application;
    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mCurrentImagePath:Ljava/lang/String;

    .line 424
    return-void
.end method

.method public static ioToByte(Ljava/lang/String;)[B
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 84
    .local v0, "bytes":[B
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 85
    .local v2, "is":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    .line 86
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 87
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static openPhoto(Landroid/app/Activity;Landroid/widget/ProgressBar;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;)Z
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "progressBar"    # Landroid/widget/ProgressBar;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 436
    if-eqz p1, :cond_0

    .line 437
    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 440
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 441
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p0, v1}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->initOriginalBitmapPath(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 442
    new-instance v4, Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask;

    invoke-direct {v4, p0, p3}, Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;)V

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/net/Uri;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return v2

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 445
    goto :goto_0
.end method


# virtual methods
.method public Bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 107
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    :cond_0
    const/4 v1, 0x0

    .line 113
    :goto_0
    return-object v1

    .line 111
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 112
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 113
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0
.end method

.method public Bytes2Bimap([B)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "b"    # [B

    .prologue
    const/4 v0, 0x0

    .line 95
    if-nez p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-object v0

    .line 98
    :cond_1
    array-length v1, p1

    if-eqz v1, :cond_0

    .line 99
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public copyExif(Landroid/media/ExifInterface;Landroid/media/ExifInterface;)V
    .locals 10
    .param p1, "oldExif"    # Landroid/media/ExifInterface;
    .param p2, "newExif"    # Landroid/media/ExifInterface;

    .prologue
    .line 196
    :try_start_0
    const-string v6, "Orientation"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    sget-object v1, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->EXIF_TAGS:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 199
    .local v4, "tag":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 200
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 201
    invoke-virtual {p2, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    const-string v6, "FNumber"

    invoke-virtual {p1, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 207
    .restart local v5    # "value":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 209
    :try_start_1
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 210
    .local v0, "aperture":F
    const-string v6, "FNumber"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v8, 0x41200000    # 10.0f

    mul-float/2addr v8, v0

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/10"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 213
    .end local v0    # "aperture":F
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {p2}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 215
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "value":Ljava/lang/String;
    :goto_2
    return-void

    .line 214
    :catch_0
    move-exception v6

    goto :goto_2

    .line 211
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "value":Ljava/lang/String;
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public createScaleBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "sourceBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "newWidth"    # I
    .param p3, "newHeight"    # I
    .param p4, "isCut"    # Z

    .prologue
    .line 380
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 381
    :cond_0
    const/4 v15, 0x0

    .line 414
    :cond_1
    :goto_0
    return-object v15

    .line 384
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 385
    .local v5, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 386
    .local v6, "height":I
    const/4 v10, 0x0

    .line 387
    .local v10, "scale":F
    move/from16 v0, p2

    int-to-float v2, v0

    int-to-float v3, v5

    div-float v12, v2, v3

    .line 388
    .local v12, "scaleWidth":F
    move/from16 v0, p3

    int-to-float v2, v0

    int-to-float v3, v6

    div-float v11, v2, v3

    .line 389
    .local v11, "scaleHeight":F
    cmpg-float v2, v12, v11

    if-gtz v2, :cond_3

    .line 390
    move v10, v11

    .line 394
    :goto_1
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 395
    .local v7, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v7, v10, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 396
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 397
    .local v9, "newbm":Landroid/graphics/Bitmap;
    if-eqz p4, :cond_5

    .line 398
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move/from16 v0, p2

    if-le v2, v0, :cond_4

    .line 399
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int v2, v2, p2

    div-int/lit8 v13, v2, 0x2

    .line 400
    .local v13, "startX":I
    const/4 v2, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v9, v13, v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 401
    .local v15, "targetBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 402
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 392
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "newbm":Landroid/graphics/Bitmap;
    .end local v13    # "startX":I
    .end local v15    # "targetBitmap":Landroid/graphics/Bitmap;
    :cond_3
    move v10, v12

    goto :goto_1

    .line 405
    .restart local v7    # "matrix":Landroid/graphics/Matrix;
    .restart local v9    # "newbm":Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move/from16 v0, p3

    if-le v2, v0, :cond_5

    .line 406
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int v2, v2, p3

    div-int/lit8 v14, v2, 0x2

    .line 407
    .local v14, "startY":I
    const/4 v2, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v9, v2, v14, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 408
    .restart local v15    # "targetBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 409
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .end local v14    # "startY":I
    .end local v15    # "targetBitmap":Landroid/graphics/Bitmap;
    :cond_5
    move-object v15, v9

    .line 414
    goto :goto_0
.end method

.method public createScaleBitmap(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    const/4 v4, 0x0

    .line 219
    .local v4, "is":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 220
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct/range {p0 .. p2}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->getBitmapBounds(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    .line 222
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v11, v11, 0x4

    sput v11, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->SCALED_IMAGE_WIDTH:I

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v11, v11, 0x4

    sput v11, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->SCALED_IMAGE_HEIGHT:I

    .line 225
    const-string v11, "jiaxiaowei"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SCALED_IMAGE_WIDTH:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->SCALED_IMAGE_WIDTH:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",SCALED_IMAGE_HEIGHT:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->SCALED_IMAGE_HEIGHT:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v11

    sget v12, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->SCALED_IMAGE_WIDTH:I

    div-int/2addr v11, v12

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v12

    sget v13, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->SCALED_IMAGE_HEIGHT:I

    div-int/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 228
    .local v8, "sampleSize":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v11

    sget v12, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->SCALED_IMAGE_HEIGHT:I

    div-int/2addr v11, v12

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v12

    sget v13, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->SCALED_IMAGE_WIDTH:I

    div-int/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 229
    invoke-virtual/range {p0 .. p2}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->getOrientation(Landroid/net/Uri;Landroid/content/Context;)I

    move-result v7

    .line 231
    .local v7, "orientation":I
    :try_start_0
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 232
    .local v6, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v11, 0x1

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 233
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v11, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 236
    const/4 v11, 0x0

    invoke-static {v4, v11, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 240
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->closeStream(Ljava/io/Closeable;)V

    .line 244
    .end local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v11, v12, :cond_0

    .line 245
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v12, 0x1

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 246
    .local v2, "copy":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 247
    move-object v0, v2

    .line 250
    .end local v2    # "copy":Landroid/graphics/Bitmap;
    :cond_0
    if-eqz v0, :cond_1

    .line 253
    sget v11, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->SCALED_IMAGE_WIDTH:I

    int-to-float v11, v11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    sget v12, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->SCALED_IMAGE_HEIGHT:I

    int-to-float v12, v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 254
    .local v9, "scale":F
    sget v11, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->SCALED_IMAGE_HEIGHT:I

    int-to-float v11, v11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    sget v12, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->SCALED_IMAGE_WIDTH:I

    int-to-float v12, v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 255
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 256
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 257
    int-to-float v11, v7

    invoke-virtual {v5, v11}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 258
    invoke-direct {p0, v0, v5}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->createBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 261
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v9    # "scale":F
    :goto_1
    return-object v10

    .line 237
    :catch_0
    move-exception v3

    .line 238
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v11, "jiaxiaowei"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FileNotFoundException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v11

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->closeStream(Ljava/io/Closeable;)V

    throw v11

    :cond_1
    move-object v10, v0

    .line 261
    goto :goto_1
.end method

.method public deleteTempFile()V
    .locals 1

    .prologue
    .line 332
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/EditUtils$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/edit/EditUtils$1;-><init>(Lcom/lenovo/scg/gallery3d/edit/EditUtils;)V

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/EditUtils$1;->start()V

    .line 344
    return-void
.end method

.method public getFileName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 187
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 188
    .local v0, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMddkkmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 189
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "filename":Ljava/lang/String;
    return-object v1
.end method

.method public getOrientation(Landroid/net/Uri;Landroid/content/Context;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 360
    const/4 v7, 0x0

    .line 361
    .local v7, "orientation":I
    const/4 v6, 0x0

    .line 363
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 364
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 371
    :cond_0
    if-eqz v6, :cond_1

    .line 372
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 375
    :cond_1
    :goto_0
    return v7

    .line 367
    :catch_0
    move-exception v0

    .line 371
    if-eqz v6, :cond_1

    .line 372
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 371
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 372
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public loadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->FILEPATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "filePath":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->oldExif:Landroid/media/ExifInterface;

    if-nez v4, :cond_0

    .line 69
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v3, "oldPath":Ljava/io/File;
    :try_start_0
    new-instance v4, Landroid/media/ExifInterface;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->oldExif:Landroid/media/ExifInterface;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v3    # "oldPath":Ljava/io/File;
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->ioToByte(Ljava/lang/String;)[B

    move-result-object v2

    .line 78
    .local v2, "jpegDate":[B
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->Bytes2Bimap([B)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .line 72
    .end local v2    # "jpegDate":[B
    .restart local v3    # "oldPath":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Ljava/io/File;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "directory"    # Ljava/io/File;
    .param p4, "filename"    # Ljava/lang/String;
    .param p5, "format"    # Landroid/graphics/Bitmap$CompressFormat;

    .prologue
    .line 306
    if-nez p3, :cond_1

    .line 307
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p3

    .line 315
    :cond_0
    const/4 v1, 0x0

    .line 316
    .local v1, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 319
    .local v3, "os":Ljava/io/OutputStream;
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne p5, v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 320
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 322
    .end local v3    # "os":Ljava/io/OutputStream;
    .local v4, "os":Ljava/io/OutputStream;
    const/16 v5, 0x5a

    :try_start_2
    invoke-virtual {p2, p5, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 326
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->closeStream(Ljava/io/Closeable;)V

    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    move-object v1, v2

    .line 328
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "os":Ljava/io/OutputStream;
    :goto_1
    return-object v1

    .line 310
    :cond_1
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 311
    const/4 v1, 0x0

    goto :goto_1

    .line 319
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "os":Ljava/io/OutputStream;
    :cond_2
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object p4

    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 326
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    :goto_3
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->closeStream(Ljava/io/Closeable;)V

    throw v5

    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_3

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_3

    .line 323
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_2

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_2
.end method

.method public saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 181
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->Bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 183
    .local v0, "bytes":[B
    invoke-virtual {p0, v0, p2}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->saveImage([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public saveImage([BLjava/lang/String;)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 117
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->FILEPATH:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "dir":Ljava/io/File;
    const/4 v3, 0x0

    .line 122
    .local v3, "outputStream":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 123
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 124
    :cond_2
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    invoke-direct {v2, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    .restart local v2    # "file":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .local v4, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/io/OutputStream;->write([B)V

    .line 128
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 134
    if-eqz v4, :cond_4

    .line 136
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 139
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    goto :goto_0

    .line 137
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 139
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    goto :goto_0

    .line 129
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 130
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    if-eqz v3, :cond_0

    .line 136
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 137
    :catch_2
    move-exception v1

    .line 138
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 131
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 132
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 134
    if-eqz v3, :cond_0

    .line 136
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 137
    :catch_4
    move-exception v1

    .line 138
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 134
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v3, :cond_3

    .line 136
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 139
    :cond_3
    :goto_4
    throw v5

    .line 137
    :catch_5
    move-exception v1

    .line 138
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 134
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    goto :goto_3

    .line 131
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    goto :goto_2

    .line 129
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    goto :goto_1

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :cond_4
    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    goto :goto_0
.end method

.method public storeInSD(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 162
    new-instance v1, Ljava/io/File;

    sget-object v4, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->FILEPATH:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 164
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 166
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 168
    .local v3, "imageFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 169
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 170
    .local v2, "fos":Ljava/io/FileOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x32

    invoke-virtual {p1, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 171
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 172
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 175
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
