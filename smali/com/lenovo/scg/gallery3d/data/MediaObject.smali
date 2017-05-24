.class public abstract Lcom/lenovo/scg/gallery3d/data/MediaObject;
.super Ljava/lang/Object;
.source "MediaObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;
    }
.end annotation


# static fields
.field public static final CACHE_FLAG_FULL:I = 0x2

.field public static final CACHE_FLAG_NO:I = 0x0

.field public static final CACHE_FLAG_SCREENNAIL:I = 0x1

.field public static final CACHE_STATUS_CACHED_FULL:I = 0x3

.field public static final CACHE_STATUS_CACHED_SCREENNAIL:I = 0x2

.field public static final CACHE_STATUS_CACHING:I = 0x1

.field public static final CACHE_STATUS_NOT_CACHED:I = 0x0

.field public static final INVALID_DATA_VERSION:J = -0x1L

.field public static final MEDIA_TYPE_ALL:I = 0x6

.field public static final MEDIA_TYPE_ALL_STRING:Ljava/lang/String; = "all"

.field public static final MEDIA_TYPE_FAVORITE_PHOTO:I = 0x7d1

.field public static final MEDIA_TYPE_GIF:I = 0x8

.field public static final MEDIA_TYPE_IMAGE:I = 0x2

.field public static final MEDIA_TYPE_IMAGE_STRING:Ljava/lang/String; = "image"

.field public static final MEDIA_TYPE_TIME:I = 0x5

.field public static final MEDIA_TYPE_TIME_STRING:Ljava/lang/String; = "time"

.field public static final MEDIA_TYPE_UNKNOWN:I = 0x1

.field public static final MEDIA_TYPE_VIDEO:I = 0x4

.field public static final MEDIA_TYPE_VIDEO_STRING:Ljava/lang/String; = "video"

.field public static final SUPPORT_ACTION:I = 0x4000

.field public static final SUPPORT_ALL:I = -0x1

.field public static final SUPPORT_BACK:I = 0x2000

.field public static final SUPPORT_CACHE:I = 0x100

.field public static final SUPPORT_CAMERA_SHORTCUT:I = 0x8000

.field public static final SUPPORT_CROP:I = 0x8

.field public static final SUPPORT_DELETE:I = 0x1

.field public static final SUPPORT_EDIT:I = 0x200

.field public static final SUPPORT_FULL_IMAGE:I = 0x40

.field public static final SUPPORT_IMPORT:I = 0x800

.field public static final SUPPORT_INFO:I = 0x400

.field public static final SUPPORT_MUTE:I = 0x10000

.field public static final SUPPORT_PLAY:I = 0x80

.field public static final SUPPORT_ROTATE:I = 0x2

.field public static final SUPPORT_SETAS:I = 0x20

.field public static final SUPPORT_SHARE:I = 0x4

.field public static final SUPPORT_SHOW_ON_MAP:I = 0x10

.field public static final SUPPORT_SPEECH:I = 0x400000

.field public static final SUPPORT_TRIM:I = 0x800

.field public static final SUPPORT_UNLOCK:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "MediaObject"

.field private static sVersionSerial:J


# instance fields
.field protected mDataVersion:J

.field public mIsFavoritePhoto:I

.field protected final mPath:Lcom/lenovo/scg/gallery3d/data/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 115
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/lenovo/scg/gallery3d/data/MediaObject;->sVersionSerial:J

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/Path;J)V
    .locals 2
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "version"    # J

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/data/MediaObject;->mIsFavoritePhoto:I

    .line 134
    invoke-virtual {p1, p0}, Lcom/lenovo/scg/gallery3d/data/Path;->setObject(Lcom/lenovo/scg/gallery3d/data/MediaObject;)V

    .line 135
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/MediaObject;->mPath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 136
    iput-wide p2, p0, Lcom/lenovo/scg/gallery3d/data/MediaObject;->mDataVersion:J

    .line 137
    return-void
.end method

.method public static getTypeFromString(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 207
    const-string v0, "all"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    .line 211
    :goto_0
    return v0

    .line 208
    :cond_0
    const-string v0, "image"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 209
    :cond_1
    const-string/jumbo v0, "video"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 211
    :cond_2
    const-string/jumbo v0, "time"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    goto :goto_0

    .line 213
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTypeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 217
    packed-switch p0, :pswitch_data_0

    .line 225
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 219
    :pswitch_1
    const-string v0, "image"

    .line 223
    :goto_0
    return-object v0

    .line 221
    :pswitch_2
    const-string/jumbo v0, "video"

    goto :goto_0

    .line 223
    :pswitch_3
    const-string v0, "all"

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static declared-synchronized nextVersionNumber()J
    .locals 6

    .prologue
    .line 203
    const-class v1, Lcom/lenovo/scg/gallery3d/data/MediaObject;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/lenovo/scg/gallery3d/data/MediaObject;->sVersionSerial:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/lenovo/scg/gallery3d/data/MediaObject;->sVersionSerial:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public cache(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 199
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clearCachedPanoramaSupport()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public delete()V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCacheFlag()I
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public getCacheSize()J
    .locals 1

    .prologue
    .line 195
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCacheStatus()I
    .locals 1

    .prologue
    .line 191
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "className":Ljava/lang/String;
    const-string v1, "MediaObject"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "should implement getContentUri."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v1, "MediaObject"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The object was created from path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/MediaObject;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public getDataVersion()J
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v0
.end method

.method public getDetails()Lcom/lenovo/scg/gallery3d/data/MediaDetails;
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/MediaDetails;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/data/MediaDetails;-><init>()V

    .line 179
    .local v0, "details":Lcom/lenovo/scg/gallery3d/data/MediaDetails;
    return-object v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method public getPanoramaSupport(Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-interface {p1, p0, v0, v0}, Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;->panoramaInfoAvailable(Lcom/lenovo/scg/gallery3d/data/MediaObject;ZZ)V

    .line 149
    return-void
.end method

.method public getPath()Lcom/lenovo/scg/gallery3d/data/Path;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/MediaObject;->mPath:Lcom/lenovo/scg/gallery3d/data/Path;

    return-object v0
.end method

.method public getPlayUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 170
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public rotate(I)V
    .locals 1
    .param p1, "degrees"    # I

    .prologue
    .line 159
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
