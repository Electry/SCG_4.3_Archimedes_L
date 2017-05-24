.class public abstract Lcom/lenovo/scg/gallery3d/filtershow/crop/CropLoader;
.super Ljava/lang/Object;
.source "CropLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/filtershow/crop/CropLoader$ContentResolverQueryCallback;
    }
.end annotation


# static fields
.field public static final DEFAULT_SAVE_DIRECTORY:Ljava/lang/String; = "EditedOnlinePhotos"

.field public static final JPEG_MIME_TYPE:Ljava/lang/String; = "image/jpeg"

.field public static final LOGTAG:Ljava/lang/String; = "CropLoader"

.field private static final TIME_STAMP_NAME:Ljava/lang/String; = "\'IMG\'_yyyyMMdd_HHmmss"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    return-void
.end method

.method public static getBitmap(Landroid/net/Uri;Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sampleSize"    # I

    .prologue
    const/4 v5, 0x0

    .line 241
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 242
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "bad argument to getScaledBitmap"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 244
    :cond_1
    const/4 v1, 0x0

    .line 246
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropLoader;->isNewGooglePhotosUri(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 247
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 248
    .local v4, "pathUri":Ljava/lang/String;
    const-string v6, "content"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const-string v7, "/ACTUAL"

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "newUri":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 251
    .end local v2    # "newUri":Ljava/lang/String;
    .end local v4    # "pathUri":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 252
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 253
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 254
    iput p2, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 255
    const/4 v6, 0x0

    invoke-static {v1, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 261
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 263
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v5

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v6, "CropLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileNotFoundException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 258
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_2
    const-string v6, "CropLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SecurityException for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v5

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v5
.end method

.method public static getConstrainedBitmap(Landroid/net/Uri;Landroid/content/Context;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxSideLength"    # I
    .param p3, "originalBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 176
    if-lez p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 177
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "bad argument to getScaledBitmap"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 179
    :cond_1
    const/4 v3, 0x0

    .line 181
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropLoader;->isNewGooglePhotosUri(Landroid/net/Uri;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 182
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 183
    .local v6, "pathUri":Ljava/lang/String;
    const-string v9, "content"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const-string v10, "/ACTUAL"

    invoke-virtual {v6, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, "newUri":Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 187
    .end local v4    # "newUri":Ljava/lang/String;
    .end local v6    # "pathUri":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 188
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 189
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 190
    const/4 v9, 0x0

    invoke-static {v3, v9, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 191
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 192
    .local v8, "w":I
    iget v1, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 193
    .local v1, "h":I
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p3, v9, v10, v8, v1}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    if-lez v8, :cond_3

    if-gtz v1, :cond_4

    .line 197
    :cond_3
    const/4 v9, 0x0

    .line 227
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 229
    .end local v1    # "h":I
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "w":I
    :goto_0
    return-object v9

    .line 200
    .restart local v1    # "h":I
    .restart local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v8    # "w":I
    :cond_4
    :try_start_1
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 203
    .restart local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 204
    .local v2, "imageSide":I
    const/4 v9, 0x1

    iput v9, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 205
    if-le v2, p2, :cond_5

    .line 206
    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v10

    sub-int v7, v9, v10

    .line 207
    .local v7, "shifts":I
    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    shl-int/2addr v9, v7

    iput v9, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 211
    .end local v7    # "shifts":I
    :cond_5
    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-lez v9, :cond_6

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget v10, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v9, v10
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v9, :cond_7

    .line 212
    :cond_6
    const/4 v9, 0x0

    .line 227
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 216
    :cond_7
    const/4 v9, 0x1

    :try_start_2
    iput-boolean v9, v5, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 217
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 219
    const/4 v9, 0x0

    invoke-static {v3, v9, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 227
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 220
    .end local v1    # "h":I
    .end local v2    # "imageSide":I
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "w":I
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v9, "CropLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FileNotFoundException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 229
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    const/4 v9, 0x0

    goto :goto_0

    .line 222
    :catch_1
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_4
    const-string v9, "CropLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SecurityException for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 227
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 224
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 225
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    const-string v9, "CropLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 227
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v9
.end method

.method public static getFinalSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;

    .prologue
    .line 269
    invoke-static {p0, p1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropLoader;->getSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 270
    .local v0, "saveDirectory":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_1

    .line 271
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "saveDirectory":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "EditedOnlinePhotos"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 274
    .restart local v0    # "saveDirectory":Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 275
    :cond_2
    return-object v0
.end method

.method public static getMetadataRotation(Landroid/net/Uri;Landroid/content/Context;)I
    .locals 15
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad argument to getScaledBitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    const/4 v12, 0x0

    .line 82
    .local v12, "orientation":I
    const-string v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 84
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropLoader;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 85
    .local v9, "mimeType":Ljava/lang/String;
    const-string v0, "image/jpeg"

    if-eq v9, v0, :cond_3

    .line 88
    :try_start_0
    new-instance v8, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    invoke-direct {v8}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;-><init>()V

    .line 89
    .local v8, "exif":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    if-eqz p0, :cond_2

    .line 90
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    .line 92
    :cond_2
    sget v0, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v8, v0}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->getRotationForOrientationValue(S)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 93
    sparse-switch v12, :sswitch_data_0

    .line 101
    const/4 v11, 0x0

    .line 146
    .end local v8    # "exif":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    .end local v9    # "mimeType":Ljava/lang/String;
    :goto_0
    return v11

    .line 95
    .restart local v8    # "exif":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    .restart local v9    # "mimeType":Ljava/lang/String;
    :sswitch_0
    const/16 v11, 0x5a

    goto :goto_0

    .line 97
    :sswitch_1
    const/16 v11, 0x10e

    goto :goto_0

    .line 99
    :sswitch_2
    const/16 v11, 0xb4

    goto :goto_0

    .line 103
    .end local v8    # "exif":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    :catch_0
    move-exception v7

    .line 104
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "CropLoader"

    const-string v1, "Failed to read EXIF orientation"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v11, v12

    .line 107
    goto :goto_0

    .line 109
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 110
    .local v13, "path":Ljava/lang/String;
    new-instance v8, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    invoke-direct {v8}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;-><init>()V

    .line 112
    .restart local v8    # "exif":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    :try_start_1
    invoke-virtual {v8, v13}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    .line 114
    sget v0, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v8, v0}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 115
    sget v0, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v8, v0}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->getRotationForOrientationValue(S)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v12

    :cond_4
    :goto_1
    move v11, v12

    .line 121
    goto :goto_0

    .line 118
    :catch_1
    move-exception v7

    .line 119
    .local v7, "e":Ljava/io/IOException;
    const-string v0, "CropLoader"

    const-string v1, "Failed to read EXIF orientation"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 123
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "exif":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    .end local v9    # "mimeType":Ljava/lang/String;
    .end local v13    # "path":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    .line 125
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_2
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropLoader;->isNewGooglePhotosUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 126
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v14

    .line 127
    .local v14, "pathUri":Ljava/lang/String;
    const-string v0, "content"

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "/ACTUAL"

    invoke-virtual {v14, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 128
    .local v10, "newUri":Ljava/lang/String;
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 130
    .end local v10    # "newUri":Ljava/lang/String;
    .end local v14    # "pathUri":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "orientation"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 132
    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 133
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v11

    .line 134
    .local v11, "ori":I
    if-gez v11, :cond_7

    const/4 v11, 0x0

    .line 144
    .end local v11    # "ori":I
    :cond_7
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 146
    :goto_2
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 137
    :catch_2
    move-exception v7

    .line 138
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    const/4 v11, 0x0

    .line 144
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 139
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_3
    move-exception v7

    .line 140
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const/4 v11, 0x0

    .line 144
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 141
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 144
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    .line 93
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public static getMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p0, "src"    # Landroid/net/Uri;

    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "postfix":Ljava/lang/String;
    const/4 v1, 0x0

    .line 157
    .local v1, "ret":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    :cond_0
    return-object v1
.end method

.method public static getNewFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-static {p0, p1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropLoader;->getFinalSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 284
    .local v0, "saveDirectory":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".JPG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getNewFileName(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 279
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/sql/Date;

    invoke-direct {v1, p0, p1}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 310
    new-array v0, v1, [Ljava/io/File;

    .line 311
    .local v0, "dir":[Ljava/io/File;
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_data"

    aput-object v2, v1, v3

    new-instance v2, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropLoader$1;

    invoke-direct {v2, v0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropLoader$1;-><init>([Ljava/io/File;)V

    invoke-static {p0, p1, v1, v2}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropLoader;->querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/lenovo/scg/gallery3d/filtershow/crop/CropLoader$ContentResolverQueryCallback;)V

    .line 318
    aget-object v1, v0, v3

    return-object v1
.end method

.method public static insertContent(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;J)Landroid/net/Uri;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "saveFileName"    # Ljava/lang/String;
    .param p4, "time"    # J

    .prologue
    const/4 v6, 0x0

    .line 322
    const-wide/16 v2, 0x3e8

    div-long/2addr p4, v2

    .line 324
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 325
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v2, "_display_name"

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string/jumbo v2, "mime_type"

    const-string v3, "image/jpeg"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v2, "datetaken"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 329
    const-string v2, "date_modified"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 330
    const-string v2, "date_added"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 331
    const-string/jumbo v2, "orientation"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    const-string v2, "_data"

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v2, "_size"

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 335
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "datetaken"

    aput-object v2, v0, v6

    const/4 v2, 0x1

    const-string v3, "latitude"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "longitude"

    aput-object v3, v0, v2

    .line 336
    .local v0, "projection":[Ljava/lang/String;
    new-instance v2, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropLoader$2;

    invoke-direct {v2, v1}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropLoader$2;-><init>(Landroid/content/ContentValues;)V

    invoke-static {p0, p1, v0, v2}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropLoader;->querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/lenovo/scg/gallery3d/filtershow/crop/CropLoader$ContentResolverQueryCallback;)V

    .line 353
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public static isNewGooglePhotosUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 66
    const-string v0, "com.google.android.apps.photos.contentprovider"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSourceFileExist(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;

    .prologue
    .line 371
    const/4 v10, 0x0

    .line 372
    .local v10, "flag":Z
    const/4 v6, 0x0

    .line 374
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 375
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 376
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 378
    .local v7, "data":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    .line 379
    :cond_0
    const/4 v10, 0x0

    .line 388
    .end local v7    # "data":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    .line 389
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 392
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    :cond_2
    :goto_1
    return v10

    .line 381
    .restart local v0    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v7    # "data":Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    goto :goto_0

    .line 385
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v7    # "data":Ljava/lang/String;
    .end local v9    # "file":Ljava/io/File;
    :catch_0
    move-exception v8

    .line 386
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "CropLoader"

    const-string v2, "isSourceFileExist exception "

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 388
    if-eqz v6, :cond_2

    .line 389
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 388
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 389
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static makeAndInsertUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;

    .prologue
    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 358
    .local v4, "time":J
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropLoader;->getNewFileName(J)Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, "filename":Ljava/lang/String;
    invoke-static {p0, p1, v3}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropLoader;->getNewFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .local v2, "file":Ljava/io/File;
    move-object v0, p0

    move-object v1, p1

    .line 360
    invoke-static/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropLoader;->insertContent(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/lenovo/scg/gallery3d/filtershow/crop/CropLoader$ContentResolverQueryCallback;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "callback"    # Lcom/lenovo/scg/gallery3d/filtershow/crop/CropLoader$ContentResolverQueryCallback;

    .prologue
    .line 293
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 294
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 296
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 297
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    invoke-interface {p3, v6}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropLoader$ContentResolverQueryCallback;->onCursorResult(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :cond_0
    if-eqz v6, :cond_1

    .line 304
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 307
    :cond_1
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v1

    .line 303
    if-eqz v6, :cond_1

    .line 304
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 304
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method
