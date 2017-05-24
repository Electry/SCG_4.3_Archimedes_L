.class Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;
.super Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
.source "LocalTimeAlbumSetSlidingWindow.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$EntryUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumLabelLoader"
.end annotation


# instance fields
.field private final mIsHeadLabel:Z

.field private final mSlotIndex:I

.field private final mSourceType:I

.field private final mTitle:Ljava/lang/String;

.field private final mTotalCount:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;ILjava/lang/String;IIZ)V
    .locals 0
    .param p2, "slotIndex"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "totalCount"    # I
    .param p5, "sourceType"    # I
    .param p6, "isHeadLabel"    # Z

    .prologue
    .line 665
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;-><init>()V

    .line 666
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->mSlotIndex:I

    .line 667
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->mTitle:Ljava/lang/String;

    .line 668
    iput p4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->mTotalCount:I

    .line 669
    iput p5, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->mSourceType:I

    .line 670
    iput-boolean p6, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->mIsHeadLabel:Z

    .line 671
    return-void
.end method


# virtual methods
.method protected onLoadComplete(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 689
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->access$400(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 690
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
    .line 675
    .local p1, "l":Lcom/lenovo/scg/gallery3d/util/FutureListener;, "Lcom/lenovo/scg/gallery3d/util/FutureListener<Landroid/graphics/Bitmap;>;"
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->mIsHeadLabel:Z

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->access$300(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mLabelMaker:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->access$1000(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->mTitle:Ljava/lang/String;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->mTotalCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->mSourceType:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->requestLabel(Ljava/lang/String;Ljava/lang/String;I)Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->submit(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v0

    .line 678
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->access$300(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mTailLabelMaker:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->mTitle:Ljava/lang/String;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->mTotalCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->mSourceType:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->requestLabel(Ljava/lang/String;Ljava/lang/String;I)Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->submit(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v0

    goto :goto_0
.end method

.method public updateEntry()V
    .locals 6

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 695
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->access$500(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;)[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->mSlotIndex:I

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->access$500(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;)[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v5

    array-length v5, v5

    rem-int/2addr v4, v5

    aget-object v1, v3, v4

    .line 698
    .local v1, "entry":Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;
    new-instance v2, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-direct {v2, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    .line 699
    .local v2, "texture":Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->setOpaque(Z)V

    .line 700
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->mIsHeadLabel:Z

    if-eqz v3, :cond_3

    .line 701
    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    .line 706
    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->mSlotIndex:I

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 707
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mTextureUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->access$600(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->addFgTexture(Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;)V

    .line 708
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    # --operator for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveRequestCount:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->access$706(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;)I

    .line 709
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveRequestCount:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->access$700(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->requestNonactiveImages()V
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->access$800(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;)V

    .line 710
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$Listener;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->access$900(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$Listener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$Listener;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->access$900(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$Listener;

    move-result-object v3

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$Listener;->onContentChanged()V

    goto :goto_0

    .line 703
    :cond_3
    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->tailLabelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    goto :goto_1

    .line 712
    :cond_4
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mTextureUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->access$600(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->addBgTexture(Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;)V

    goto :goto_0
.end method
