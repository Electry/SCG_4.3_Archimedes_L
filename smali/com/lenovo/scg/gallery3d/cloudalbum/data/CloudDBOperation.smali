.class public Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;
.super Ljava/lang/Object;
.source "CloudDBOperation.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "CloudAlbum_DB.db"


# instance fields
.field public final ALBUM_ID_KEY:Ljava/lang/String;

.field public final ALBUM_NAME_KEY:Ljava/lang/String;

.field public final ALBUM_SET_TABLE_NAME:Ljava/lang/String;

.field public final ALBUM_SIZE_KEY:Ljava/lang/String;

.field public final ALBUM_TABLE_NAME:Ljava/lang/String;

.field public final ALBUM_URL_KEY:Ljava/lang/String;

.field public final ALBUM_VERSION_KEY:Ljava/lang/String;

.field public final CREATE_ALBUM_SET_TABLE:Ljava/lang/String;

.field public final CREATE_ALBUM_TABLE:Ljava/lang/String;

.field public final CREATE_IMAGE_TABLE:Ljava/lang/String;

.field public final IMAGE_ID_KEY:Ljava/lang/String;

.field public final IMAGE_PATH_KEY:Ljava/lang/String;

.field public final IMAGE_SIZE_KEY:Ljava/lang/String;

.field public final IMAGE_TABLE_NAME:Ljava/lang/String;

.field public final PHOTO_BIG_THUMB_URL_KEY:Ljava/lang/String;

.field public final PHOTO_COUNT_KEY:Ljava/lang/String;

.field public final PHOTO_DOWNLOAD_KEY:Ljava/lang/String;

.field public final PHOTO_ID_KEY:Ljava/lang/String;

.field public final PHOTO_NAME_KEY:Ljava/lang/String;

.field public final PHOTO_SIZE_KEY:Ljava/lang/String;

.field public final PHOTO_SMALL_THUMB_URL_KEY:Ljava/lang/String;

.field public final PHOTO_URL_KEY:Ljava/lang/String;

.field private mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mContext:Landroid/content/Context;

    .line 18
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 21
    const-string v0, "albumset_table"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->ALBUM_SET_TABLE_NAME:Ljava/lang/String;

    .line 23
    const-string v0, "album_id"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->ALBUM_ID_KEY:Ljava/lang/String;

    .line 25
    const-string v0, "album_name"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->ALBUM_NAME_KEY:Ljava/lang/String;

    .line 27
    const-string v0, "album_url"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->ALBUM_URL_KEY:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "photo_count"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->PHOTO_COUNT_KEY:Ljava/lang/String;

    .line 31
    const-string v0, "album_version"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->ALBUM_VERSION_KEY:Ljava/lang/String;

    .line 33
    const-string v0, "album_size"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->ALBUM_SIZE_KEY:Ljava/lang/String;

    .line 35
    const-string v0, "CREATE TABLE if not exists albumset_table(album_id INTEGER PRIMARY KEY,album_version LONG,album_name TEXT,album_url TEXT,photo_count INTEGER,album_size LONG default 0)"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->CREATE_ALBUM_SET_TABLE:Ljava/lang/String;

    .line 41
    const-string v0, "album_table"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->ALBUM_TABLE_NAME:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "photo_id"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->PHOTO_ID_KEY:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "photo_name"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->PHOTO_NAME_KEY:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "photo_small_thumb_url"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->PHOTO_SMALL_THUMB_URL_KEY:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "photo_big_thumb_url"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->PHOTO_BIG_THUMB_URL_KEY:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "photo_url"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->PHOTO_URL_KEY:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "photo_download"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->PHOTO_DOWNLOAD_KEY:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "photo_size"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->PHOTO_SIZE_KEY:Ljava/lang/String;

    .line 57
    const-string v0, "CREATE TABLE if not exists album_table(photo_id INTEGER PRIMARY KEY,album_id TEXT,photo_name TEXT,photo_small_thumb_url TEXT,photo_big_thumb_url TEXT,photo_url TEXT,photo_download INTEGER default 0,photo_size LONG default 0)"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->CREATE_ALBUM_TABLE:Ljava/lang/String;

    .line 62
    const-string v0, "image_table"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->IMAGE_TABLE_NAME:Ljava/lang/String;

    .line 64
    const-string v0, "image_id"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->IMAGE_ID_KEY:Ljava/lang/String;

    .line 66
    const-string v0, "image_path"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->IMAGE_PATH_KEY:Ljava/lang/String;

    .line 68
    const-string v0, "image_size"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->IMAGE_SIZE_KEY:Ljava/lang/String;

    .line 70
    const-string v0, "CREATE TABLE if not exists image_table(image_id INTEGER PRIMARY KEY,image_path TEXT,image_size LONG default 0)"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->CREATE_IMAGE_TABLE:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method


