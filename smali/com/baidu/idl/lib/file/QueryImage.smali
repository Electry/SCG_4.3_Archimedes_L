.class public Lcom/baidu/idl/lib/file/QueryImage;
.super Ljava/lang/Object;
.source "QueryImage.java"


# static fields
.field private static final ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String;

.field static final IMAGE_PROJECTION:[Ljava/lang/String;

.field private static final INDEX_ORIENTATION:I = 0x3

.field private static final WHERE_CLAUSE:Ljava/lang/String; = "(mime_type in (?, ?, ?))"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-array v0, v5, [Ljava/lang/String;

    .line 23
    const-string v1, "image/jpeg"

    aput-object v1, v0, v2

    const-string v1, "image/png"

    aput-object v1, v0, v3

    const-string v1, "image/gif"

    aput-object v1, v0, v4

    .line 22
    sput-object v0, Lcom/baidu/idl/lib/file/QueryImage;->ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String;

    .line 89
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    .line 90
    const-string v1, "datetaken"

    aput-object v1, v0, v3

    const-string v1, "date_added"

    aput-object v1, v0, v4

    const-string/jumbo v1, "orientation"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    .line 89
    sput-object v0, Lcom/baidu/idl/lib/file/QueryImage;->IMAGE_PROJECTION:[Ljava/lang/String;

    .line 95
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static createCursor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 13
    .param p0, "mContentResolver"    # Landroid/content/ContentResolver;
    .param p1, "mBaseUri"    # Landroid/net/Uri;

    .prologue
    .line 58
    const/4 v11, 0x0

    .line 60
    .local v11, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, ""

    aput-object v1, v4, v0

    .line 62
    .local v4, "args":[Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 63
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 64
    sget-object v2, Lcom/baidu/idl/lib/file/QueryImage;->IMAGE_PROJECTION:[Ljava/lang/String;

    const-string v3, "(_data=?)"

    .line 65
    invoke-static {}, Lcom/baidu/idl/lib/file/QueryImage;->sortOrder()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 63
    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .end local v4    # "args":[Ljava/lang/String;
    :goto_0
    move-object v0, v11

    .line 73
    :goto_1
    return-object v0

    .line 67
    :cond_0
    sget-object v7, Lcom/baidu/idl/lib/file/QueryImage;->IMAGE_PROJECTION:[Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/baidu/idl/lib/file/QueryImage;->whereClause()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/baidu/idl/lib/file/QueryImage;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/baidu/idl/lib/file/QueryImage;->sortOrder()Ljava/lang/String;

    move-result-object v10

    move-object v5, p0

    move-object v6, p1

    .line 67
    invoke-static/range {v5 .. v10}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    goto :goto_0

    .line 70
    :catch_0
    move-exception v12

    .line 71
    .local v12, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected static createCursorForCamera(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 8
    .param p0, "mContentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 78
    const/4 v6, 0x0

    .line 80
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 81
    sget-object v2, Lcom/baidu/idl/lib/file/QueryImage;->IMAGE_PROJECTION:[Ljava/lang/String;

    invoke-static {}, Lcom/baidu/idl/lib/file/QueryImage;->whereClause()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/baidu/idl/lib/file/QueryImage;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    .line 82
    const-string v5, "date_added DESC"

    move-object v0, p0

    .line 80
    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v0, v6

    .line 86
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v7

    .line 84
    .local v7, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getImageRotationAngleFromMedia(Landroid/content/Context;Landroid/net/Uri;Z)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "fromCamera"    # Z

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 102
    .local v2, "mContentResolver":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 105
    .local v0, "c":Landroid/database/Cursor;
    invoke-static {v2, p1}, Lcom/baidu/idl/lib/file/QueryImage;->createCursor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 106
    if-nez v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v3

    .line 110
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 111
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 119
    .local v3, "orientation":I
    if-eqz v0, :cond_0

    .line 123
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 113
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "orientation":I
    :catch_1
    move-exception v1

    .line 119
    .restart local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 123
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 125
    :catch_2
    move-exception v1

    .line 127
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 118
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 119
    if-eqz v0, :cond_2

    .line 123
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 130
    :cond_2
    :goto_1
    throw v4

    .line 125
    :catch_3
    move-exception v1

    .line 127
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getImageRotationAngleFromMedia2(Landroid/content/Context;Landroid/net/Uri;Z)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "fromCamera"    # Z

    .prologue
    const/4 v4, 0x0

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 137
    .local v2, "mContentResolver":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 138
    .local v0, "c":Landroid/database/Cursor;
    invoke-static {v2, p1}, Lcom/baidu/idl/lib/file/QueryImage;->getLatestCameraImageRotationAngle(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v3

    .line 139
    .local v3, "orient":I
    if-eqz v3, :cond_1

    move v4, v3

    .line 151
    :cond_0
    :goto_0
    return v4

    .line 142
    :cond_1
    invoke-static {v2, p1}, Lcom/baidu/idl/lib/file/QueryImage;->createCursor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    .line 147
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 148
    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 156
    if-eqz v0, :cond_2

    .line 160
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    move v4, v3

    .line 149
    goto :goto_0

    .line 162
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 150
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 156
    .restart local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 160
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 162
    :catch_2
    move-exception v1

    .line 164
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 155
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 156
    if-eqz v0, :cond_3

    .line 160
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 167
    :cond_3
    :goto_2
    throw v4

    .line 162
    :catch_3
    move-exception v1

    .line 164
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private static getLatestCameraImageRotationAngle(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 7
    .param p0, "mContentResolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 173
    const/4 v3, 0x0

    .line 174
    .local v3, "orient":I
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 177
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 179
    .local v1, "exif":Landroid/media/ExifInterface;
    const-string v5, "Orientation"

    invoke-virtual {v1, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "exifOrientation":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 182
    .local v4, "rotation":I
    const/4 v5, 0x6

    if-ne v5, v4, :cond_1

    .line 184
    const/16 v3, 0x5a

    .line 204
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .end local v2    # "exifOrientation":Ljava/lang/String;
    .end local v4    # "rotation":I
    :cond_0
    :goto_0
    return v3

    .line 186
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "exifOrientation":Ljava/lang/String;
    .restart local v4    # "rotation":I
    :cond_1
    const/4 v5, 0x3

    if-ne v5, v4, :cond_2

    .line 188
    const/16 v3, 0xb4

    .line 189
    goto :goto_0

    .line 190
    :cond_2
    const/16 v5, 0x8

    if-ne v5, v4, :cond_0

    .line 192
    const/16 v3, 0x10e

    goto :goto_0

    .line 194
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .end local v2    # "exifOrientation":Ljava/lang/String;
    .end local v4    # "rotation":I
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 196
    const/4 v3, -0x1

    goto :goto_0

    .line 198
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    const/4 v3, -0x1

    goto :goto_0
.end method

.method protected static sortOrder()Ljava/lang/String;
    .locals 4

    .prologue
    .line 43
    const-string v0, " DESC"

    .line 47
    .local v0, "ascending":Ljava/lang/String;
    const-string v1, "case ifnull(datetaken,0) when 0 then date_modified*1000 else datetaken end"

    .line 53
    .local v1, "dateExpr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", _id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected static whereClause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "(mime_type in (?, ?, ?))"

    return-object v0
.end method

.method protected static whereClauseArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/baidu/idl/lib/file/QueryImage;->ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String;

    return-object v0
.end method
