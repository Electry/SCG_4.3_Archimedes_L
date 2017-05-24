.class Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$ThumbnailLoader;
.super Lcom/lenovo/scg/gallery3d/weibo/ui/BitmapLoaderLite;
.source "SlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailLoader"
.end annotation


# instance fields
.field private final mItem:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

.field private final mPos:I

.field private final mSlotIndex:I

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;IILcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;)V
    .locals 1
    .param p2, "pos"    # I
    .param p3, "slotIndex"    # I
    .param p4, "item"    # Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$ThumbnailLoader;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/BitmapLoaderLite;-><init>()V

    .line 464
    iput p2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$ThumbnailLoader;->mPos:I

    .line 465
    iput p3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$ThumbnailLoader;->mSlotIndex:I

    .line 466
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$ThumbnailLoader;->mItem:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    .line 468
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mType:I
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->access$100(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 479
    :goto_0
    return-void

    .line 470
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$ThumbnailLoader;->mItem:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;->thumailurl:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$ThumbnailLoader;->mUrl:Ljava/lang/String;

    goto :goto_0

    .line 473
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$ThumbnailLoader;->mItem:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;->middleurl:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$ThumbnailLoader;->mUrl:Ljava/lang/String;

    goto :goto_0

    .line 476
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$ThumbnailLoader;->mItem:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;->orgurl:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$ThumbnailLoader;->mUrl:Ljava/lang/String;

    goto :goto_0

    .line 468
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onLoadComplete(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 494
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$ThumbnailLoader;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->access$300(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 495
    return-void
.end method

.method protected recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 484
    return-void
.end method

.method public requestImage()Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 522
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/util/ImageRequestJob;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$ThumbnailLoader;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$ThumbnailLoader;->mItem:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;->u_name:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/lenovo/scg/gallery3d/weibo/util/ImageRequestJob;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    return-object v0
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
    .line 488
    .local p1, "l":Lcom/lenovo/scg/gallery3d/util/FutureListener;, "Lcom/lenovo/scg/gallery3d/util/FutureListener<Landroid/graphics/Bitmap;>;"
    const-string v0, "SlidingWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "submitBitmapTask, url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$ThumbnailLoader;->mItem:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;->middleurl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$ThumbnailLoader;->mPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$ThumbnailLoader;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;)Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$ThumbnailLoader;->requestImage()Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->submit(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;Lcom/lenovo/scg/gallery3d/util/FutureListener;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v0

    return-object v0
.end method

.method public updateEntry()V
    .locals 6

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$ThumbnailLoader;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 499
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    const/4 v1, 0x0

    .line 503
    .local v1, "entry":Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$ThumbnailLoader;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mDatas:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->access$400(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 504
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$ThumbnailLoader;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mDatas:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->access$400(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;

    .line 505
    .local v2, "entryTmp":Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;
    iget v4, v2, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->pos:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$ThumbnailLoader;->mPos:I

    if-ne v4, v5, :cond_2

    iget v4, v2, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->index:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$ThumbnailLoader;->mSlotIndex:I

    if-ne v4, v5, :cond_2

    .line 506
    iget-object v4, v2, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->item:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    iput-object v0, v4, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;->bm:Landroid/graphics/Bitmap;

    .line 507
    move-object v1, v2

    .line 503
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 515
    .end local v2    # "entryTmp":Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$ThumbnailLoader;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$Listener;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;)Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$Listener;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$ThumbnailLoader;->this$0:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$Listener;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;)Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$Listener;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$Listener;->onContentChanged(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;)V

    goto :goto_0
.end method
