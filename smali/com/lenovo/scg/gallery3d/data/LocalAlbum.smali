.class public Lcom/lenovo/scg/gallery3d/data/LocalAlbum;
.super Lcom/lenovo/scg/gallery3d/data/MediaSet;
.source "LocalAlbum.java"


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static final INVALID_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LocalAlbum"

.field private static sCameraName:Ljava/lang/String;


# instance fields
.field private final mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

.field private final mBaseUri:Landroid/net/Uri;

.field private final mBucketId:I

.field private mCachedCount:I

.field private final mIsImage:Z

.field private final mItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

.field private mName:Ljava/lang/String;

.field private final mNotifier:Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;

.field private final mOrderClause:Ljava/lang/String;

.field private final mProjection:[Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mWhereClause:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;IZ)V
    .locals 6
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "application"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    .param p3, "bucketId"    # I
    .param p4, "isImage"    # Z

    .prologue
    .line 128
    invoke-interface {p2}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/lenovo/scg/gallery3d/data/BucketHelper;->getBucketName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;IZLjava/lang/String;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;IZLjava/lang/String;)V
    .locals 2
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "application"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    .param p3, "bucketId"    # I
    .param p4, "isImage"    # Z
    .param p5, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;J)V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mCachedCount:I

    .line 87
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 88
    invoke-interface {p2}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    .line 89
    iput p3, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mBucketId:I

    .line 90
    invoke-interface {p2}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p5}, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->getLocalizedName(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mName:Ljava/lang/String;

    .line 91
    iput-boolean p4, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mIsImage:Z

    .line 93
    if-eqz p4, :cond_0

    .line 96
    const-string v0, "bucket_id = ?"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    .line 99
    const-string v0, "datetaken DESC, _id DESC"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    .line 100
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    .line 101
    sget-object v0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    .line 102
    sget-object v0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/lenovo/scg/gallery3d/data/Path;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 111
    :goto_0
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;-><init>(Lcom/lenovo/scg/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mNotifier:Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;

    .line 125
    return-void

    .line 104
    :cond_0
    const-string v0, "bucket_id = ?"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    .line 105
    const-string v0, "datetaken DESC, _id DESC"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    .line 106
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    .line 107
    sget-object v0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/lenovo/scg/gallery3d/data/Path;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

    goto :goto_0
.end method

.method public static getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 258
    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaItemById(Lcom/lenovo/scg/gallery3d/app/GalleryApp;ZLjava/util/ArrayList;)[Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 20
    .param p0, "application"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    .param p1, "isImage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/app/GalleryApp;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Lcom/lenovo/scg/gallery3d/data/MediaItem;"
        }
    .end annotation

    .prologue
    .line 202
    .local p2, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-object/from16 v18, v0

    .line 203
    .local v18, "result":[Lcom/lenovo/scg/gallery3d/data/MediaItem;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 253
    :goto_0
    return-object v18

    .line 204
    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 205
    .local v14, "idLow":I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 211
    .local v13, "idHigh":I
    if-eqz p1, :cond_1

    .line 212
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 213
    .local v3, "baseUri":Landroid/net/Uri;
    sget-object v4, Lcom/lenovo/scg/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    .line 214
    .local v4, "projection":[Ljava/lang/String;
    sget-object v16, Lcom/lenovo/scg/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 221
    .local v16, "itemPath":Lcom/lenovo/scg/gallery3d/data/Path;
    :goto_1
    invoke-interface/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 222
    .local v2, "resolver":Landroid/content/ContentResolver;
    invoke-interface/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v10

    .line 223
    .local v10, "dataManager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    const-string v5, "_id BETWEEN ? AND ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v7

    const/4 v7, 0x1

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v7

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 224
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_2

    .line 225
    const-string v5, "LocalAlbum"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "query fail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "baseUri":Landroid/net/Uri;
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "dataManager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    .end local v16    # "itemPath":Lcom/lenovo/scg/gallery3d/data/Path;
    :cond_1
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 217
    .restart local v3    # "baseUri":Landroid/net/Uri;
    sget-object v4, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    .line 218
    .restart local v4    # "projection":[Ljava/lang/String;
    sget-object v16, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/lenovo/scg/gallery3d/data/Path;

    .restart local v16    # "itemPath":Lcom/lenovo/scg/gallery3d/data/Path;
    goto :goto_1

    .line 229
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "dataManager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    :cond_2
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 230
    .local v17, "n":I
    const/4 v11, 0x0

    .line 232
    .local v11, "i":I
    :cond_3
    :goto_2
    move/from16 v0, v17

    if-ge v11, v0, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 233
    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 236
    .local v12, "id":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gt v5, v12, :cond_3

    .line 240
    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-ge v5, v12, :cond_5

    .line 241
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v17

    if-lt v11, v0, :cond_4

    .line 253
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 246
    :cond_5
    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/lenovo/scg/gallery3d/data/Path;->getChild(I)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v8

    .line 247
    .local v8, "childPath":Lcom/lenovo/scg/gallery3d/data/Path;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v8, v9, v10, v0, v1}, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcom/lenovo/scg/gallery3d/data/Path;Landroid/database/Cursor;Lcom/lenovo/scg/gallery3d/data/DataManager;Lcom/lenovo/scg/gallery3d/app/GalleryApp;Z)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v15

    .line 248
    .local v15, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    aput-object v15, v18, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    add-int/lit8 v11, v11, 0x1

    .line 250
    goto :goto_2

    .line 253
    .end local v8    # "childPath":Lcom/lenovo/scg/gallery3d/data/Path;
    .end local v12    # "id":I
    .end local v15    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v11    # "i":I
    .end local v17    # "n":I
    :catchall_0
    move-exception v5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method public static getRelativePath(I)Ljava/lang/String;
    .locals 6
    .param p0, "bucketId"    # I

    .prologue
    .line 349
    const-string v2, "/"

    .line 350
    .local v2, "relativePath":Ljava/lang/String;
    sget v3, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    if-ne p0, v3, :cond_0

    .line 351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DCIM/Camera"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 372
    :goto_0
    return-object v2

    .line 352
    :cond_0
    sget v3, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    if-ne p0, v3, :cond_1

    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "download"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 354
    :cond_1
    sget v3, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->IMPORTED_BUCKET_ID:I

    if-ne p0, v3, :cond_2

    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Imported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 356
    :cond_2
    sget v3, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    if-ne p0, v3, :cond_3

    .line 357
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Pictures/Screenshots"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 358
    :cond_3
    sget v3, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->EDITED_ONLINE_PHOTOS_BUCKET_ID:I

    if-ne p0, v3, :cond_4

    .line 359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "EditedOnlinePhotos"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 363
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 364
    .local v0, "extStorage":Ljava/io/File;
    invoke-static {v0, p0}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->searchDirForPath(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "path":Ljava/lang/String;
    if-nez v1, :cond_5

    .line 366
    const-string v3, "LocalAlbum"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Relative path for bucket id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not found."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 369
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private static loadOrUpdateItem(Lcom/lenovo/scg/gallery3d/data/Path;Landroid/database/Cursor;Lcom/lenovo/scg/gallery3d/data/DataManager;Lcom/lenovo/scg/gallery3d/app/GalleryApp;Z)Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 3
    .param p0, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "dataManager"    # Lcom/lenovo/scg/gallery3d/data/DataManager;
    .param p3, "app"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    .param p4, "isImage"    # Z

    .prologue
    .line 184
    sget-object v2, Lcom/lenovo/scg/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 185
    :try_start_0
    invoke-virtual {p2, p0}, Lcom/lenovo/scg/gallery3d/data/DataManager;->peekMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;

    .line 186
    .local v0, "item":Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;
    if-nez v0, :cond_1

    .line 187
    if-eqz p4, :cond_0

    .line 188
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/LocalImage;

    .end local v0    # "item":Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;
    invoke-direct {v0, p0, p3, p1}, Lcom/lenovo/scg/gallery3d/data/LocalImage;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    .line 195
    .restart local v0    # "item":Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;
    :goto_0
    monitor-exit v2

    return-object v0

    .line 190
    :cond_0
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;

    .end local v0    # "item":Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;
    invoke-direct {v0, p0, p3, p1}, Lcom/lenovo/scg/gallery3d/data/LocalVideo;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    .restart local v0    # "item":Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;
    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->updateContent(Landroid/database/Cursor;)V

    goto :goto_0

    .line 196
    .end local v0    # "item":Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public delete()V
    .locals 6

    .prologue
    .line 316
    invoke-static {}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 317
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 318
    return-void
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mIsImage:Z

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "bucketId"

    iget v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 141
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "bucketId"

    iget v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalizedName(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bucketId"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const v1, 0x7f0f06c3

    .line 329
    sget v0, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    if-ne p2, v0, :cond_1

    .line 331
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->sCameraName:Ljava/lang/String;

    .line 333
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 343
    .end local p3    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p3

    .line 334
    .restart local p3    # "name":Ljava/lang/String;
    :cond_1
    sget v0, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    if-ne p2, v0, :cond_2

    .line 335
    const v0, 0x7f0f06c4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 336
    :cond_2
    sget v0, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->IMPORTED_BUCKET_ID:I

    if-ne p2, v0, :cond_3

    .line 337
    const v0, 0x7f0f06c5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 338
    :cond_3
    sget v0, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    if-ne p2, v0, :cond_4

    .line 339
    const v0, 0x7f0f06c6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 340
    :cond_4
    sget v0, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->EDITED_ONLINE_PHOTOS_BUCKET_ID:I

    if-ne p2, v0, :cond_0

    .line 341
    const v0, 0x7f0f04b8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 13
    .param p1, "start"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 147
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v8

    .line 148
    .local v8, "dataManager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 149
    .local v1, "uri":Landroid/net/Uri;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    invoke-static {}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 152
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    .line 157
    .local v3, "whereClause":Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 165
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 166
    const-string v0, "LocalAlbum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "query fail: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_0
    return-object v11

    .line 171
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 173
    .local v9, "id":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/gallery3d/data/Path;->getChild(I)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v6

    .line 174
    .local v6, "childPath":Lcom/lenovo/scg/gallery3d/data/Path;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mIsImage:Z

    invoke-static {v6, v7, v8, v0, v2}, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcom/lenovo/scg/gallery3d/data/Path;Landroid/database/Cursor;Lcom/lenovo/scg/gallery3d/data/DataManager;Lcom/lenovo/scg/gallery3d/app/GalleryApp;Z)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v10

    .line 175
    .local v10, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 178
    .end local v6    # "childPath":Lcom/lenovo/scg/gallery3d/data/Path;
    .end local v9    # "id":I
    .end local v10    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getMediaItemCount()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 265
    iget v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mCachedCount:I

    if-nez v0, :cond_2

    .line 268
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    .line 273
    .local v3, "whereClause":Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 281
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 282
    const-string v0, "LocalAlbum"

    const-string/jumbo v1, "query fail"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 292
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :goto_0
    return v0

    .line 286
    .restart local v3    # "whereClause":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->assertTrue(Z)V

    .line 287
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mCachedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 292
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mCachedCount:I

    goto :goto_0

    .line 289
    .restart local v3    # "whereClause":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mBucketId:I

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->getLocalizedName(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 311
    const/16 v0, 0x405

    return v0
.end method

.method public isCameraRoll()Z
    .locals 2

    .prologue
    .line 133
    iget v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mBucketId:I

    sget v1, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x1

    return v0
.end method

.method public reload()J
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mNotifier:Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mDataVersion:J

    .line 304
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mCachedCount:I

    .line 306
    :cond_0
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->mDataVersion:J

    return-wide v0
.end method
