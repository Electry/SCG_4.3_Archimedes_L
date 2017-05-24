.class public Lcom/lenovo/scg/gallery3d/data/LocalImage;
.super Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;
.source "LocalImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/data/LocalImage$LocalLargeImageRequest;,
        Lcom/lenovo/scg/gallery3d/data/LocalImage$LocalImageRequest;
    }
.end annotation


# static fields
.field private static final INDEX_BUCKET_ID:I = 0xa

.field private static final INDEX_CAPTION:I = 0x1

.field private static final INDEX_DATA:I = 0x8

.field private static final INDEX_DATE_ADDED:I = 0x6

.field private static final INDEX_DATE_MODIFIED:I = 0x7

.field private static final INDEX_DATE_TAKEN:I = 0x5

.field private static final INDEX_HEIGHT:I = 0xd

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_LATITUDE:I = 0x3

.field private static final INDEX_LONGITUDE:I = 0x4

.field private static final INDEX_MIME_TYPE:I = 0x2

.field private static final INDEX_ORIENTATION:I = 0x9

.field private static final INDEX_SIZE:I = 0xb

.field private static final INDEX_WIDTH:I = 0xc

.field static final ITEM_PATH:Lcom/lenovo/scg/gallery3d/data/Path;

.field static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "LocalImage"

.field private static final THREAD_POOL_NAME_LOCALIMAGE_LOCALLARGEIMAGEREQUEST:Ljava/lang/String; = "pool_localimage_locallargeimagerequest"


# instance fields
.field private final mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

.field private mPanoramaMetadata:Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;

