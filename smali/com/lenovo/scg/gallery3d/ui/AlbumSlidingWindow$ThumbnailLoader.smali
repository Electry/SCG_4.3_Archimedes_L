.class Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;
.super Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
.source "AlbumSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailLoader"
.end annotation


# instance fields
.field private final mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

.field private final mSlotIndex:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;ILcom/lenovo/scg/gallery3d/data/MediaItem;)V
    .locals 0
    .param p2, "slotIndex"    # I
    .param p3, "item"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;-><init>()V

    .line 341
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mSlotIndex:I

    .line 342
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 343
    return-void
.end method


# virtual methods
.method protected onLoadComplete(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->access$300(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;)Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 353
    return-void
.end method

.method protected submitBitmapTask(Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;
    .locals 3
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

    .prologue
    .line 347
    .local p1, "l":Lcom/lenovo/scg/gallery3d/util/FutureListener;, "Lcom/lenovo/scg/gallery3d/util/FutureListener<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/JobLimiter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->access$200(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;)Lcom/lenovo/scg/gallery3d/util/JobLimiter;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->requestImage(I)Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/lenovo/scg/gallery3d/util/JobLimiter;->submit(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v0

    return-object v0
.end method

.method public updateEntry()V
    .locals 5

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 357
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->access$400(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;)[Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mSlotIndex:I

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->access$400(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;)[Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v4

    array-length v4, v4

    rem-int/2addr v3, v4

    aget-object v1, v2, v3

    .line 359
    .local v1, "entry":Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    new-instance v2, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    invoke-direct {v2, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    .line 360
    iget-object v2, v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    .line 362
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->mSlotIndex:I

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 363
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mTileUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->access$500(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;)Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;

    move-result-object v2

    iget-object v3, v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;->addTexture(Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;)V

    .line 364
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    # --operator for: Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->access$606(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;)I

    .line 365
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->access$600(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->requestNonactiveImages()V
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->access$700(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;)V

    .line 366
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$Listener;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->access$800(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;)Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$Listener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$Listener;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->access$800(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;)Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$Listener;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$Listener;->onContentChanged()V

    goto :goto_0

    .line 368
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mTileUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->access$500(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;)Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;

    move-result-object v2

    iget-object v3, v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;->addTexture(Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;)V

    goto :goto_0
.end method
