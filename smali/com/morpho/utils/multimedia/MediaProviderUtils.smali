.class public Lcom/morpho/utils/multimedia/MediaProviderUtils;
.super Ljava/lang/Object;
.source "MediaProviderUtils.java"


# static fields
.field public static final ROTATION_180:I = 0xb4

.field public static final ROTATION_270:I = 0x10e

.field public static final ROTATION_90:I = 0x5a

.field public static final ROTATION_NORMAL:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;)Landroid/net/Uri;
    .locals 10
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "rotation"    # I
    .param p4, "storageUri"    # Landroid/net/Uri;

    .prologue
    const-wide/16 v8, 0x3e8

    .line 163
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 164
    :cond_0
    const/4 v3, 0x0

    .line 190
    :goto_0
    return-object v3

    .line 167
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "fileName":Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    const/16 v3, 0x9

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 171
    .local v0, "contentValues":Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 174
    .local v4, "time":J
    if-eqz p3, :cond_2

    const/16 v3, 0x5a

    if-eq p3, v3, :cond_2

    .line 175
    const/16 v3, 0xb4

    if-eq p3, v3, :cond_2

    const/16 v3, 0x10e

    if-eq p3, v3, :cond_2

    .line 177
    const/4 p3, 0x0

    .line 180
    :cond_2
    const-string/jumbo v3, "title"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v3, "_display_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v3, "datetaken"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 183
    const-string v3, "date_added"

    div-long v6, v4, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 184
    const-string v3, "date_modified"

    div-long v6, v4, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 185
    const-string/jumbo v3, "mime_type"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string/jumbo v3, "orientation"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    const-string v3, "_data"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v3, "_size"

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 190
    invoke-virtual {p0, p4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method public static addImageExternal(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "rotation"    # I

    .prologue
    .line 141
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addImageInternal(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "rotation"    # I

    .prologue
    .line 154
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static addVideo(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;)Landroid/net/Uri;
    .locals 13
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .param p5, "storageUri"    # Landroid/net/Uri;

    .prologue
    const-wide/16 v10, 0x3e8

    .line 288
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 289
    :cond_0
    const/4 v5, 0x0

    .line 310
    :goto_0
    return-object v5

    .line 292
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, "fileName":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    const/16 v5, 0x9

    invoke-direct {v2, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 296
    .local v2, "contentValues":Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 298
    .local v6, "time":J
    const-string/jumbo v5, "title"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v5, "_display_name"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v5, "datetaken"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 301
    const-string v5, "date_added"

    div-long v8, v6, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 302
    const-string v5, "date_modified"

    div-long v8, v6, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 303
    const-string/jumbo v5, "mime_type"

    invoke-virtual {v2, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v5, "_data"

    invoke-virtual {v2, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v5, "_size"

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 306
    const-wide/16 v8, 0x0

    cmp-long v5, p3, v8

    if-lez v5, :cond_2

    .line 307
    const-string v5, "duration"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_2
    move-object/from16 v0, p5

    invoke-virtual {p0, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0
.end method

.method public static addVideoExternal(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "duration"    # J

    .prologue
    .line 266
    sget-object v6, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->addVideo(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addVideoInternal(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "duration"    # J

    .prologue
    .line 279
    sget-object v6, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->addVideo(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static deleteImage(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)I
    .locals 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "storageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 225
    const/4 v7, -0x1

    .line 227
    .local v7, "result":I
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v8, v7

    .line 249
    .end local v7    # "result":I
    .local v8, "result":I
    :goto_0
    return v8

    .line 233
    .end local v8    # "result":I
    .restart local v7    # "result":I
    :cond_1
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 234
    const-string v3, "_data=?"

    .line 235
    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 236
    const-string v5, "bucket_display_name"

    move-object v0, p0

    move-object v1, p2

    .line 232
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 238
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 239
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 241
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 242
    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 241
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .line 243
    .local v9, "uri":Landroid/net/Uri;
    invoke-virtual {p0, v9, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 246
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v8, v7

    .line 249
    .end local v7    # "result":I
    .restart local v8    # "result":I
    goto :goto_0
.end method

.method public static deleteImageExternal(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 205
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->deleteImage(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public static deleteImageInternal(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 216
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->deleteImage(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method private static deleteVideo(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)I
    .locals 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "storageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 345
    const/4 v7, -0x1

    .line 347
    .local v7, "result":I
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v8, v7

    .line 369
    .end local v7    # "result":I
    .local v8, "result":I
    :goto_0
    return v8

    .line 353
    .end local v8    # "result":I
    .restart local v7    # "result":I
    :cond_1
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 354
    const-string v3, "_data=?"

    .line 355
    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 356
    const-string/jumbo v5, "title"

    move-object v0, p0

    move-object v1, p2

    .line 352
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 358
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 359
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 361
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 362
    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 361
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .line 363
    .local v9, "uri":Landroid/net/Uri;
    invoke-virtual {p0, v9, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 366
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v8, v7

    .line 369
    .end local v7    # "result":I
    .restart local v8    # "result":I
    goto :goto_0
.end method

.method public static deleteVideoExternal(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 325
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->deleteVideo(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public static deleteVideoInternal(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 336
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->deleteVideo(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method private static getContentFilePath(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "colunmName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 105
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-object v3

    .line 110
    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v2, v0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 109
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 115
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 121
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 122
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "filePath":Ljava/lang/String;
    move-object v3, v7

    .line 124
    goto :goto_0
.end method

.method public static getExternalImageContentUri(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 34
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->getImageContentUri(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getImageContentUri(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 10
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "storageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 52
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v9

    .line 73
    :goto_0
    return-object v0

    .line 58
    :cond_1
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 59
    const-string v3, "_data=?"

    .line 60
    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 61
    const-string v5, "bucket_display_name"

    move-object v0, p0

    move-object v1, p2

    .line 57
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 63
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_2

    move-object v0, v9

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    move-object v0, v9

    .line 66
    goto :goto_0

    .line 69
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 70
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 71
    .local v8, "id":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, "content":Ljava/lang/String;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static getImageFilePath(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 86
    const-string v0, "_data"

    invoke-static {p0, p1, v0}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->getContentFilePath(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getImageThumbnailBitmap(Landroid/content/ContentResolver;Ljava/lang/String;ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "storageUri"    # Landroid/net/Uri;

    .prologue
    .line 405
    const/4 v10, 0x0

    .line 407
    .local v10, "thumbnail":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 408
    :cond_0
    const/4 v0, 0x0

    .line 442
    :goto_0
    return-object v0

    .line 411
    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    .line 412
    const/4 p2, 0x1

    .line 416
    :cond_2
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 417
    const-string v3, "_data=?"

    .line 418
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 419
    const-string v5, "bucket_display_name"

    move-object v0, p0

    move-object v1, p3

    .line 415
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 421
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 422
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 423
    .local v6, "count":I
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 424
    .local v9, "index":I
    new-array v11, v6, [I

    .line 426
    .local v11, "videoIds":[I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 427
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-lt v8, v6, :cond_5

    .line 439
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6    # "count":I
    .end local v8    # "i":I
    .end local v9    # "index":I
    .end local v11    # "videoIds":[I
    :cond_4
    move-object v0, v10

    .line 442
    goto :goto_0

    .line 428
    .restart local v6    # "count":I
    .restart local v8    # "i":I
    .restart local v9    # "index":I
    .restart local v11    # "videoIds":[I
    :cond_5
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v11, v8

    .line 431
    aget v0, v11, v8

    int-to-long v0, v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p2, v2}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 433
    if-nez v10, :cond_3

    .line 436
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 427
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public static getImageThumbnailBitmapExternal(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    .line 385
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, p2, v0}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->getImageThumbnailBitmap(Landroid/content/ContentResolver;Ljava/lang/String;ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getImageThumbnailBitmapInternal(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    .line 397
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, p2, v0}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->getImageThumbnailBitmap(Landroid/content/ContentResolver;Ljava/lang/String;ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getInternalImageContentUri(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->getImageContentUri(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoFilePath(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 95
    const-string v0, "_data"

    invoke-static {p0, p1, v0}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->getContentFilePath(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getVideoThumbnailBitmap(Landroid/content/ContentResolver;Ljava/lang/String;ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "storageUri"    # Landroid/net/Uri;

    .prologue
    .line 478
    const/4 v10, 0x0

    .line 480
    .local v10, "thumbnail":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 481
    :cond_0
    const/4 v0, 0x0

    .line 515
    :goto_0
    return-object v0

    .line 484
    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    .line 485
    const/4 p2, 0x1

    .line 489
    :cond_2
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 490
    const-string v3, "_data=?"

    .line 491
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 492
    const-string/jumbo v5, "title"

    move-object v0, p0

    move-object v1, p3

    .line 488
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 494
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 495
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 496
    .local v6, "count":I
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 497
    .local v9, "index":I
    new-array v11, v6, [I

    .line 499
    .local v11, "videoIds":[I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 500
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-lt v8, v6, :cond_5

    .line 512
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6    # "count":I
    .end local v8    # "i":I
    .end local v9    # "index":I
    .end local v11    # "videoIds":[I
    :cond_4
    move-object v0, v10

    .line 515
    goto :goto_0

    .line 501
    .restart local v6    # "count":I
    .restart local v8    # "i":I
    .restart local v9    # "index":I
    .restart local v11    # "videoIds":[I
    :cond_5
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v11, v8

    .line 504
    aget v0, v11, v8

    int-to-long v0, v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p2, v2}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 506
    if-nez v10, :cond_3

    .line 509
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 500
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public static getVideoThumbnailBitmapExternal(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    .line 458
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, p2, v0}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->getVideoThumbnailBitmap(Landroid/content/ContentResolver;Ljava/lang/String;ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoThumbnailBitmapInternal(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    .line 470
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, p2, v0}, Lcom/morpho/utils/multimedia/MediaProviderUtils;->getVideoThumbnailBitmap(Landroid/content/ContentResolver;Ljava/lang/String;ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