.field public rotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const-string v0, "/local/image/item"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 91
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "0"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    .line 108
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/LocalImage;->updateWidthAndHeightProjection()V

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;I)V
    .locals 6
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "application"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    .param p3, "id"    # I

    .prologue
    .line 137
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/LocalImage;->nextVersionNumber()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5}, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;J)V

    .line 128
    new-instance v3, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;-><init>(Lcom/lenovo/scg/gallery3d/data/MediaObject;)V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->mPanoramaMetadata:Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;

    .line 138
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 139
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 140
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 141
    .local v2, "uri":Landroid/net/Uri;
    sget-object v3, Lcom/lenovo/scg/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    invoke-static {v1, v2, v3, p3}, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 142
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 143
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot get cursor for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 146
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/data/LocalImage;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 155
    return-void

    .line 150
    :cond_1
    :try_start_1
    const-string v3, "LocalImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot find data for: %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "application"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 131
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/LocalImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;J)V

    .line 128
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;-><init>(Lcom/lenovo/scg/gallery3d/data/MediaObject;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->mPanoramaMetadata:Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;

    .line 132
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 133
    invoke-direct {p0, p3}, Lcom/lenovo/scg/gallery3d/data/LocalImage;->loadFromCursor(Landroid/database/Cursor;)V

    .line 134
    return-void
.end method

.method private loadFromCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->id:I

    .line 159
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->caption:Ljava/lang/String;

    .line 160
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->mimeType:Ljava/lang/String;

    .line 161
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->latitude:D

    .line 162
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->longitude:D

    .line 163
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->dateTakenInMs:J

    .line 164
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->dateAddedInSec:J

    .line 165
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->dateModifiedInSec:J

    .line 166
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    .line 167
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->rotation:I

    .line 168
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->bucketId:I

    .line 169
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->fileSize:J

    .line 170
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->width:I

    .line 171
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->height:I

    .line 172
    return-void
.end method

.method private static updateWidthAndHeightProjection()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 113
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string/jumbo v2, "width"

    aput-object v2, v0, v1

    .line 115
    sget-object v0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "height"

    aput-object v2, v0, v1

    .line 117
    :cond_0
    return-void
.end method


# virtual methods
.method public clearCachedPanoramaSupport()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->mPanoramaMetadata:Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->clearCachedValues()V

    .line 317
    return-void
.end method

.method public delete()V
    .locals 8

    .prologue
    .line 323
    :try_start_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 324
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 325
    .local v0, "baseUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget v7, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->id:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 326
    .local v2, "nDel":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/DataManager;->broadcastLocalDeletion()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v0    # "baseUri":Landroid/net/Uri;
    .end local v2    # "nDel":I
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 366
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 367
    .local v0, "baseUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getDetails()Lcom/lenovo/scg/gallery3d/data/MediaDetails;
    .locals 3

    .prologue
    .line 378
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 379
    const/4 v0, 0x0

    .line 389
    :cond_0
    :goto_0
    return-object v0

    .line 382
    :cond_1
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->getDetails()Lcom/lenovo/scg/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 383
    .local v0, "details":Lcom/lenovo/scg/gallery3d/data/MediaDetails;
    const/4 v1, 0x7

    iget v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->rotation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 384
    const-string v1, "image/jpeg"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaDetails;->extractExifInfo(Lcom/lenovo/scg/gallery3d/data/MediaDetails;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->height:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x2

    return v0
.end method

.method public getPanoramaSupport(Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->mPanoramaMetadata:Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->getPanoramaSupport(Lcom/lenovo/scg/gallery3d/app/GalleryApp;Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;)V

    .line 312
    return-void
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->rotation:I

    return v0
.end method

.method public getSupportedOperations()I
    .locals 6

    .prologue
    .line 278
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getStitchingProgressManager()Lcom/lenovo/scg/gallery3d/app/StitchingProgressManager;

    move-result-object v1

    .line 279
    .local v1, "progressManager":Lcom/lenovo/scg/gallery3d/app/StitchingProgressManager;
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/LocalImage;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/app/StitchingProgressManager;->getProgress(Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 280
    const/4 v0, 0x0

    .line 306
    :cond_0
    :goto_0
    return v0

    .line 282
    :cond_1
    const/16 v0, 0x62d

    .line 283
    .local v0, "operation":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->mimeType:Ljava/lang/String;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 284
    or-int/lit8 v0, v0, 0x40

    .line 287
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->mimeType:Ljava/lang/String;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->isRotationSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 288
    or-int/lit8 v0, v0, 0x2

    .line 291
    :cond_3
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->latitude:D

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->longitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 292
    or-int/lit8 v0, v0, 0x10

    .line 296
    :cond_4
    const-string v2, "image/gif"

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 297
    or-int/lit16 v0, v0, 0x80

    .line 301
    :cond_5
    const-string v2, "image/speech"

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    const/high16 v2, 0x400000

    or-int/2addr v0, v2

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->width:I

    return v0
.end method

.method public requestImage(I)Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;
    .locals 8
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    new-instance v1, Lcom/lenovo/scg/gallery3d/data/LocalImage$LocalImageRequest;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->mPath:Lcom/lenovo/scg/gallery3d/data/Path;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    iget-wide v6, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->dateModifiedInSec:J

    move v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/lenovo/scg/gallery3d/data/LocalImage$LocalImageRequest;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryApp;Lcom/lenovo/scg/gallery3d/data/Path;ILjava/lang/String;J)V

    return-object v1
.end method

.method public requestLargeImage()Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/LocalImage$LocalLargeImageRequest;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/data/LocalImage$LocalLargeImageRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public rotate(I)V
    .locals 11
    .param p1, "degrees"    # I

    .prologue
    .line 335
    invoke-static {}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 336
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 337
    .local v0, "baseUri":Landroid/net/Uri;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 338
    .local v5, "values":Landroid/content/ContentValues;
    iget v6, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->rotation:I

    add-int/2addr v6, p1

    rem-int/lit16 v3, v6, 0x168

    .line 339
    .local v3, "rotation":I
    if-gez v3, :cond_0

    add-int/lit16 v3, v3, 0x168

    .line 341
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->mimeType:Ljava/lang/String;

    const-string v7, "image/jpeg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 342
    new-instance v2, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    invoke-direct {v2}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;-><init>()V

    .line 343
    .local v2, "exifInterface":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    sget v6, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    move-result-object v4

    .line 344
    .local v4, "tag":Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    if-eqz v4, :cond_2

    .line 345
    invoke-virtual {v2, v4}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->setTag(Lcom/lenovo/scg/gallery3d/exif/ExifTag;)Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    .line 347
    :try_start_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->forceRewriteExif(Ljava/lang/String;)V

    .line 348
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->fileSize:J

    .line 349
    const-string v6, "_size"

    iget-wide v8, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->fileSize:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 360
    .end local v2    # "exifInterface":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    .end local v4    # "tag":Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    :cond_1
    :goto_0
    const-string/jumbo v6, "orientation"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 361
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v6}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget v10, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->id:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v0, v5, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 362
    return-void

    .line 350
    .restart local v2    # "exifInterface":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    .restart local v4    # "tag":Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    :catch_0
    move-exception v1

    .line 351
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v6, "LocalImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot find file to set exif: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 352
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 353
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "LocalImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot set exif data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 356
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    const-string v6, "LocalImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not build tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 419
    iput p1, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->height:I

    .line 420
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "sPath"    # Ljava/lang/String;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    .line 425
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 414
    iput p1, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->width:I

    .line 415
    return-void
.end method

.method protected updateFromCursor(Landroid/database/Cursor;)Z
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 176
    new-instance v0, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;-><init>()V

    .line 177
    .local v0, "uh":Lcom/lenovo/scg/gallery3d/util/UpdateHelper;
    iget v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->id:I

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->id:I

    .line 178
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->caption:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->caption:Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->mimeType:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->mimeType:Ljava/lang/String;

    .line 180
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->latitude:D

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->latitude:D

    .line 181
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->longitude:D

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->longitude:D

    .line 182
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->dateTakenInMs:J

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->dateTakenInMs:J

    .line 183
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->dateAddedInSec:J

    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->dateAddedInSec:J

    .line 184
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->dateModifiedInSec:J

    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->dateModifiedInSec:J

    .line 185
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    .line 186
    iget v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->rotation:I

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->rotation:I

    .line 187
    iget v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->bucketId:I

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->bucketId:I

    .line 188
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->fileSize:J

    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->fileSize:J

    .line 189
    iget v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->width:I

    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->width:I

    .line 190
    iget v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->height:I

    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalImage;->height:I

    .line 191
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result v1

    return v1
.end method
