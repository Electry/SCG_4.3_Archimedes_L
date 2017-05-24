.class public Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;
.super Ljava/lang/Object;
.source "SlidingWindow.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboDataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$ThumbnailLoader;,
        Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;,
        Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;,
        Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$Listener;
    }
.end annotation


# static fields
.field public static final CACHE_POS_SIZE:I = 0x9

.field private static final MSG_UPDATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SlidingWindow"

.field private static final TYPE_MIDDLE:I = 0x1

.field private static final TYPE_ORG:I = 0x2

.field private static final TYPE_THUMAIL:I


# instance fields
.field private mActivePosEnd:I

.field private mActivePosStart:I

.field private mActivity:Landroid/content/Context;

.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mContentPosEnd:I

.field private mContentPosStart:I

.field private mDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$Listener;

.field private mSize:I

.field private mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/BaseAdapter;I)V
    .locals 3
    .param p1, "wb"    # Landroid/app/Activity;
    .param p2, "adapter"    # Landroid/widget/BaseAdapter;
    .param p3, "cacheSize"    # I

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mType:I

    .line 298
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mHandler:Landroid/os/Handler;

    .line 84
    const-string v0, "SlidingWindow"

    const-string v1, "SlidingWindow create"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mActivity:Landroid/content/Context;

    .line 87
    const-string v0, "SlidingWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SlidingWindow, mActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mActivity:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    instance-of v0, p1, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 89
    check-cast v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setDataListener(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboDataListener;)V

    .line 93
    :goto_0
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mAdapter:Landroid/widget/BaseAdapter;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mDatas:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getThreadPool()Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    .line 98
    iput p3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mContentPosEnd:I

    .line 99
    return-void

    :cond_0
    move-object v0, p1

    .line 91
    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboActivityBase;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboActivityBase;->setDataListener(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboDataListener;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;

    .prologue
    .line 32
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mType:I

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;)Lcom/lenovo/scg/gallery3d/util/ThreadPool;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;)Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$Listener;

    return-object v0
.end method

.method private cancelNonactiveImages()V
    .locals 4

    .prologue
    .line 261
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 263
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 264
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;

    .line 265
    .local v1, "item":Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->contentLoader:Lcom/lenovo/scg/gallery3d/weibo/ui/BitmapLoaderLite;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;)Lcom/lenovo/scg/gallery3d/weibo/ui/BitmapLoaderLite;

    move-result-object v3

    if-eqz v3, :cond_0

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->contentLoader:Lcom/lenovo/scg/gallery3d/weibo/ui/BitmapLoaderLite;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;)Lcom/lenovo/scg/gallery3d/weibo/ui/BitmapLoaderLite;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/BitmapLoaderLite;->cancelLoad()V

    .line 263
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    .end local v1    # "item":Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;
    :cond_1
    return-void
.end method

