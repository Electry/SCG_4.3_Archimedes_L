.class public Lcom/lenovo/scg/gallery3d/data/LocalVideo;
.super Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;
.source "LocalVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/data/LocalVideo$LocalVideoRequest;
    }
.end annotation


# static fields
.field private static final INDEX_BUCKET_ID:I = 0xa

.field private static final INDEX_CAPTION:I = 0x1

.field private static final INDEX_DATA:I = 0x8

.field private static final INDEX_DATE_ADDED:I = 0x6

.field private static final INDEX_DATE_MODIFIED:I = 0x7

.field private static final INDEX_DATE_TAKEN:I = 0x5

.field private static final INDEX_DURATION:I = 0x9

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_LATITUDE:I = 0x3

.field private static final INDEX_LONGITUDE:I = 0x4

.field private static final INDEX_MIME_TYPE:I = 0x2

.field private static final INDEX_RESOLUTION:I = 0xc

.field private static final INDEX_SIZE:I = 0xb

.field static final ITEM_PATH:Lcom/lenovo/scg/gallery3d/data/Path;

.field static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "LocalVideo"


# instance fields
.field public durationInSec:I

.field private final mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const-string v0, "/local/video/item"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 70
    const/16 v0, 0xd

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

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "resolution"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;I)V
    .locals 6
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "context"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    .param p3, "id"    # I

    .prologue
    .line 85
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->nextVersionNumber()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5}, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;J)V

    .line 86
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 87
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 88
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 89
    .local v2, "uri":Landroid/net/Uri;
    sget-object v3, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    invoke-static {v1, v2, v3, p3}, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 90
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 91
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

    .line 94
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 102
    return-void

    .line 97
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot find data for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
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
    .line 79
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;J)V

    .line 80
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 81
    invoke-direct {p0, p3}, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->loadFromCursor(Landroid/database/Cursor;)V

    .line 82
    return-void
.end method

.method private loadFromCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->id:I

    .line 106
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->caption:Ljava/lang/String;

    .line 107
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->mimeType:Ljava/lang/String;

    .line 108
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->latitude:D

    .line 109
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->longitude:D

    .line 110
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->dateTakenInMs:J

    .line 111
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->dateAddedInSec:J

    .line 112
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->dateModifiedInSec:J

    .line 113
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    .line 114
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->durationInSec:I

    .line 115
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->bucketId:I

    .line 116
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->fileSize:J

    .line 117
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->parseResolution(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method private parseResolution(Ljava/lang/String;)V
    .locals 5
    .param p1, "resolution"    # Ljava/lang/String;

    .prologue
    .line 121
    if-nez p1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    const/16 v4, 0x78

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 123
    .local v1, "m":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 125
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 126
    .local v3, "w":I
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 127
    .local v0, "h":I
    iput v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->width:I

    .line 128
    iput v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->height:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    .end local v0    # "h":I
    .end local v3    # "w":I
    :catch_0
    move-exception v2

    .line 130
    .local v2, "t":Ljava/lang/Throwable;
    const-string v4, "LocalVideo"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 6

    .prologue
    .line 194
    invoke-static {}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 195
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 196
    .local v0, "baseUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 198
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/DataManager;->broadcastLocalDeletion()V

    .line 200
    return-void
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 209
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 210
    .local v0, "baseUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getDetails()Lcom/lenovo/scg/gallery3d/data/MediaDetails;
    .locals 5

    .prologue
    .line 225
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->getDetails()Lcom/lenovo/scg/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 226
    .local v0, "details":Lcom/lenovo/scg/gallery3d/data/MediaDetails;
    iget v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->durationInSec:I

    .line 227
    .local v1, "s":I
    if-lez v1, :cond_0

    .line 228
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->durationInSec:I

    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 230
    :cond_0
    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->height:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x4

    return v0
.end method

.method public getPlayUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 189
    const v0, 0x10c85

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->width:I

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
    .line 156
    new-instance v1, Lcom/lenovo/scg/gallery3d/data/LocalVideo$LocalVideoRequest;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v3

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    iget-wide v6, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->dateModifiedInSec:J

    move v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/lenovo/scg/gallery3d/data/LocalVideo$LocalVideoRequest;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryApp;Lcom/lenovo/scg/gallery3d/data/Path;ILjava/lang/String;J)V

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
    .line 184
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot regquest a large image to a local video!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rotate(I)V
    .locals 0
    .param p1, "degrees"    # I

    .prologue
    .line 205
    return-void
.end method

.method protected updateFromCursor(Landroid/database/Cursor;)Z
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 136
    new-instance v0, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;-><init>()V

    .line 137
    .local v0, "uh":Lcom/lenovo/scg/gallery3d/util/UpdateHelper;
    iget v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->id:I

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->id:I

    .line 138
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->caption:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->caption:Ljava/lang/String;

    .line 139
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->mimeType:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->mimeType:Ljava/lang/String;

    .line 140
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->latitude:D

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->latitude:D

    .line 141
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->longitude:D

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->longitude:D

    .line 142
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->dateTakenInMs:J

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->dateTakenInMs:J

    .line 143
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->dateAddedInSec:J

    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->dateAddedInSec:J

    .line 144
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->dateModifiedInSec:J

    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->dateModifiedInSec:J

    .line 145
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    .line 146
    iget v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->durationInSec:I

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->durationInSec:I

    .line 147
    iget v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->bucketId:I

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->bucketId:I

    .line 148
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->fileSize:J

    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->fileSize:J

    .line 149
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result v1

    return v1
.end method
