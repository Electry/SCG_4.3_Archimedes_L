.class Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;
.super Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
.source "AlbumSetSlidingWindow.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$EntryUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumCoverLoader"
.end annotation


# instance fields
.field private mMediaItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

.field private final mSlotIndex:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;ILcom/lenovo/scg/gallery3d/data/MediaItem;)V
    .locals 0
    .param p2, "slotIndex"    # I
    .param p3, "item"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;-><init>()V

    .line 505
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mSlotIndex:I

    .line 506
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mMediaItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 507
    return-void
.end method


# virtual methods
.method protected onLoadComplete(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 516
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->access$300(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 517
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
    .line 511
    .local p1, "l":Lcom/lenovo/scg/gallery3d/util/FutureListener;, "Lcom/lenovo/scg/gallery3d/util/FutureListener<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->access$200(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mMediaItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->requestImage(I)Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->submit(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v0

    return-object v0
.end method

.method public updateEntry()V
    .locals 6

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 522
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->access$400(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mSlotIndex:I

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->access$400(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v5

    array-length v5, v5

    rem-int/2addr v4, v5

    aget-object v1, v3, v4

    .line 525
    .local v1, "entry":Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    new-instance v2, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    invoke-direct {v2, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;-><init>(Landroid/graphics/Bitmap;)V

    .line 526
    .local v2, "texture":Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;
    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    .line 527
    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    .line 529
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mSlotIndex:I

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 530
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->access$500(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;->addTexture(Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;)V

    .line 531
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    # --operator for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->access$606(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)I

    .line 532
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->access$600(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->requestNonactiveImages()V
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->access$700(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)V

    .line 533
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$Listener;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->access$800(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$Listener;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->access$800(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    move-result-object v3

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$Listener;->onContentChanged()V

    goto :goto_0

    .line 535
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->access$500(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;->addTexture(Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;)V

    goto :goto_0
.end method
