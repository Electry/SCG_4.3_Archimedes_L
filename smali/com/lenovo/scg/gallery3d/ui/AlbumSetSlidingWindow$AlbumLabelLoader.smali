.class Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;
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
    name = "AlbumLabelLoader"
.end annotation


# instance fields
.field private final mSlotIndex:I

.field private final mSourceType:I

.field private final mTitle:Ljava/lang/String;

.field private final mTotalCount:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;ILjava/lang/String;II)V
    .locals 0
    .param p2, "slotIndex"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "totalCount"    # I
    .param p5, "sourceType"    # I

    .prologue
    .line 566
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;-><init>()V

    .line 567
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mSlotIndex:I

    .line 568
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mTitle:Ljava/lang/String;

    .line 569
    iput p4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mTotalCount:I

    .line 570
    iput p5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mSourceType:I

    .line 571
    return-void
.end method


# virtual methods
.method protected onLoadComplete(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 580
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->access$300(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 581
    return-void
.end method

.method protected submitBitmapTask(Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;
    .locals 5
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
    .line 575
    .local p1, "l":Lcom/lenovo/scg/gallery3d/util/FutureListener;, "Lcom/lenovo/scg/gallery3d/util/FutureListener<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->access$200(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->access$900(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mTitle:Ljava/lang/String;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mTotalCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mSourceType:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->requestLabel(Ljava/lang/String;Ljava/lang/String;I)Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->submit(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v0

    return-object v0
.end method

.method public updateEntry()V
    .locals 6

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 586
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->access$400(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mSlotIndex:I

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->access$400(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v5

    array-length v5, v5

    rem-int/2addr v4, v5

    aget-object v1, v3, v4

    .line 589
    .local v1, "entry":Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    new-instance v2, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-direct {v2, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    .line 590
    .local v2, "texture":Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->setOpaque(Z)V

    .line 591
    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    .line 593
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->mSlotIndex:I

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 594
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mLabelUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->access$1000(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->addFgTexture(Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;)V

    .line 595
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    # --operator for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->access$606(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)I

    .line 596
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->access$600(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->requestNonactiveImages()V
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->access$700(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)V

    .line 597
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$Listener;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->access$800(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$Listener;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->access$800(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    move-result-object v3

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$Listener;->onContentChanged()V

    goto :goto_0

    .line 599
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mLabelUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->access$1000(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->addBgTexture(Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;)V

    goto :goto_0
.end method
