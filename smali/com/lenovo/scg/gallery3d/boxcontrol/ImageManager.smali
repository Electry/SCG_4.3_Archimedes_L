.class public Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$1;,
        Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$EmptyImageList;,
        Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;,
        Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;
    }
.end annotation


# static fields
.field public static final CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

.field public static final CAMERA_IMAGE_BUCKET_ID2:Ljava/lang/String;

.field public static final INCLUDE_DRM_IMAGES:I = 0x2

.field public static final INCLUDE_IMAGES:I = 0x1

.field public static final INCLUDE_VIDEOS:I = 0x4

.field public static final SORT_ASCENDING:I = 0x1

.field public static final SORT_DESCENDING:I = 0x2

.field private static final STORAGE_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "ImageManager"

.field private static final THUMB_URI:Landroid/net/Uri;

.field private static final VIDEO_STORAGE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->getBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Camera/Pictures"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->getBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->CAMERA_IMAGE_BUCKET_ID2:Ljava/lang/String;

    .line 186
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    .line 190
    sget-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->THUMB_URI:Landroid/net/Uri;

    .line 192
    const-string v0, "content://media/external/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    return-void
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;
    .locals 12
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "dateTaken"    # J
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "directory"    # Ljava/lang/String;
    .param p6, "filename"    # Ljava/lang/String;
    .param p7, "source"    # Landroid/graphics/Bitmap;
    .param p8, "jpegData"    # [B
    .param p9, "degree"    # [I

    .prologue
    .line 206
    const/4 v6, 0x0

    .line 207
    .local v6, "outputStream":Ljava/io/OutputStream;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 209
    .local v5, "filePath":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p5

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 211
    :cond_0
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .local v4, "file":Ljava/io/File;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .local v7, "outputStream":Ljava/io/OutputStream;
    if-eqz p7, :cond_2

    .line 214
    :try_start_1
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x4b

    move-object/from16 v0, p7

    invoke-virtual {v0, v9, v10, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 215
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, p9, v9
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 227
    :goto_0
    invoke-static {v7}, Lcom/lenovo/scg/common/utils/bitmap/BoxCtrolUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 230
    new-instance v8, Landroid/content/ContentValues;

    const/4 v9, 0x7

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 231
    .local v8, "values":Landroid/content/ContentValues;
    const-string/jumbo v9, "title"

    invoke-virtual {v8, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v9, "_display_name"

    move-object/from16 v0, p6

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v9, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 238
    const-string/jumbo v9, "mime_type"

    const-string v10, "image/jpeg"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string/jumbo v9, "orientation"

    const/4 v10, 0x0

    aget v10, p9, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    const-string v9, "_data"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    if-eqz p4, :cond_1

    .line 243
    const-string v9, "latitude"

    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 244
    const-string v9, "longitude"

    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 247
    :cond_1
    sget-object v9, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v9, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    move-object v6, v7

    .end local v2    # "dir":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .end local v8    # "values":Landroid/content/ContentValues;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :goto_1
    return-object v9

    .line 217
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v7    # "outputStream":Ljava/io/OutputStream;
    :cond_2
    :try_start_2
    move-object/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V

    .line 218
    const/4 v9, 0x0

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    move-result v10

    aput v10, p9, v9
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 220
    :catch_0
    move-exception v3

    move-object v6, v7

    .line 221
    .end local v2    # "dir":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .local v3, "ex":Ljava/io/FileNotFoundException;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :goto_2
    :try_start_3
    const-string v9, "ImageManager"

    invoke-static {v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    const/4 v9, 0x0

    .line 227
    invoke-static {v6}, Lcom/lenovo/scg/common/utils/bitmap/BoxCtrolUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 223
    .end local v3    # "ex":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 224
    .local v3, "ex":Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string v9, "ImageManager"

    invoke-static {v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 225
    const/4 v9, 0x0

    .line 227
    invoke-static {v6}, Lcom/lenovo/scg/common/utils/bitmap/BoxCtrolUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_4
    invoke-static {v6}, Lcom/lenovo/scg/common/utils/bitmap/BoxCtrolUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v9

    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v7    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    goto :goto_4

    .line 223
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v7    # "outputStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v3

    move-object v6, v7

    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    goto :goto_3

    .line 220
    .end local v2    # "dir":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    :catch_3
    move-exception v3

    goto :goto_2
.end method

.method private static checkFsWritable()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 478
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/DCIM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, "directoryName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 480
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    .line 481
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_1

    .line 497
    :cond_0
    :goto_0
    return v4

    .line 485
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v5, ".probe"

    invoke-direct {v3, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    .local v3, "f":Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 489
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 491
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 494
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    const/4 v4, 0x1

    goto :goto_0

    .line 496
    :catch_0
    move-exception v2

    .line 497
    .local v2, "ex":Ljava/io/IOException;
    goto :goto_0
.end method

.method public static ensureOSXCompatibleFolder()V
    .locals 4

    .prologue
    .line 255
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/100ANDRO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, "nnnAAAAA":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    const-string v1, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create NNNAAAAA file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    return-void
.end method

.method public static getBucketId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 275
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEmptyImageListParam()Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;
    .locals 2

    .prologue
    .line 279
    new-instance v0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;-><init>()V

    .line 280
    .local v0, "param":Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->mIsEmptyImageList:Z

    .line 281
    return-object v0
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .locals 8
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "degree":I
    const/4 v2, 0x0

    .line 288
    .local v2, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "exif":Landroid/media/ExifInterface;
    .local v3, "exif":Landroid/media/ExifInterface;
    move-object v2, v3

    .line 292
    .end local v3    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    :goto_0
    if-eqz v2, :cond_0

    .line 293
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 294
    .local v4, "orientation":I
    if-eq v4, v7, :cond_0

    .line 296
    packed-switch v4, :pswitch_data_0

    .line 310
    .end local v4    # "orientation":I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 289
    :catch_0
    move-exception v1

    .line 290
    .local v1, "ex":Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 298
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v4    # "orientation":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 299
    goto :goto_1

    .line 301
    :pswitch_2
    const/16 v0, 0xb4

    .line 302
    goto :goto_1

    .line 304
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getImageListParam(Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;IILjava/lang/String;)Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;
    .locals 1
    .param p0, "location"    # Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;
    .param p1, "inclusion"    # I
    .param p2, "sort"    # I
    .param p3, "bucketId"    # Ljava/lang/String;

    .prologue
    .line 314
    new-instance v0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;-><init>()V

    .line 315
    .local v0, "param":Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;
    iput-object p0, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->mLocation:Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;

    .line 316
    iput p1, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->mInclusion:I

    .line 317
    iput p2, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->mSort:I

    .line 318
    iput-object p3, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    .line 319
    return-object v0
.end method

.method public static getSingleImageListParam(Landroid/net/Uri;)Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 323
    new-instance v0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;-><init>()V

    .line 324
    .local v0, "param":Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;
    iput-object p0, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->mSingleImageUri:Landroid/net/Uri;

    .line 325
    return-object v0
.end method

.method public static hasStorage()Z
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->hasStorage(Z)Z

    move-result v0

    return v0
.end method

.method public static hasStorage(Z)Z
    .locals 3
    .param p0, "requireWriteAccess"    # Z

    .prologue
    const/4 v1, 0x1

    .line 333
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 336
    if-eqz p0, :cond_0

    .line 337
    invoke-static {}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->checkFsWritable()Z

    move-result v1

    .line 345
    :cond_0
    :goto_0
    return v1

    .line 342
    :cond_1
    if-nez p0, :cond_2

    const-string/jumbo v2, "mounted_ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 345
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isImage(Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;)Z
    .locals 1
    .param p0, "image"    # Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    .prologue
    .line 352
    invoke-interface {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->isImageMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isImageMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 359
    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMediaScannerScanning(Landroid/content/ContentResolver;)Z
    .locals 10
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 363
    const/4 v7, 0x0

    .line 364
    .local v7, "result":Z
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v0, "volume"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 365
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 366
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 367
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 368
    const-string v0, "external"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 370
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 373
    :cond_1
    return v7
.end method

.method static isSingleImageMode(Ljava/lang/String;)Z
    .locals 1
    .param p0, "uriString"    # Ljava/lang/String;

    .prologue
    .line 514
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideo(Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;)Z
    .locals 1
    .param p0, "image"    # Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method public static makeEmptyImageList()Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    .locals 2

    .prologue
    .line 386
    const/4 v0, 0x0

    invoke-static {}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->getEmptyImageListParam()Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;)Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    move-result-object v0

    return-object v0
.end method

.method public static makeImageList(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    .locals 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sort"    # I

    .prologue
    const/4 v4, 0x0

    .line 452
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 458
    .local v1, "uriString":Ljava/lang/String;
    :goto_0
    const-string v2, "content://drm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 459
    sget-object v2, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;->ALL:Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;

    const/4 v3, 0x2

    invoke-static {p0, v2, v3, p2, v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;IILjava/lang/String;)Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    move-result-object v2

    .line 466
    :goto_1
    return-object v2

    .line 452
    .end local v1    # "uriString":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 460
    .restart local v1    # "uriString":Ljava/lang/String;
    :cond_1
    const-string v2, "content://media/external/video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 461
    sget-object v2, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;->EXTERNAL:Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;

    const/4 v3, 0x4

    invoke-static {p0, v2, v3, p2, v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;IILjava/lang/String;)Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    move-result-object v2

    goto :goto_1

    .line 462
    :cond_2
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->isSingleImageMode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 463
    invoke-static {p0, p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->makeSingleImageList(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    move-result-object v2

    goto :goto_1

    .line 465
    :cond_3
    const-string v2, "bucketId"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "bucketId":Ljava/lang/String;
    sget-object v2, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;->ALL:Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;

    const/4 v3, 0x1

    invoke-static {p0, v2, v3, p2, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;IILjava/lang/String;)Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    move-result-object v2

    goto :goto_1
.end method

.method public static makeImageList(Landroid/content/ContentResolver;Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;IILjava/lang/String;)Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "location"    # Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;
    .param p2, "inclusion"    # I
    .param p3, "sort"    # I
    .param p4, "bucketId"    # Ljava/lang/String;

    .prologue
    .line 390
    invoke-static {p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->getImageListParam(Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;IILjava/lang/String;)Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;

    move-result-object v0

    .line 391
    .local v0, "param":Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;
    invoke-static {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;)Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    move-result-object v1

    return-object v1
.end method

.method public static makeImageList(Landroid/content/ContentResolver;Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;)Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    .locals 14
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "param"    # Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;

    .prologue
    .line 396
    iget-object v7, p1, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->mLocation:Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;

    .line 397
    .local v7, "location":Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;
    iget v2, p1, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->mInclusion:I

    .line 398
    .local v2, "inclusion":I
    iget v9, p1, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->mSort:I

    .line 399
    .local v9, "sort":I
    iget-object v0, p1, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    .line 400
    .local v0, "bucketId":Ljava/lang/String;
    iget-object v8, p1, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->mSingleImageUri:Landroid/net/Uri;

    .line 401
    .local v8, "singleImageUri":Landroid/net/Uri;
    iget-boolean v3, p1, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;->mIsEmptyImageList:Z

    .line 403
    .local v3, "isEmptyImageList":Z
    if-nez v3, :cond_0

    if-nez p0, :cond_1

    .line 404
    :cond_0
    new-instance v6, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$EmptyImageList;

    const/4 v12, 0x0

    invoke-direct {v6, v12}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$EmptyImageList;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$1;)V

    .line 447
    :goto_0
    return-object v6

    .line 407
    :cond_1
    if-eqz v8, :cond_2

    .line 408
    new-instance v6, Lcom/lenovo/scg/gallery3d/boxcontrol/SingleImageList;

    invoke-direct {v6, p0, v8}, Lcom/lenovo/scg/gallery3d/boxcontrol/SingleImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 412
    :cond_2
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->hasStorage(Z)Z

    move-result v1

    .line 415
    .local v1, "haveSdCard":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v5, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;>;"
    if-eqz v1, :cond_3

    sget-object v12, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;->INTERNAL:Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;

    if-eq v7, v12, :cond_3

    .line 418
    and-int/lit8 v12, v2, 0x1

    if-eqz v12, :cond_3

    .line 419
    new-instance v12, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageList;

    sget-object v13, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    invoke-direct {v12, p0, v13, v9, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 433
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;>;"
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 434
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;

    .line 435
    .local v10, "sublist":Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;
    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 436
    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->close()V

    .line 437
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 441
    .end local v10    # "sublist":Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    .line 442
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;

    .line 443
    .local v6, "list":Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;
    goto :goto_0

    .line 446
    .end local v6    # "list":Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;
    :cond_6
    new-instance v11, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    invoke-direct {v11, v12, v9}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;-><init>([Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;I)V

    .local v11, "uber":Lcom/lenovo/scg/gallery3d/boxcontrol/ImageListUber;
    move-object v6, v11

    .line 447
    goto :goto_0
.end method

.method public static makeSingleImageList(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 471
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->getSingleImageListParam(Landroid/net/Uri;)Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$ImageListParam;)Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    move-result-object v0

    return-object v0
.end method

.method private static query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 503
    if-nez p0, :cond_0

    .line 508
    :goto_0
    return-object v1

    .line 506
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, "ex":Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method
