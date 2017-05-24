.class public Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;
.super Lcom/lenovo/scg/gallery3d/data/MediaSet;
.source "LocalTimeAlbum.java"


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static final INVALID_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LocalTimeAlbum"


# instance fields
.field private final mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

.field private final mBaseUri:Landroid/net/Uri;

.field private mCachedCount:I

.field private final mIsImage:Z

.field private final mItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

.field private final mNotifier:Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;

.field private final mOrderClause:Ljava/lang/String;

.field private final mProjection:[Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mTimeEntry:Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;

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

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;Z)V
    .locals 4
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "application"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    .param p3, "timeEntry"    # Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;
    .param p4, "isImage"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 75
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;J)V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mCachedCount:I

    .line 76
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 77
    invoke-interface {p2}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mResolver:Landroid/content/ContentResolver;

    .line 78
    iput-boolean p4, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mIsImage:Z

    .line 79
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mTimeEntry:Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;

    .line 81
    iget-wide v0, p3, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;->startMillion:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 82
    const-string v0, "? AND datetaken < ?"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mWhereClause:Ljava/lang/String;

    .line 88
    :goto_0
    const-string v0, "datetaken DESC"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mOrderClause:Ljava/lang/String;

    .line 89
    if-eqz p4, :cond_3

    .line 90
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mBaseUri:Landroid/net/Uri;

    .line 91
    sget-object v0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mProjection:[Ljava/lang/String;

    .line 92
    sget-object v0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/lenovo/scg/gallery3d/data/Path;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 99
    :goto_1
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;-><init>(Lcom/lenovo/scg/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mNotifier:Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;

    .line 100
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mIsImage:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v0

    new-instance v1, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum$1;-><init>(Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->setUpdateListener(Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings$UpdateListener;)V

    .line 112
    :cond_0
    return-void

    .line 83
    :cond_1
    iget-wide v0, p3, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;->endMillion:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 84
    const-string v0, "datetaken >= ? AND ?"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mWhereClause:Ljava/lang/String;

    goto :goto_0

    .line 86
    :cond_2
    const-string v0, "datetaken >= ? AND datetaken < ?"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mWhereClause:Ljava/lang/String;

    goto :goto_0

    .line 94
    :cond_3
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mBaseUri:Landroid/net/Uri;

    .line 95
    sget-object v0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mProjection:[Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/lenovo/scg/gallery3d/data/Path;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

    goto :goto_1
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mCachedCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;)Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mNotifier:Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;

    return-object v0
.end method

.method public static getLocalizedName(Landroid/content/res/Resources;Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;)Ljava/lang/String;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "timeEntry"    # Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;

    .prologue
    .line 331
    iget-object v0, p1, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;->timeName:Ljava/lang/String;

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
    .line 190
    .local p2, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-object/from16 v18, v0

    .line 191
    .local v18, "result":[Lcom/lenovo/scg/gallery3d/data/MediaItem;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 241
    :goto_0
    return-object v18

    .line 192
    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 193
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

    .line 199
    .local v13, "idHigh":I
    if-eqz p1, :cond_1

    .line 200
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 201
    .local v3, "baseUri":Landroid/net/Uri;
    sget-object v4, Lcom/lenovo/scg/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    .line 202
    .local v4, "projection":[Ljava/lang/String;
    sget-object v16, Lcom/lenovo/scg/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 209
    .local v16, "itemPath":Lcom/lenovo/scg/gallery3d/data/Path;
    :goto_1
    invoke-interface/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 210
    .local v2, "resolver":Landroid/content/ContentResolver;
    invoke-interface/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v10

    .line 211
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

    .line 212
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_2

    .line 213
    const-string v5, "LocalTimeAlbum"

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

    .line 204
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "baseUri":Landroid/net/Uri;
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "dataManager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    .end local v16    # "itemPath":Lcom/lenovo/scg/gallery3d/data/Path;
    :cond_1
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 205
    .restart local v3    # "baseUri":Landroid/net/Uri;
    sget-object v4, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    .line 206
    .restart local v4    # "projection":[Ljava/lang/String;
    sget-object v16, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/lenovo/scg/gallery3d/data/Path;

    .restart local v16    # "itemPath":Lcom/lenovo/scg/gallery3d/data/Path;
    goto :goto_1

    .line 217
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "dataManager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    :cond_2
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 218
    .local v17, "n":I
    const/4 v11, 0x0

    .line 220
    .local v11, "i":I
    :cond_3
    :goto_2
    move/from16 v0, v17

    if-ge v11, v0, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 221
    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 224
    .local v12, "id":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gt v5, v12, :cond_3

    .line 228
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

    .line 229
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v17

    if-lt v11, v0, :cond_4

    .line 241
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 234
    :cond_5
    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/lenovo/scg/gallery3d/data/Path;->getChild(I)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v8

    .line 235
    .local v8, "childPath":Lcom/lenovo/scg/gallery3d/data/Path;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v8, v9, v10, v0, v1}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->loadOrUpdateItem(Lcom/lenovo/scg/gallery3d/data/Path;Landroid/database/Cursor;Lcom/lenovo/scg/gallery3d/data/DataManager;Lcom/lenovo/scg/gallery3d/app/GalleryApp;Z)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v15

    .line 236
    .local v15, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    aput-object v15, v18, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    add-int/lit8 v11, v11, 0x1

    .line 238
    goto :goto_2

    .line 241
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
    .line 337
    const-string v2, "/"

    .line 338
    .local v2, "relativePath":Ljava/lang/String;
    sget v3, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    if-ne p0, v3, :cond_0

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DCIM/Camera"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 360
    :goto_0
    return-object v2

    .line 340
    :cond_0
    sget v3, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    if-ne p0, v3, :cond_1

    .line 341
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

    .line 342
    :cond_1
    sget v3, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->IMPORTED_BUCKET_ID:I

    if-ne p0, v3, :cond_2

    .line 343
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

    .line 344
    :cond_2
    sget v3, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    if-ne p0, v3, :cond_3

    .line 345
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

    .line 346
    :cond_3
    sget v3, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->EDITED_ONLINE_PHOTOS_BUCKET_ID:I

    if-ne p0, v3, :cond_4

    .line 347
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

    .line 351
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 352
    .local v0, "extStorage":Ljava/io/File;
    invoke-static {v0, p0}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->searchDirForPath(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "path":Ljava/lang/String;
    if-nez v1, :cond_5

    .line 354
    const-string v3, "LocalTimeAlbum"

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

    .line 355
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 357
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
    .line 172
    sget-object v2, Lcom/lenovo/scg/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 173
    :try_start_0
    invoke-virtual {p2, p0}, Lcom/lenovo/scg/gallery3d/data/DataManager;->peekMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;

    .line 174
    .local v0, "item":Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;
    if-nez v0, :cond_1

    .line 175
    if-eqz p4, :cond_0

    .line 176
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/LocalImage;

    .end local v0    # "item":Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;
    invoke-direct {v0, p0, p3, p1}, Lcom/lenovo/scg/gallery3d/data/LocalImage;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    .line 183
    .restart local v0    # "item":Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;
    :goto_0
    monitor-exit v2

    return-object v0

    .line 178
    :cond_0
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;

    .end local v0    # "item":Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;
    invoke-direct {v0, p0, p3, p1}, Lcom/lenovo/scg/gallery3d/data/LocalVideo;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    .restart local v0    # "item":Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;
    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->updateContent(Landroid/database/Cursor;)V

    goto :goto_0

    .line 184
    .end local v0    # "item":Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 18
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
    .line 134
    const-string/jumbo v2, "wwf5"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LocalTime Album getMediaItem start start = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " count = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v10

    .line 136
    .local v10, "dataManager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "limit"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 137
    .local v3, "uri":Landroid/net/Uri;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v14, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    invoke-static {}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 139
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mWhereClause:Ljava/lang/String;

    .line 140
    .local v5, "whereClause":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mIsImage:Z

    if-eqz v2, :cond_0

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getSizeRuleSelection()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 143
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getFolderFilterSelection()Ljava/lang/String;

    move-result-object v11

    .line 144
    .local v11, "folderFilterSelection":Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " and "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 148
    :cond_1
    const-string v2, "LocalTimeAlbum"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsImage:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mIsImage:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", whereClause:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mProjection:[Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mTimeEntry:Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;

    iget-wide v0, v15, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;->startMillion:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mTimeEntry:Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;

    iget-wide v0, v15, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;->endMillion:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mOrderClause:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 152
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_2

    .line 153
    const-string v2, "LocalTimeAlbum"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "query fail: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_0
    return-object v14

    .line 158
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 159
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 160
    .local v12, "id":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mItemPath:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v2, v12}, Lcom/lenovo/scg/gallery3d/data/Path;->getChild(I)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v8

    .line 161
    .local v8, "childPath":Lcom/lenovo/scg/gallery3d/data/Path;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mIsImage:Z

    invoke-static {v8, v9, v10, v2, v4}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->loadOrUpdateItem(Lcom/lenovo/scg/gallery3d/data/Path;Landroid/database/Cursor;Lcom/lenovo/scg/gallery3d/data/DataManager;Lcom/lenovo/scg/gallery3d/app/GalleryApp;Z)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v13

    .line 162
    .local v13, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 165
    .end local v8    # "childPath":Lcom/lenovo/scg/gallery3d/data/Path;
    .end local v12    # "id":I
    .end local v13    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 167
    const-string/jumbo v2, "wwf5"

    const-string v4, "LocalTime Album getMediaItem end"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMediaItemCount()I
    .locals 14

    .prologue
    .line 255
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 256
    .local v10, "start":J
    iget v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 257
    const-string/jumbo v0, "wwf5"

    const-string v1, "getMediaItemCount in sql"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mWhereClause:Ljava/lang/String;

    .line 259
    .local v3, "whereClause":Ljava/lang/String;
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mIsImage:Z

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getSizeRuleSelection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 262
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getFolderFilterSelection()Ljava/lang/String;

    move-result-object v7

    .line 263
    .local v7, "folderFilterSelection":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mTimeEntry:Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;

    iget-wide v12, v12, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;->startMillion:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x1

    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mTimeEntry:Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;

    iget-wide v12, v12, Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;->endMillion:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 270
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_2

    .line 271
    const-string v0, "LocalTimeAlbum"

    const-string/jumbo v1, "query fail"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v0, 0x0

    .line 283
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "folderFilterSelection":Ljava/lang/String;
    :goto_0
    return v0

    .line 275
    .restart local v3    # "whereClause":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "folderFilterSelection":Ljava/lang/String;
    :cond_2
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->assertTrue(Z)V

    .line 276
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mCachedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 281
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "folderFilterSelection":Ljava/lang/String;
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 283
    .local v8, "end":J
    iget v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mCachedCount:I

    goto :goto_0

    .line 278
    .end local v8    # "end":J
    .restart local v3    # "whereClause":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "folderFilterSelection":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mTimeEntry:Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->getLocalizedName(Landroid/content/res/Resources;Lcom/lenovo/scg/gallery3d/data/LocalTimeDateUtil$TimeEntry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 302
    const/16 v0, 0x405

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x1

    return v0
.end method

.method public reload()J
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mNotifier:Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mDataVersion:J

    .line 295
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mCachedCount:I

    .line 297
    :cond_0
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mDataVersion:J

    return-wide v0
.end method

.method public setMediaItemCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 250
    iput p1, p0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbum;->mCachedCount:I

    .line 251
    return-void
.end method
