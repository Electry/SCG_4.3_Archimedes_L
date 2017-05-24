.class public abstract Lcom/lenovo/scg/gallery3d/data/MediaItem;
.super Lcom/lenovo/scg/gallery3d/data/MediaObject;
.source "MediaItem.java"


# static fields
.field private static final BYTESBUFFER_SIZE:I = 0x64000

.field private static final BYTESBUFFE_POOL_SIZE:I = 0x4

.field public static final CACHED_IMAGE_QUALITY:I = 0x5f

.field public static final IMAGE_ERROR:I = -0x1

.field public static final IMAGE_READY:I = 0x0

.field public static final IMAGE_WAIT:I = 0x1

.field public static final INVALID_LATLNG:D = 0.0

.field public static final MICROTHUMBNAIL_TARGET_SIZE:I = 0xc8

.field public static final MIDDLETHUMBNAIL_TARGET_SIZE:I = 0xc8

.field public static final MIME_TYPE_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static final THUMBNAIL_TARGET_SIZE:I = 0x280

.field public static final TYPE_MICROTHUMBNAIL:I = 0x2

.field public static final TYPE_MIDDLETHUMBNAIL:I = 0x3

.field public static final TYPE_THUMBNAIL:I = 0x1

.field public static final USE_TYPE_MIDDLETHUMBNAIL:Z = true

.field private static final sMicroThumbBufferPool:Lcom/lenovo/scg/gallery3d/data/BytesBufferPool;

.field private static sMicrothumbnailTargetSize:I

.field private static sThumbnailTargetSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    const/16 v0, 0xc8

    sput v0, Lcom/lenovo/scg/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    .line 86
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool;

    const/4 v1, 0x4

    const v2, 0x64000

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool;-><init>(II)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/MediaItem;->sMicroThumbBufferPool:Lcom/lenovo/scg/gallery3d/data/BytesBufferPool;

    .line 88
    const/16 v0, 0x280

    sput v0, Lcom/lenovo/scg/gallery3d/data/MediaItem;->sThumbnailTargetSize:I

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/Path;J)V
    .locals 0
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "version"    # J

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/data/MediaObject;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;J)V

    .line 99
    return-void
.end method

.method public static getBytesBufferPool()Lcom/lenovo/scg/gallery3d/data/BytesBufferPool;
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/lenovo/scg/gallery3d/data/MediaItem;->sMicroThumbBufferPool:Lcom/lenovo/scg/gallery3d/data/BytesBufferPool;

    return-object v0
.end method

.method public static getTargetSize(I)I
    .locals 2
    .param p0, "type"    # I

    .prologue
    const/16 v0, 0xc8

    .line 155
    packed-switch p0, :pswitch_data_0

    .line 173
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "should only request thumb/microthumb from cache"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :pswitch_0
    const/16 v0, 0x280

    .line 170
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 162
    :pswitch_2
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getMicrothumbnailTargetSize()I

    move-result v1

    if-lez v1, :cond_0

    .line 163
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getMicrothumbnailTargetSize()I

    move-result v0

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static setThumbnailSizes(II)V
    .locals 1
    .param p0, "size"    # I
    .param p1, "microSize"    # I

    .prologue
    .line 196
    sput p0, Lcom/lenovo/scg/gallery3d/data/MediaItem;->sThumbnailTargetSize:I

    .line 197
    sget v0, Lcom/lenovo/scg/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    if-eq v0, p1, :cond_0

    .line 198
    sput p1, Lcom/lenovo/scg/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    .line 200
    :cond_0
    return-void
.end method


# virtual methods
.method public getDateInMs()J
    .locals 2

    .prologue
    .line 102
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFaces()[Lcom/lenovo/scg/gallery3d/data/Face;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const-string v0, ""

    return-object v0
.end method

.method public getFullImageRotation()I
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getRotation()I

    move-result v0

    return v0
.end method

.method public abstract getHeight()I
.end method

.method public getLatLong([D)V
    .locals 4
    .param p1, "latLong"    # [D

    .prologue
    const-wide/16 v2, 0x0

    .line 110
    const/4 v0, 0x0

    aput-wide v2, p1, v0

    .line 111
    const/4 v0, 0x1

    aput-wide v2, p1, v0

    .line 112
    return-void
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public getScreenNail()Lcom/lenovo/scg/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 133
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTags()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getWidth()I
.end method

.method public abstract requestImage(I)Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requestLargeImage()Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end method