# virtual methods
.method public closeCloudDB()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 120
    :cond_0
    return-void
.end method

.method public createCloudTable(Ljava/lang/String;)V
    .locals 4
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HWJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create db table exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0
.end method

.method public delAlbumDataFromDB(Ljava/lang/String;)Z
    .locals 5
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 206
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "albumset_table"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "album_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 209
    :cond_0
    return v0
.end method

.method public delImageDataFromDB(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 412
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "image_table"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "image_path=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 415
    :cond_0
    return v0
.end method

.method public delPhotoByAlbumId(Ljava/lang/String;)Z
    .locals 6
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    .line 327
    const/4 v0, 0x0

    .line 328
    .local v0, "isDelSucceed":Z
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->queryPhotoByAlbum(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 329
    .local v1, "photoCursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 331
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_1

    .line 332
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "album_table"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "album_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    const/4 v0, 0x1

    .line 334
    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 335
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 336
    const/4 v1, 0x0

    .line 338
    :cond_2
    return v0

    .line 332
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public delPhotoDataFromDB(Ljava/lang/String;)Z
    .locals 5
    .param p1, "photoId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 342
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "album_table"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "photo_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 345
    :cond_0
    return v0
.end method

.method public deleteCloudDBTable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "albumset_table"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "album_table"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "image_table"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 133
    :cond_0
    return-void
.end method

.method public insertDataToAlbumSetTable(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IJ)V
    .locals 4
    .param p1, "albumId"    # Ljava/lang/String;
    .param p2, "albumVersion"    # J
    .param p4, "albumName"    # Ljava/lang/String;
    .param p5, "album_url"    # Ljava/lang/String;
    .param p6, "photo_count"    # I
    .param p7, "size"    # J

    .prologue
    .line 192
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 193
    .local v0, "allValue":Landroid/content/ContentValues;
    const-string v1, "album_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "album_version"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 195
    const-string v1, "album_name"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v1, "album_url"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string/jumbo v1, "photo_count"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    const-string v1, "album_size"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 200
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "albumset_table"

    const-string v3, "album_id"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 203
    :cond_0
    return-void
.end method

.method public insertDataToAlbumTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 4
    .param p1, "photoId"    # Ljava/lang/String;
    .param p2, "albumId"    # Ljava/lang/String;
    .param p3, "photoName"    # Ljava/lang/String;
    .param p4, "photo_small_thumb_url"    # Ljava/lang/String;
    .param p5, "big_thumb_url"    # Ljava/lang/String;
    .param p6, "photo_url"    # Ljava/lang/String;
    .param p7, "is_download"    # I
    .param p8, "size"    # J

    .prologue
    .line 311
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 312
    .local v0, "allValue":Landroid/content/ContentValues;
    const-string/jumbo v1, "photo_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v1, "album_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string/jumbo v1, "photo_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string/jumbo v1, "photo_small_thumb_url"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string/jumbo v1, "photo_big_thumb_url"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string/jumbo v1, "photo_url"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string/jumbo v1, "photo_download"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 319
    const-string/jumbo v1, "photo_size"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 321
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "album_table"

    const-string/jumbo v3, "photo_id"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 324
    :cond_0
    return-void
.end method

.method public insertDataToImageTable(Ljava/lang/String;J)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "size"    # J

    .prologue
    .line 400
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->queryImageIsExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 402
    .local v0, "allValue":Landroid/content/ContentValues;
    const-string v1, "image_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v1, "image_size"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 405
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "image_table"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 409
    .end local v0    # "allValue":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public isDBOpen()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTableExist(Ljava/lang/String;)Z
    .locals 8
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 158
    if-nez p1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v4

    .line 161
    :cond_1
    const/4 v1, 0x0

    .line 163
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "select count(*) as c from sqlite_master where type =\'table\' and name =\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "sql":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 165
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 166
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 167
    .local v0, "count":I
    const-string v5, "HWJ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cursor count  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    if-lez v0, :cond_4

    .line 169
    if-eqz v1, :cond_2

    .line 170
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    const/4 v1, 0x0

    .line 173
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 177
    .end local v0    # "count":I
    .end local v3    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 178
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v1, :cond_3

    .line 179
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 180
    const/4 v1, 0x0

    .line 182
    :cond_3
    const-string v5, "HWJ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cursor e  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    if-eqz v1, :cond_0

    .line 185
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 186
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public openOrCreateCloudDB()V
    .locals 6

    .prologue
    .line 79
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mContext:Landroid/content/Context;

    const-string v3, "CloudAlbum_DB.db"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "dbPath":Ljava/lang/String;
    const-string v2, "HWJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dbPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 84
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mContext:Landroid/content/Context;

    const-string v3, "CloudAlbum_DB.db"

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_1

    .line 95
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    :cond_1
    :goto_1
    return-void

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_2

    .line 87
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 89
    :cond_2
    const-string v2, "HWJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteException openOrCreateDatabase: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v1

    .line 100
    .restart local v1    # "e":Landroid/database/sqlite/SQLiteException;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_3

    .line 101
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 103
    :cond_3
    const-string v2, "HWJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteException openDatabase: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public queryAlbumIsExist(Ljava/lang/String;)Z
    .locals 12
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 224
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "albumset_table"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "album_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 226
    .local v10, "cur":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 228
    .local v11, "curAlbumCount":I
    if-eqz v10, :cond_1

    .line 229
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 230
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 231
    if-lez v11, :cond_1

    .line 232
    if-eqz v10, :cond_0

    .line 233
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 234
    const/4 v10, 0x0

    .line 244
    .end local v10    # "cur":Landroid/database/Cursor;
    .end local v11    # "curAlbumCount":I
    :cond_0
    :goto_0
    return v1

    .line 239
    .restart local v10    # "cur":Landroid/database/Cursor;
    .restart local v11    # "curAlbumCount":I
    :cond_1
    if-eqz v10, :cond_2

    .line 240
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 244
    .end local v10    # "cur":Landroid/database/Cursor;
    .end local v11    # "curAlbumCount":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public queryAllAlbumFromDB()Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 214
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "albumset_table"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "album_id"

    aput-object v6, v3, v5

    const-string v5, "album_version"

    aput-object v5, v3, v1

    const/4 v5, 0x2

    const-string v6, "album_name"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "album_url"

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "photo_count"

    aput-object v6, v3, v5

    const/4 v5, 0x5

    const-string v6, "album_size"

    aput-object v6, v3, v5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, v4

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 216
    .local v10, "cur":Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 217
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 220
    :cond_0
    return-object v10
.end method

.method public queryAllImageFromDB()Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 420
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "image_table"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "image_id"

    aput-object v6, v3, v5

    const-string v5, "image_path"

    aput-object v5, v3, v1

    const/4 v5, 0x2

    const-string v6, "image_size"

    aput-object v6, v3, v5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, v4

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 421
    .local v10, "cur":Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 422
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 424
    :cond_0
    return-object v10
.end method

.method public queryImageIsExist(Ljava/lang/String;)Z
    .locals 12
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 428
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "image_table"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "image_path=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 429
    .local v10, "cur":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 431
    .local v11, "curAlbumCount":I
    if-eqz v10, :cond_0

    .line 432
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 433
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 434
    if-lez v11, :cond_0

    .line 438
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public queryPhotoByAlbum(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 350
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "album_table"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "album_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 352
    .local v10, "cur":Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 353
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 356
    :cond_0
    return-object v10
.end method

.method public queryPhotoIsDownload(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "photoId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 392
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "album_table"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "photo_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 393
    .local v10, "cur":Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 394
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 396
    :cond_0
    return-object v10
.end method

.method public updataAlbumByAlbumId(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IJ)Z
    .locals 6
    .param p1, "albumId"    # Ljava/lang/String;
    .param p2, "albumVersion"    # J
    .param p4, "albumName"    # Ljava/lang/String;
    .param p5, "album_url"    # Ljava/lang/String;
    .param p6, "photo_count"    # I
    .param p7, "size"    # J

    .prologue
    const/4 v1, 0x0

    .line 295
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 296
    .local v0, "allValue":Landroid/content/ContentValues;
    const-string v2, "album_version"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 297
    const-string v2, "album_name"

    invoke-virtual {v0, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v2, "album_url"

    invoke-virtual {v0, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string/jumbo v2, "photo_count"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 300
    const-string v2, "album_size"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 302
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "albumset_table"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "album_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 305
    :cond_0
    return v1
.end method

.method public updataPhotoByPhotoId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Z
    .locals 6
    .param p1, "photoId"    # Ljava/lang/String;
    .param p2, "albumId"    # Ljava/lang/String;
    .param p3, "photoName"    # Ljava/lang/String;
    .param p4, "small_thumb_url"    # Ljava/lang/String;
    .param p5, "big_thumb_url"    # Ljava/lang/String;
    .param p6, "photo_url"    # Ljava/lang/String;
    .param p7, "is_download"    # I
    .param p8, "size"    # J

    .prologue
    const/4 v1, 0x0

    .line 361
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 362
    .local v0, "allValue":Landroid/content/ContentValues;
    const-string/jumbo v2, "photo_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v2, "album_id"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string/jumbo v2, "photo_name"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string/jumbo v2, "photo_name"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string/jumbo v2, "photo_small_thumb_url"

    invoke-virtual {v0, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string/jumbo v2, "photo_big_thumb_url"

    invoke-virtual {v0, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string/jumbo v2, "photo_url"

    invoke-virtual {v0, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string/jumbo v2, "photo_download"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 370
    const-string/jumbo v2, "photo_size"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 372
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    .line 373
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "album_table"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "photo_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 375
    :cond_0
    return v1
.end method

.method public updateAlbumInfoDB(Ljava/lang/String;JLjava/lang/String;)Z
    .locals 6
    .param p1, "albumId"    # Ljava/lang/String;
    .param p2, "photoCount"    # J
    .param p4, "album_url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 270
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 271
    .local v0, "albumInfo":Landroid/content/ContentValues;
    const-string/jumbo v2, "photo_count"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 272
    const-string v2, "album_url"

    invoke-virtual {v0, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v2, "HWJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "album_url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "albumset_table"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "album_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 278
    :cond_0
    return v1
.end method

.method public updateAlbumNameDB(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "albumId"    # Ljava/lang/String;
    .param p2, "albumName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 248
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 249
    .local v0, "albumNameValue":Landroid/content/ContentValues;
    const-string v2, "album_name"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    .line 252
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "albumset_table"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "album_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 254
    :cond_0
    return v1
.end method

.method public updatePhotoByPhotoId(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "photoId"    # Ljava/lang/String;
    .param p2, "is_download"    # I

    .prologue
    const/4 v1, 0x0

    .line 380
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 381
    .local v0, "allValue":Landroid/content/ContentValues;
    const-string/jumbo v2, "photo_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string/jumbo v2, "photo_download"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 384
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    .line 385
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "album_table"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "photo_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 387
    :cond_0
    return v1
.end method

.method public updatePhotoCountDB(Ljava/lang/String;J)Z
    .locals 6
    .param p1, "albumId"    # Ljava/lang/String;
    .param p2, "photoCount"    # J

    .prologue
    const/4 v1, 0x0

    .line 259
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 260
    .local v0, "photoCountValue":Landroid/content/ContentValues;
    const-string/jumbo v2, "photo_count"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 262
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "albumset_table"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "album_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 265
    :cond_0
    return v1
.end method

.method public updatePhotoInfoDB(Ljava/lang/String;)Z
    .locals 6
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 283
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 284
    .local v0, "photoCountValue":Landroid/content/ContentValues;
    const-string/jumbo v2, "photo_count"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 285
    const-string v2, "album_url"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->mCloudDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "albumset_table"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "album_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 290
    :cond_0
    return v1
.end method
