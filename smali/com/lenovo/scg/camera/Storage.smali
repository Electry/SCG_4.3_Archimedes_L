.class public Lcom/lenovo/scg/camera/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# static fields
.field public static final BUCKET_ID:Ljava/lang/String;

.field public static final DCIM:Ljava/lang/String;

.field public static final DIRECTORY:Ljava/lang/String;

.field public static EXT_BUCKET_ID:Ljava/lang/String; = null

.field private static EXT_DCIM:Ljava/lang/String; = null

.field public static EXT_DIRECTORY:Ljava/lang/String; = null

.field public static EXT_ROOT:Ljava/lang/String; = null

.field public static final EXT_SD:Ljava/lang/String; = "exsd"

.field public static final LOW_STORAGE_THRESHOLD:J = 0x12c00000L

.field public static final PREPARING:J = -0x2L

.field public static final ROOT:Ljava/lang/String;

.field public static final SD:Ljava/lang/String; = "sd"

.field private static final TAG:Ljava/lang/String; = "CameraStorage"

.field public static final UNAVAILABLE:J = -0x1L

.field public static final UNKNOWN_SIZE:J = -0x3L

.field private static mCurrentDirectory:Ljava/lang/String;

.field public static mSwap:Z

.field private static sContinuousPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/camera/Storage;->DCIM:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lenovo/scg/camera/Storage;->DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/camera/Storage;->DIRECTORY:Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/lenovo/scg/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/camera/Storage;->BUCKET_ID:Ljava/lang/String;

    .line 216
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/camera/Storage;->ROOT:Ljava/lang/String;

    .line 230
    sget-object v0, Lcom/lenovo/scg/camera/Storage;->DIRECTORY:Ljava/lang/String;

    sput-object v0, Lcom/lenovo/scg/camera/Storage;->mCurrentDirectory:Ljava/lang/String;

    .line 232
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/camera/Storage;->mSwap:Z

    .line 234
    const-string v0, ""

    sput-object v0, Lcom/lenovo/scg/camera/Storage;->sContinuousPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;III)Landroid/net/Uri;
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "orientation"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 405
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    .local v0, "file":Ljava/io/File;
    new-instance v3, Landroid/content/ContentValues;

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 408
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "title"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v4, "_display_name"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v4, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 411
    const-string/jumbo v4, "mime_type"

    const-string v5, "image/jpeg"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string/jumbo v4, "orientation"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 414
    const-string v4, "_data"

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v4, "_size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 416
    const-string/jumbo v4, "width"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 417
    const-string v4, "height"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 419
    if-eqz p4, :cond_0

    .line 420
    const-string v4, "latitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 421
    const-string v4, "longitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 424
    :cond_0
    const/4 v2, 0x0

    .line 426
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 435
    :goto_0
    return-object v2

    .line 427
    :catch_0
    move-exception v1

    .line 433
    .local v1, "th":Ljava/lang/Throwable;
    const-string v4, "CameraStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to write MediaStore"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IILjava/lang/String;II)Landroid/net/Uri;
    .locals 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "orientation"    # I
    .param p6, "jpegLength"    # I
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "width"    # I
    .param p9, "height"    # I

    .prologue
    .line 120
    new-instance v4, Landroid/content/ContentValues;

    const/16 v5, 0x9

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 121
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "title"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v5, "_display_name"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v5, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 124
    const-string/jumbo v5, "mime_type"

    const-string v6, "image/jpeg"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string/jumbo v5, "orientation"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    const-string v5, "_data"

    move-object/from16 v0, p7

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v5, "_size"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    move/from16 v0, p8

    move/from16 v1, p9

    invoke-static {v4, v0, v1}, Lcom/lenovo/scg/camera/Storage;->setImageSize(Landroid/content/ContentValues;II)V

    .line 132
    if-eqz p4, :cond_0

    .line 133
    const-string v5, "latitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 134
    const-string v5, "longitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 137
    :cond_0
    const/4 v3, 0x0

    .line 139
    .local v3, "uri":Landroid/net/Uri;
    :try_start_0
    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 140
    const-string v5, "insert to ContentResolver end"

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-object v3

    .line 141
    :catch_0
    move-exception v2

    .line 142
    .local v2, "th":Ljava/lang/Throwable;
    const-string v5, "insert error: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    const-string v5, "CameraStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write MediaStore"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/lenovo/scg/gallery3d/exif/ExifInterface;[BII)Landroid/net/Uri;
    .locals 14
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "orientation"    # I
    .param p6, "exif"    # Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    .param p7, "jpeg"    # [B
    .param p8, "width"    # I
    .param p9, "height"    # I

    .prologue
    .line 101
    invoke-static {p1}, Lcom/lenovo/scg/camera/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 102
    .local v9, "path":Ljava/lang/String;
    if-eqz p6, :cond_0

    .line 104
    :try_start_0
    const-string/jumbo v2, "will writeExif"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 105
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-virtual {v0, v1, v9}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->writeExif([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    move-object/from16 v0, p7

    array-length v8, v0

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v2 .. v11}, Lcom/lenovo/scg/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IILjava/lang/String;II)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 106
    :catch_0
    move-exception v12

    .line 107
    .local v12, "e":Ljava/lang/Exception;
    const-string v2, "CameraStorage"

    const-string v3, "Failed to write data"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 110
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v2, "will writeFile"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 111
    move-object/from16 v0, p7

    invoke-static {v9, v0}, Lcom/lenovo/scg/camera/Storage;->writeFile(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public static deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 155
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "th":Ljava/lang/Throwable;
    const-string v1, "CameraStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static ensureOSXCompatible()V
    .locals 4

    .prologue
    .line 209
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/lenovo/scg/camera/Storage;->DCIM:Ljava/lang/String;

    const-string v2, "100ANDRO"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .local v0, "nnnAAAAA":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    const-string v1, "CameraStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    return-void
.end method

.method public static generateFilepath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 165
    sget-object v0, Lcom/lenovo/scg/camera/Storage;->sContinuousPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lenovo/scg/camera/Storage;->mCurrentDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lenovo/scg/camera/Storage;->mCurrentDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/Storage;->sContinuousPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lenovo/scg/camera/Storage;->mCurrentDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableSpace(Landroid/content/Context;)J
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, -0x1

    .line 180
    invoke-static {}, Lcom/lenovo/scg/camera/Storage;->getRoot()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/lenovo/scg/camera/Storage;->getStorageState(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "state":Ljava/lang/String;
    const-string v6, "CameraStorage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "External storage state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v6, "checking"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 183
    const-wide/16 v4, -0x2

    .line 201
    :cond_0
    :goto_0
    return-wide v4

    .line 185
    :cond_1
    const-string/jumbo v6, "mounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 189
    new-instance v0, Ljava/io/File;

    sget-object v6, Lcom/lenovo/scg/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 191
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 196
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    sget-object v4, Lcom/lenovo/scg/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 197
    .local v2, "stat":Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    goto :goto_0

    .line 198
    .end local v2    # "stat":Landroid/os/StatFs;
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "CameraStorage"

    const-string v5, "Fail to access external storage"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    const-wide/16 v4, -0x3

    goto :goto_0
.end method

.method public static getBUCKETID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    sget-object v0, Lcom/lenovo/scg/camera/Storage;->mCurrentDirectory:Ljava/lang/String;

    sget-object v1, Lcom/lenovo/scg/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    sget-object v0, Lcom/lenovo/scg/camera/Storage;->BUCKET_ID:Ljava/lang/String;

    .line 308
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/lenovo/scg/camera/Storage;->EXT_BUCKET_ID:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getContinuosPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 447
    sget-object v0, Lcom/lenovo/scg/camera/Storage;->sContinuousPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentBucketId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lcom/lenovo/scg/camera/Storage;->mCurrentDirectory:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/lenovo/scg/camera/Storage;->mCurrentDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public static getRoot()Ljava/lang/String;
    .locals 3

    .prologue
    .line 242
    sget-object v1, Lcom/lenovo/scg/camera/Storage;->mCurrentDirectory:Ljava/lang/String;

    sget-object v2, Lcom/lenovo/scg/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    sget-object v0, Lcom/lenovo/scg/camera/Storage;->ROOT:Ljava/lang/String;

    .line 247
    .local v0, "root":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 245
    .end local v0    # "root":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/lenovo/scg/camera/Storage;->EXT_ROOT:Ljava/lang/String;

    .restart local v0    # "root":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getStorageState(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 373
    const-string v4, "CameraStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getStorageState path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    if-nez p0, :cond_0

    .line 375
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 386
    :goto_0
    return-object v3

    .line 378
    :cond_0
    :try_start_0
    const-string/jumbo v4, "storage"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 379
    .local v2, "sm":Landroid/os/storage/StorageManager;
    const-class v4, Landroid/os/storage/StorageManager;

    const-string v5, "getVolumeState"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 380
    .local v1, "getVolumeStateMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    .local v3, "state":Ljava/lang/String;
    goto :goto_0

    .line 382
    .end local v1    # "getVolumeStateMethod":Ljava/lang/reflect/Method;
    .end local v2    # "sm":Landroid/os/storage/StorageManager;
    .end local v3    # "state":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "CameraStorage"

    const-string v5, "getStorageState() failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 386
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static initStorageDirectory(Landroid/content/Context;)I
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    .line 313
    const-string/jumbo v9, "storage"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 314
    .local v5, "mStorageManager":Landroid/os/storage/StorageManager;
    const/4 v8, 0x0

    .line 316
    .local v8, "volumePaths":[Ljava/lang/String;
    :try_start_0
    const-class v9, Landroid/os/storage/StorageManager;

    const-string v11, "getVolumePaths"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v9, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 317
    .local v6, "method":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    move-object v0, v9

    check-cast v0, [Ljava/lang/String;

    move-object v8, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 327
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :goto_0
    if-eqz v8, :cond_7

    array-length v9, v8

    if-le v9, v10, :cond_7

    .line 328
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v9, v8

    if-ge v4, v9, :cond_6

    .line 329
    aget-object v7, v8, v4

    .line 330
    .local v7, "path":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 328
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 318
    .end local v4    # "i":I
    .end local v7    # "path":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 319
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 320
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 321
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 322
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 323
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 324
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 325
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 332
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v4    # "i":I
    .restart local v7    # "path":Ljava/lang/String;
    :cond_1
    if-ne v4, v10, :cond_0

    .line 333
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v9, v10

    .line 369
    .end local v4    # "i":I
    .end local v7    # "path":Ljava/lang/String;
    :goto_3
    return v9

    .line 336
    .restart local v4    # "i":I
    .restart local v7    # "path":Ljava/lang/String;
    :cond_2
    const-string/jumbo v9, "usbotg"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 337
    const-string v9, "CameraStorage"

    const-string/jumbo v11, "skip usbotg!"

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 338
    goto :goto_3

    .line 340
    :cond_3
    sput-object v7, Lcom/lenovo/scg/camera/Storage;->EXT_ROOT:Ljava/lang/String;

    .line 342
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/lenovo/scg/camera/Storage;->EXT_DCIM:Ljava/lang/String;

    .line 345
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/lenovo/scg/camera/Storage;->EXT_DCIM:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "/Camera"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/lenovo/scg/camera/Storage;->EXT_DIRECTORY:Ljava/lang/String;

    .line 348
    sget-object v9, Lcom/lenovo/scg/camera/Storage;->EXT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/lenovo/scg/camera/Storage;->EXT_BUCKET_ID:Ljava/lang/String;

    .line 352
    const-string v1, "/mnt/sdcard"

    .line 355
    .local v1, "def":Ljava/lang/String;
    const-string/jumbo v9, "persist.sys.emmc"

    invoke-static {v9, v1}, Lcom/lenovo/scg/gallery3d/util/SysProp;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, "emmc":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    sget-object v9, Lcom/lenovo/scg/camera/Storage;->ROOT:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 361
    :cond_4
    :goto_4
    const-string v9, "CameraStorage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "emmc="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string v9, "CameraStorage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Environment.getExternalStorageDirectory().getAbsolutePath()="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string v9, "CameraStorage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ROOT="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/lenovo/scg/camera/Storage;->ROOT:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string v9, "CameraStorage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EXT_ROOT="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/lenovo/scg/camera/Storage;->EXT_ROOT:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 359
    :cond_5
    sput-boolean v10, Lcom/lenovo/scg/camera/Storage;->mSwap:Z

    goto :goto_4

    .line 367
    .end local v1    # "def":Ljava/lang/String;
    .end local v3    # "emmc":Ljava/lang/String;
    .end local v7    # "path":Ljava/lang/String;
    :cond_6
    array-length v9, v8

    goto/16 :goto_3

    .end local v4    # "i":I
    :cond_7
    move v9, v10

    .line 369
    goto/16 :goto_3
.end method

.method public static onStoragePreferenceChanged(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/app/AppBridge;Landroid/content/Context;)Z
    .locals 6
    .param p0, "bucket"    # Ljava/lang/String;
    .param p1, "appBridge"    # Lcom/lenovo/scg/gallery3d/app/AppBridge;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    const-string v3, "CameraStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onStoragePreferenceChanged(bucket:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v2, 0x0

    .line 259
    .local v2, "hasChangeSDCard":Z
    const-string/jumbo v3, "sd"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 260
    sget-object v3, Lcom/lenovo/scg/camera/Storage;->mCurrentDirectory:Ljava/lang/String;

    sget-object v4, Lcom/lenovo/scg/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 261
    sget-boolean v3, Lcom/lenovo/scg/camera/Storage;->mSwap:Z

    if-eqz v3, :cond_2

    .line 292
    :cond_0
    :goto_0
    invoke-static {p2}, Lcom/lenovo/scg/camera/Storage;->getAvailableSpace(Landroid/content/Context;)J

    move-result-wide v0

    .line 293
    .local v0, "available":J
    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-eqz v3, :cond_1

    .line 294
    if-eqz v2, :cond_1

    .line 295
    if-eqz p1, :cond_1

    .line 297
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/lenovo/scg/camera/ActivityBase;->listContinuousShooting(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/lenovo/scg/gallery3d/app/AppBridge;->setCameraSourcePath(Ljava/lang/String;)V

    .line 301
    :cond_1
    return v2

    .line 264
    .end local v0    # "available":J
    :cond_2
    const/4 v2, 0x1

    .line 265
    sget-object v3, Lcom/lenovo/scg/camera/Storage;->DIRECTORY:Ljava/lang/String;

    sput-object v3, Lcom/lenovo/scg/camera/Storage;->mCurrentDirectory:Ljava/lang/String;

    goto :goto_0

    .line 268
    :cond_3
    sget-boolean v3, Lcom/lenovo/scg/camera/Storage;->mSwap:Z

    if-eqz v3, :cond_0

    .line 269
    const/4 v2, 0x1

    .line 270
    sget-object v3, Lcom/lenovo/scg/camera/Storage;->EXT_DIRECTORY:Ljava/lang/String;

    sput-object v3, Lcom/lenovo/scg/camera/Storage;->mCurrentDirectory:Ljava/lang/String;

    goto :goto_0

    .line 275
    :cond_4
    const-string v3, "exsd"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 276
    sget-object v3, Lcom/lenovo/scg/camera/Storage;->mCurrentDirectory:Ljava/lang/String;

    sget-object v4, Lcom/lenovo/scg/camera/Storage;->EXT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 277
    sget-boolean v3, Lcom/lenovo/scg/camera/Storage;->mSwap:Z

    if-nez v3, :cond_0

    .line 280
    const/4 v2, 0x1

    .line 281
    sget-object v3, Lcom/lenovo/scg/camera/Storage;->EXT_DIRECTORY:Ljava/lang/String;

    sput-object v3, Lcom/lenovo/scg/camera/Storage;->mCurrentDirectory:Ljava/lang/String;

    goto :goto_0

    .line 284
    :cond_5
    sget-boolean v3, Lcom/lenovo/scg/camera/Storage;->mSwap:Z

    if-eqz v3, :cond_0

    .line 285
    const/4 v2, 0x1

    .line 286
    sget-object v3, Lcom/lenovo/scg/camera/Storage;->DIRECTORY:Ljava/lang/String;

    sput-object v3, Lcom/lenovo/scg/camera/Storage;->mCurrentDirectory:Ljava/lang/String;

    goto :goto_0
.end method

.method public static resetContinuosPath()V
    .locals 1

    .prologue
    .line 443
    const-string v0, ""

    sput-object v0, Lcom/lenovo/scg/camera/Storage;->sContinuousPath:Ljava/lang/String;

    .line 444
    return-void
.end method

.method public static setContinuosPath(Ljava/lang/String;)V
    .locals 0
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 439
    sput-object p0, Lcom/lenovo/scg/camera/Storage;->sContinuousPath:Ljava/lang/String;

    .line 440
    return-void
.end method

.method private static setImageSize(Landroid/content/ContentValues;II)V
    .locals 2
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 77
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

    if-eqz v0, :cond_0

    .line 78
    const-string/jumbo v0, "width"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    const-string v0, "height"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    :cond_0
    return-void
.end method

.method public static writeFile(Ljava/lang/String;[B)V
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 86
    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 95
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 93
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 94
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 88
    :catch_1
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v3, "CameraStorage"

    const-string v4, "Failed to write data"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 93
    :catch_2
    move-exception v3

    goto :goto_0

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 92
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 93
    :goto_3
    throw v3

    :catch_3
    move-exception v4

    goto :goto_3

    .line 91
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 88
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
