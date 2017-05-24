.class public abstract Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
.super Ljava/lang/Object;
.source "BitmapLoader.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lenovo/scg/gallery3d/util/FutureListener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final STATE_ERROR:I = 0x3

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_LOADED:I = 0x2

.field private static final STATE_RECYCLED:I = 0x4

.field private static final STATE_REQUESTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BitmapLoader"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mState:I

.field private mTask:Lcom/lenovo/scg/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->mState:I

    return-void
.end method


# virtual methods
.method public declared-synchronized cancelLoad()V
    .locals 2

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->mState:I

    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->mTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->mTask:Lcom/lenovo/scg/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/util/Future;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRecycled()Z
    .locals 2

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRequestInProgress()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 102
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onFutureDone(Lcom/lenovo/scg/gallery3d/util/Future;)V
    .locals 2
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
    .line 57
    .local p1, "future":Lcom/lenovo/scg/gallery3d/util/Future;, "Lcom/lenovo/scg/gallery3d/util/Future<Landroid/graphics/Bitmap;>;"
    monitor-enter p0

    .line 58
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->mTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 59
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 60
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 62
    invoke-static {}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getInstance()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 65
    :cond_0
    monitor-exit p0

    .line 75
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/util/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 68
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p0}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->submitBitmapTask(Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->mTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 69
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 71
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    const/4 v0, 0x3

    :goto_1
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->mState:I

    .line 73
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->onLoadComplete(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 71
    :cond_4
    const/4 v0, 0x2

    goto :goto_1
.end method

.method protected abstract onLoadComplete(Landroid/graphics/Bitmap;)V
.end method

.method public declared-synchronized recycle()V
    .locals 2

    .prologue
    .line 93
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->mState:I

    .line 95
    invoke-static {}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getInstance()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->mTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->mTask:Lcom/lenovo/scg/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/util/Future;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_0
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startLoad()V
    .locals 1

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->mState:I

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->mState:I

    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->mTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-nez v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->submitBitmapTask(Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->mTask:Lcom/lenovo/scg/gallery3d/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_0
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract submitBitmapTask(Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/util/FutureListener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method
