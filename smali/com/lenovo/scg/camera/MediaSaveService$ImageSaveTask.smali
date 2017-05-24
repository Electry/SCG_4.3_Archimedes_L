.class Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;
.super Landroid/os/AsyncTask;
.source "MediaSaveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/MediaSaveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageSaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private data:[B

.field private date:J

.field private exif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

.field private height:I

.field private listener:Lcom/lenovo/scg/camera/MediaSaveService$OnMediaSavedListener;

.field private loc:Landroid/location/Location;

.field private mPendingThumbnail:Lcom/lenovo/scg/camera/Thumbnail;

.field private orientation:I

.field private resolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/lenovo/scg/camera/MediaSaveService;

.field private thumbnailwidth:I

.field private title:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/MediaSaveService;[BLjava/lang/String;JLandroid/location/Location;IIILcom/lenovo/scg/gallery3d/exif/ExifInterface;Landroid/content/ContentResolver;Lcom/lenovo/scg/camera/MediaSaveService$OnMediaSavedListener;I)V
    .locals 0
    .param p2, "data"    # [B
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "date"    # J
    .param p6, "loc"    # Landroid/location/Location;
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "orientation"    # I
    .param p10, "exif"    # Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    .param p11, "resolver"    # Landroid/content/ContentResolver;
    .param p12, "listener"    # Lcom/lenovo/scg/camera/MediaSaveService$OnMediaSavedListener;
    .param p13, "thumbnailwidth"    # I

    .prologue
    .line 167
    iput-object p1, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->this$0:Lcom/lenovo/scg/camera/MediaSaveService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 168
    iput-object p2, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->data:[B

    .line 169
    iput-object p3, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->title:Ljava/lang/String;

    .line 170
    iput-wide p4, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->date:J

    .line 171
    iput-object p6, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->loc:Landroid/location/Location;

    .line 172
    iput p7, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->width:I

    .line 173
    iput p8, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->height:I

    .line 174
    iput p9, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->orientation:I

    .line 175
    iput-object p10, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->exif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    .line 176
    iput-object p11, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->resolver:Landroid/content/ContentResolver;

    .line 177
    iput-object p12, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->listener:Lcom/lenovo/scg/camera/MediaSaveService$OnMediaSavedListener;

    .line 179
    iput p13, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->thumbnailwidth:I

    .line 180
    return-void
.end method

.method private createThumbnail(Landroid/net/Uri;)Lcom/lenovo/scg/camera/Thumbnail;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 184
    const/4 v2, 0x0

    .line 188
    .local v2, "thumbnail":Lcom/lenovo/scg/camera/Thumbnail;
    iget v3, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->width:I

    int-to-double v4, v3

    iget v3, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->thumbnailwidth:I

    int-to-double v6, v3

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 189
    .local v1, "ratio":I
    const/4 v0, 0x0

    .line 191
    .local v0, "inSampleSize":I
    iget v3, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->height:I

    const/16 v4, 0x72c

    if-ne v3, v4, :cond_0

    .line 192
    const/4 v0, 0x4

    .line 196
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->data:[B

    iget v4, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->orientation:I

    iget-object v5, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->this$0:Lcom/lenovo/scg/camera/MediaSaveService;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/MediaSaveService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/scg/camera/MaskBitmapHolder;->getInstance(Landroid/content/res/Resources;)Lcom/lenovo/scg/camera/MaskBitmapHolder;

    move-result-object v5

    invoke-static {v3, v4, v0, p1, v5}, Lcom/lenovo/scg/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;Lcom/lenovo/scg/camera/MaskBitmapHolder;)Lcom/lenovo/scg/camera/Thumbnail;

    move-result-object v2

    .line 198
    return-object v2

    .line 194
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 13
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    const/4 v12, 0x0

    .line 211
    invoke-direct {p0, v12}, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->createThumbnail(Landroid/net/Uri;)Lcom/lenovo/scg/camera/Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->mPendingThumbnail:Lcom/lenovo/scg/camera/Thumbnail;

    .line 214
    iget-object v0, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->exif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    if-nez v0, :cond_0

    .line 215
    # getter for: Lcom/lenovo/scg/camera/MediaSaveService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/camera/MediaSaveService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "doInBackground, exif = null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->mPendingThumbnail:Lcom/lenovo/scg/camera/Thumbnail;

    if-nez v0, :cond_1

    .line 218
    # getter for: Lcom/lenovo/scg/camera/MediaSaveService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/camera/MediaSaveService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "doInBackground, mPendingThumbnail = null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->mPendingThumbnail:Lcom/lenovo/scg/camera/Thumbnail;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->exif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->hasThumbnail()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->mPendingThumbnail:Lcom/lenovo/scg/camera/Thumbnail;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/Thumbnail;->getZoomBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 223
    # getter for: Lcom/lenovo/scg/camera/MediaSaveService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/camera/MediaSaveService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exif, not hasThumbnail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->exif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    iget-object v1, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->mPendingThumbnail:Lcom/lenovo/scg/camera/Thumbnail;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/Thumbnail;->getZoomBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->setCompressedThumbnail(Landroid/graphics/Bitmap;)Z

    .line 226
    iget-object v0, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->exif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    sget v1, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_COMPRESSION:I

    const/4 v2, 0x1

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->buildTag(IILjava/lang/Object;)Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    move-result-object v10

    .line 227
    .local v10, "compressionTag":Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    iget-object v0, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->exif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    invoke-virtual {v0, v10}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->setTag(Lcom/lenovo/scg/gallery3d/exif/ExifTag;)Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    .line 228
    iget-object v0, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->mPendingThumbnail:Lcom/lenovo/scg/camera/Thumbnail;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/Thumbnail;->getZoomBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 233
    .end local v10    # "compressionTag":Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    :cond_2
    const-string/jumbo v0, "will call Storage.addImage"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->resolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->title:Ljava/lang/String;

    iget-wide v2, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->date:J

    iget-object v4, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->loc:Landroid/location/Location;

    iget v5, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->orientation:I

    iget-object v6, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->exif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    iget-object v7, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->data:[B

    iget v8, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->width:I

    iget v9, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->height:I

    invoke-static/range {v0 .. v9}, Lcom/lenovo/scg/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILcom/lenovo/scg/gallery3d/exif/ExifInterface;[BII)Landroid/net/Uri;

    move-result-object v11

    .line 236
    .local v11, "uri":Landroid/net/Uri;
    if-nez v11, :cond_4

    .line 237
    const-string/jumbo v0, "uri = null, will set mPendingThumbnail = null"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 238
    iput-object v12, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->mPendingThumbnail:Lcom/lenovo/scg/camera/Thumbnail;

    .line 242
    :cond_3
    :goto_0
    return-object v11

    .line 239
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->mPendingThumbnail:Lcom/lenovo/scg/camera/Thumbnail;

    if-eqz v0, :cond_3

    .line 240
    iget-object v0, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->mPendingThumbnail:Lcom/lenovo/scg/camera/Thumbnail;

    invoke-virtual {v0, v11}, Lcom/lenovo/scg/camera/Thumbnail;->setUri(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 138
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->listener:Lcom/lenovo/scg/camera/MediaSaveService$OnMediaSavedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->listener:Lcom/lenovo/scg/camera/MediaSaveService$OnMediaSavedListener;

    iget-object v1, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->mPendingThumbnail:Lcom/lenovo/scg/camera/Thumbnail;

    invoke-interface {v0, p1, v1}, Lcom/lenovo/scg/camera/MediaSaveService$OnMediaSavedListener;->onMediaSaved(Landroid/net/Uri;Lcom/lenovo/scg/camera/Thumbnail;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->this$0:Lcom/lenovo/scg/camera/MediaSaveService;

    # operator-- for: Lcom/lenovo/scg/camera/MediaSaveService;->mTaskNumber:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/MediaSaveService;->access$110(Lcom/lenovo/scg/camera/MediaSaveService;)I

    .line 252
    iget-object v0, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->this$0:Lcom/lenovo/scg/camera/MediaSaveService;

    # getter for: Lcom/lenovo/scg/camera/MediaSaveService;->mTaskNumber:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/MediaSaveService;->access$100(Lcom/lenovo/scg/camera/MediaSaveService;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->this$0:Lcom/lenovo/scg/camera/MediaSaveService;

    # invokes: Lcom/lenovo/scg/camera/MediaSaveService;->onQueueAvailable()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/MediaSaveService;->access$200(Lcom/lenovo/scg/camera/MediaSaveService;)V

    .line 253
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 138
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/MediaSaveService$ImageSaveTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method
