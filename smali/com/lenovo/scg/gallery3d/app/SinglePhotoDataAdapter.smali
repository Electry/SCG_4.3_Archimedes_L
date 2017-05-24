.class public Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;
.super Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;
.source "SinglePhotoDataAdapter.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_IMAGE:I = 0x1

.field private static final SIZE_BACKUP:I = 0x400

.field private static final TAG:Ljava/lang/String; = "SinglePhotoDataAdapter"


# instance fields
.field private mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

.field private mBitmapScreenNail:Lcom/lenovo/scg/gallery3d/ui/BitmapScreenNail;

.field private mHandler:Landroid/os/Handler;

.field private mHasFullImage:Z

.field private mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

.field private mLargeListener:Lcom/lenovo/scg/gallery3d/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/util/FutureListener",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingState:I

.field private mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

.field private mTask:Lcom/lenovo/scg/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;

.field private mThumbListener:Lcom/lenovo/scg/gallery3d/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/util/FutureListener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/PhotoView;Lcom/lenovo/scg/gallery3d/data/MediaItem;)V
    .locals 2
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p2, "view"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .param p3, "item"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/TileImageViewAdapter;-><init>()V

    .line 64
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    .line 105
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$2;-><init>(Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mLargeListener:Lcom/lenovo/scg/gallery3d/util/FutureListener;

    .line 125
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$3;-><init>(Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mThumbListener:Lcom/lenovo/scg/gallery3d/util/FutureListener;

    .line 71
    invoke-static {p3}, Lcom/lenovo/scg/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 72
    invoke-virtual {p3}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    .line 73
    invoke-static {p2}, Lcom/lenovo/scg/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .line 75
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 77
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$1;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$1;-><init>(Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    .line 90
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    .line 91
    return-void

    :cond_0
    move v0, v1

    .line 72
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->onDecodeLargeComplete(Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;Lcom/lenovo/scg/gallery3d/util/Future;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/util/Future;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->onDecodeThumbComplete(Lcom/lenovo/scg/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private onDecodeLargeComplete(Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;)V
    .locals 4
    .param p1, "bundle"    # Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;

    .prologue
    const/4 v3, 0x0

    .line 145
    iget-object v1, p1, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    if-nez v1, :cond_0

    .line 146
    const/4 v1, 0x2

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    .line 147
    const-string v1, "SinglePhotoDataAdapter"

    const-string v2, "fail to decode large since the decoder is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0f064f

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 159
    :goto_0
    return-void

    .line 153
    :cond_0
    :try_start_0
    iget-object v1, p1, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->backupImage:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v2

    iget-object v3, p1, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v3}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->setScreenNail(Landroid/graphics/Bitmap;II)V

    .line 154
    iget-object v1, p1, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V

    .line 155
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->notifyImageChange(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "SinglePhotoDataAdapter"

    const-string v2, "fail to decode large"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onDecodeThumbComplete(Lcom/lenovo/scg/gallery3d/util/Future;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "future":Lcom/lenovo/scg/gallery3d/util/Future;, "Lcom/lenovo/scg/gallery3d/util/Future<Landroid/graphics/Bitmap;>;"
    :try_start_0
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 164
    .local v0, "backup":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 165
    const/4 v2, 0x2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    .line 166
    const-string v2, "SinglePhotoDataAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backup bm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0f064f

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 179
    .end local v0    # "backup":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 172
    .restart local v0    # "backup":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v2, 0x1

    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    .line 174
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->setScreenNail(Landroid/graphics/Bitmap;II)V

    .line 175
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->notifyImageChange(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    .end local v0    # "backup":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 177
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "SinglePhotoDataAdapter"

    const-string v3, "fail to decode thumb"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setScreenNail(Landroid/graphics/Bitmap;II)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 139
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/BitmapScreenNail;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/lenovo/scg/gallery3d/ui/BitmapScreenNail;

    .line 140
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/lenovo/scg/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {p0, v0, p2, p3}, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->setScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;II)V

    .line 141
    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public getImageRotation(I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 235
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageSize(ILcom/lenovo/scg/gallery3d/ui/PhotoView$Size;)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "size"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;

    .prologue
    const/4 v0, 0x0

    .line 224
    if-nez p1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getWidth()I

    move-result v0

    iput v0, p2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;->width:I

    .line 226
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getHeight()I

    move-result v0

    iput v0, p2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;->height:I

    .line 231
    :goto_0
    return-void

    .line 228
    :cond_0
    iput v0, p2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;->width:I

    .line 229
    iput v0, p2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;->height:I

    goto :goto_0
.end method

.method public getLoadingState(I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 316
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    return v0
.end method

.method public getMediaItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 291
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScreenNail(I)Lcom/lenovo/scg/gallery3d/ui/ScreenNail;
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 240
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->getScreenNail()Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCamera(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public isDeletable(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 286
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public isGif(I)Z
    .locals 3
    .param p1, "offset"    # I

    .prologue
    const/4 v0, 0x0

    .line 271
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x80

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isHaveCamera()Z
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public isPanorama(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public isSpeech(I)Z
    .locals 3
    .param p1, "offset"    # I

    .prologue
    const/high16 v2, 0x400000

    const/4 v0, 0x0

    .line 279
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v1

    and-int/2addr v1, v2

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isStaticCamera(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public isVideo(I)Z
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveTo(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 219
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 205
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 206
    .local v0, "task":Lcom/lenovo/scg/gallery3d/util/Future;, "Lcom/lenovo/scg/gallery3d/util/Future<*>;"
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/util/Future;->cancel()V

    .line 207
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/util/Future;->waitDone()V

    .line 208
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 209
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/lenovo/scg/gallery3d/ui/BitmapScreenNail;

    if-eqz v1, :cond_1

    .line 212
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/lenovo/scg/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/BitmapScreenNail;->recycle()V

    .line 213
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/lenovo/scg/gallery3d/ui/BitmapScreenNail;

    .line 215
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-nez v0, :cond_0

    .line 184
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->requestLargeImage()Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mLargeListener:Lcom/lenovo/scg/gallery3d/util/FutureListener;

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->submit(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->requestImage(I)Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mThumbListener:Lcom/lenovo/scg/gallery3d/util/FutureListener;

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->submit(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/lenovo/scg/gallery3d/util/Future;

    goto :goto_0
.end method

.method public setCurrentPhoto(Lcom/lenovo/scg/gallery3d/data/Path;I)V
    .locals 0
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "indexHint"    # I

    .prologue
    .line 302
    return-void
.end method

.method public setFocusHintDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 307
    return-void
.end method

.method public setFocusHintPath(Lcom/lenovo/scg/gallery3d/data/Path;)V
    .locals 0
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 312
    return-void
.end method

.method public setNeedFullImage(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 246
    return-void
.end method