.method private freePositionContent(I)V
    .locals 6
    .param p1, "pos"    # I

    .prologue
    .line 337
    const-string v3, "SlidingWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "freePositionContent, pos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->isPositionVaild(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 340
    const-string v3, "SlidingWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "freePositionContent, position is not vaild,do nothing!! pos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    return-void

    .line 344
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3, p1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 345
    .local v1, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    if-eqz v1, :cond_0

    .line 346
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicThumbnailsSize()I

    move-result v0

    .line 347
    .local v0, "count":I
    if-nez v0, :cond_2

    .line 348
    const/4 v0, 0x1

    .line 349
    const/4 v3, 0x1

    iput v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mType:I

    .line 352
    :cond_2
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 354
    invoke-direct {p0, p1, v2, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->freeSlotContent(IILcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 352
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private freeSlotContent(IILcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 5
    .param p1, "pos"    # I
    .param p2, "slotIndex"    # I
    .param p3, "item"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 315
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 316
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;

    .line 318
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;
    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->pos:I

    if-ne v2, p1, :cond_2

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->index:I

    if-ne v2, p2, :cond_2

    .line 319
    const-string v2, "SlidingWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "freePositionContent, find pos, free it!! pos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->contentLoader:Lcom/lenovo/scg/gallery3d/weibo/ui/BitmapLoaderLite;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;)Lcom/lenovo/scg/gallery3d/weibo/ui/BitmapLoaderLite;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 321
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->contentLoader:Lcom/lenovo/scg/gallery3d/weibo/ui/BitmapLoaderLite;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;)Lcom/lenovo/scg/gallery3d/weibo/ui/BitmapLoaderLite;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/BitmapLoaderLite;->recycle()V

    .line 323
    :cond_0
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->item:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->item:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;->bm:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 324
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->item:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 325
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->item:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;->bm:Landroid/graphics/Bitmap;

    .line 327
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$Listener;

    if-eqz v2, :cond_2

    .line 328
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$Listener;

    invoke-interface {v2, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$Listener;->onContentChanged(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;)V

    .line 315
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 333
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;
    :cond_3
    return-void
.end method

.method private isExistInCache(II)Z
    .locals 4
    .param p1, "pos"    # I
    .param p2, "index"    # I

    .prologue
    .line 278
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 280
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;

    .line 281
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->item:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    if-nez v2, :cond_1

    .line 278
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :cond_1
    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->pos:I

    if-ne v2, p1, :cond_0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->index:I

    if-ne v2, p2, :cond_0

    .line 287
    const-string v2, "SlidingWindow"

    const-string v3, "isExistInCache, exist!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v2, 0x1

    .line 295
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;
    :goto_1
    return v2

    .line 293
    :cond_2
    const-string v2, "SlidingWindow"

    const-string v3, "isExistInCache, not exist!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isPositionVaild(I)Z
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 199
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mSize:I

    if-lt p1, v0, :cond_1

    .line 200
    :cond_0
    const/4 v0, 0x0

    .line 203
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private preparePositionContent(I)V
    .locals 6
    .param p1, "pos"    # I

    .prologue
    .line 152
    const-string v3, "SlidingWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "preparePositionContent, pos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->isPositionVaild(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 155
    const-string v3, "SlidingWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "preparePositionContent, position is not vaild,do nothing!! pos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    return-void

    .line 159
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3, p1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 160
    .local v2, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    if-eqz v2, :cond_0

    .line 161
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicThumbnailsSize()I

    move-result v0

    .line 162
    .local v0, "count":I
    if-nez v0, :cond_2

    .line 163
    const/4 v0, 0x1

    .line 164
    const/4 v3, 0x1

    iput v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mType:I

    .line 169
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 170
    invoke-direct {p0, p1, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->prepareSlotContent(IILcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private prepareSlotContent(IILcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "slotIndex"    # I
    .param p3, "item"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 107
    const-string v2, "SlidingWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepareSlotContent, pos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", slotIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->isExistInCache(II)Z

    move-result v1

    .line 110
    .local v1, "isexist":Z
    if-eqz v1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 115
    :cond_0
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;)V

    .line 116
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;
    new-instance v2, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;)V

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->item:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    .line 118
    if-nez p3, :cond_1

    .line 119
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2, p1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    .end local p3    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    check-cast p3, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 122
    .restart local p3    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :cond_1
    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 134
    :goto_1
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->item:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    invoke-virtual {p3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrScreenName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;->u_name:Ljava/lang/String;

    .line 135
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->item:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    invoke-virtual {p3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrUserId()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;->u_uid:J

    .line 136
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->item:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    invoke-virtual {p3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;->s_uid:J

    .line 137
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->item:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    invoke-virtual {p3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getCreatedTime()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;->time:Ljava/lang/String;

    .line 138
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->item:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    invoke-virtual {p3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->ismIsTweeted()Z

    move-result v3

    iput-boolean v3, v2, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;->isretweeted:Z

    .line 140
    iput p1, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->pos:I

    .line 141
    iput p2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->index:I

    .line 143
    new-instance v2, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$ThumbnailLoader;

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->item:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$ThumbnailLoader;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;IILcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;)V

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->contentLoader:Lcom/lenovo/scg/gallery3d/weibo/ui/BitmapLoaderLite;
    invoke-static {v0, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->access$002(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;Lcom/lenovo/scg/gallery3d/weibo/ui/BitmapLoaderLite;)Lcom/lenovo/scg/gallery3d/weibo/ui/BitmapLoaderLite;

    .line 145
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    const-string v2, "SlidingWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add cache, mDatas size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    :pswitch_0
    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->item:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    invoke-virtual {p3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicThumbnails()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;->thumailurl:Ljava/lang/String;

    .line 127
    :pswitch_1
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->item:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    invoke-virtual {p3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicMid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;->middleurl:Ljava/lang/String;

    goto :goto_1

    .line 130
    :pswitch_2
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->item:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    invoke-virtual {p3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicOriginal()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;->orgurl:Ljava/lang/String;

    goto :goto_1

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private requestNonactiveImages()V
    .locals 5

    .prologue
    .line 176
    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mContentPosEnd:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mActivePosEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mActivePosStart:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mContentPosStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 179
    .local v1, "range":I
    if-nez v1, :cond_0

    .line 180
    const-string v2, "SlidingWindow"

    const-string/jumbo v3, "requestNonactiveImages, range=0!! set to 3!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v1, 0x3

    .line 186
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 192
    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mActivePosEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->requestSlotImage(I)Z

    .line 193
    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mActivePosStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->requestSlotImage(I)Z

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 183
    .end local v0    # "i":I
    :cond_0
    const-string v2, "SlidingWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestNonactiveImages, range="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method private requestSlotImage(I)Z
    .locals 9
    .param p1, "pos"    # I

    .prologue
    const/4 v6, 0x0

    .line 208
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->isPositionVaild(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v6

    .line 212
    :cond_1
    iget v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mContentPosStart:I

    if-lt p1, v7, :cond_0

    iget v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mContentPosEnd:I

    if-ge p1, v7, :cond_0

    .line 221
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v7, p1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 222
    .local v3, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    if-eqz v3, :cond_0

    .line 223
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicThumbnailsSize()I

    move-result v5

    .line 224
    .local v5, "size":I
    if-nez v5, :cond_2

    .line 225
    const/4 v5, 0x1

    .line 229
    :cond_2
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v5, :cond_0

    .line 232
    const/4 v1, 0x0

    .line 233
    .local v1, "entryTmp":Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 234
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;

    .line 235
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;
    iget v7, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->pos:I

    if-ne v7, p1, :cond_3

    iget v7, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->index:I

    if-ne v7, v4, :cond_3

    .line 236
    move-object v1, v0

    .line 233
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 241
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;
    :cond_4
    if-nez v1, :cond_6

    .line 229
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 246
    :cond_6
    iget-object v7, v1, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->item:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    if-eqz v7, :cond_7

    iget-object v7, v1, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->item:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$DataItemLite;->bm:Landroid/graphics/Bitmap;

    if-nez v7, :cond_5

    .line 250
    :cond_7
    const-string v6, "SlidingWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requestSlotImage,startload,pos="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->contentLoader:Lcom/lenovo/scg/gallery3d/weibo/ui/BitmapLoaderLite;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;)Lcom/lenovo/scg/gallery3d/weibo/ui/BitmapLoaderLite;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/ui/BitmapLoaderLite;->startLoad()V

    .line 254
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->contentLoader:Lcom/lenovo/scg/gallery3d/weibo/ui/BitmapLoaderLite;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;->access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$CacheEntry;)Lcom/lenovo/scg/gallery3d/weibo/ui/BitmapLoaderLite;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/ui/BitmapLoaderLite;->isRequestInProgress()Z

    move-result v6

    goto :goto_0
.end method

.method private setContentWindow(II)V
    .locals 5
    .param p1, "contentStart"    # I
    .param p2, "contentEnd"    # I

    .prologue
    .line 377
    const-string v2, "SlidingWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setContentWindow, 111111111111111, contentStart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",contentEnd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mContentPosStart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mContentPosStart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mContentPosEnd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mContentPosEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mContentPosStart:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mContentPosEnd:I

    if-ne p2, v2, :cond_0

    .line 435
    :goto_0
    return-void

    .line 383
    :cond_0
    const-string v2, "SlidingWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setContentWindow, 222222222222222, contentStart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",contentEnd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mContentPosStart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mContentPosStart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mContentPosEnd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mContentPosEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mContentPosEnd:I

    if-ge p1, v2, :cond_1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mContentPosStart:I

    if-lt v2, p2, :cond_3

    .line 396
    :cond_1
    const-string v2, "SlidingWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setContentWindow, 3333333333333333, contentStart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",contentEnd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mContentPosStart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mContentPosStart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mContentPosEnd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mContentPosEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mContentPosStart:I

    .local v0, "i":I
    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mContentPosEnd:I

    .local v1, "n":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 402
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->freePositionContent(I)V

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 406
    :cond_2
    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_7

    .line 407
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->preparePositionContent(I)V

    .line 406
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 410
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_3
    const-string v2, "SlidingWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setContentWindow, 4444444444444444, contentStart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",contentEnd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mContentPosStart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mContentPosStart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mContentPosEnd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mContentPosEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mContentPosStart:I

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, p1, :cond_4

    .line 416
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->freePositionContent(I)V

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 419
    :cond_4
    move v0, p2

    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mContentPosEnd:I

    .restart local v1    # "n":I
    :goto_4
    if-ge v0, v1, :cond_5

    .line 420
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->freePositionContent(I)V

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 424
    :cond_5
    move v0, p1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mContentPosStart:I

    :goto_5
    if-ge v0, v1, :cond_6

    .line 425
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->preparePositionContent(I)V

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 428
    :cond_6
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mContentPosEnd:I

    :goto_6
    if-ge v0, p2, :cond_7

    .line 429
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->preparePositionContent(I)V

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 433
    :cond_7
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mContentPosStart:I

    .line 434
    iput p2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mContentPosEnd:I

    goto/16 :goto_0
.end method


# virtual methods
.method public cleanAllCache()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mDatas:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->cancelNonactiveImages()V

    .line 272
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 274
    :cond_0
    return-void
.end method

.method public isActiveSlot(I)Z
    .locals 1
    .param p1, "slotIndex"    # I

    .prologue
    .line 309
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mActivePosStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mActivePosEnd:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContentChanged(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 448
    const/16 v0, 0x9

    if-le p1, v0, :cond_0

    .line 455
    :goto_0
    return-void

    .line 453
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->preparePositionContent(I)V

    .line 454
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->requestNonactiveImages()V

    goto :goto_0
.end method

.method public onSizeChanged(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 439
    const-string v0, "SlidingWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mSize:I

    if-eq v0, p1, :cond_0

    .line 441
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mSize:I

    .line 443
    :cond_0
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v4, 0x0

    .line 362
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mActivePosStart:I

    .line 363
    iput p2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mActivePosEnd:I

    .line 365
    add-int v2, p1, p2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x4

    iget v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mSize:I

    add-int/lit8 v3, v3, -0x9

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v4, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 367
    .local v1, "contentStart":I
    add-int/lit8 v2, v1, 0x9

    iget v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mSize:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 370
    .local v0, "contentEnd":I
    invoke-direct {p0, v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->setContentWindow(II)V

    .line 371
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->requestNonactiveImages()V

    .line 373
    return-void
.end method

.method public setListener(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$Listener;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow$Listener;

    .line 103
    return-void
.end method
