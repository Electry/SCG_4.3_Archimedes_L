.class public Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;
.super Ljava/lang/Object;
.source "AlbumSlidingWindow.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$DataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;,
        Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;,
        Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;,
        Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$Listener;
    }
.end annotation


# static fields
.field private static final JOB_LIMIT:I = 0x2

.field private static final MSG_UPDATE_ENTRY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AlbumSlidingWindow"


# instance fields
.field private mActiveEnd:I

.field private mActiveRequestCount:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

.field private final mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

.field private mIsActive:Z

.field private mListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$Listener;

.field private mSize:I

.field private final mSource:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

.field private final mThreadPool:Lcom/lenovo/scg/gallery3d/util/JobLimiter;

.field private final mTileUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;I)V
    .locals 3
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p2, "source"    # Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;
    .param p3, "cacheSize"    # I

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .line 101
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .line 103
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    .line 105
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .line 109
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 111
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    .line 128
    invoke-virtual {p2, p0}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->setDataListener(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$DataListener;)V

    .line 129
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    .line 130
    new-array v0, p3, [Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    .line 131
    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->size()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    .line 133
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$1;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$1;-><init>(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    .line 142
    new-instance v0, Lcom/lenovo/scg/gallery3d/util/JobLimiter;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/util/JobLimiter;-><init>(Lcom/lenovo/scg/gallery3d/util/ThreadPool;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/JobLimiter;

    .line 143
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;-><init>(Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mTileUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;

    .line 144
    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;)Lcom/lenovo/scg/gallery3d/util/JobLimiter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/JobLimiter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;)Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;)[Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;)Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mTileUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    .prologue
    .line 36
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$606(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    .prologue
    .line 36
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->requestNonactiveImages()V

    return-void
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;)Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$Listener;

    return-object v0
.end method

.method private cancelNonactiveImages()V
    .locals 5

    .prologue
    .line 276
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 277
    .local v1, "range":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 278
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->cancelSlotImage(I)V

    .line 279
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->cancelSlotImage(I)V

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_0
    return-void
.end method

.method private cancelSlotImage(I)V
    .locals 3
    .param p1, "slotIndex"    # I

    .prologue
    .line 284
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 286
    .local v0, "item":Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->cancelLoad()V

    goto :goto_0
.end method

.method private freeSlotContent(I)V
    .locals 4
    .param p1, "slotIndex"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    .line 291
    .local v0, "data":[Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    array-length v3, v0

    rem-int v2, p1, v3

    .line 292
    .local v2, "index":I
    aget-object v1, v0, v2

    .line 293
    .local v1, "entry":Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v3

    if-eqz v3, :cond_0

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->recycle()V

    .line 294
    :cond_0
    iget-object v3, v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;->recycle()V

    .line 295
    :cond_1
    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 296
    return-void
.end method

.method private prepareSlotContent(I)V
    .locals 7
    .param p1, "slotIndex"    # I

    .prologue
    const/high16 v6, 0x400000

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 299
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;-><init>()V

    .line 300
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->get(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    .line 302
    .local v1, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v1, :cond_0

    .line 303
    const/16 v2, 0x80

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-ne v2, v5, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isGif:Z

    .line 308
    :cond_0
    if-eqz v1, :cond_1

    .line 309
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v2

    and-int/2addr v2, v6

    if-ne v6, v2, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isSpeech:Z

    .line 313
    :cond_1
    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 314
    if-nez v1, :cond_4

    move v2, v4

    :goto_2
    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isPanoramaPic:Z

    .line 315
    if-nez v1, :cond_5

    :goto_3
    iput v3, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    .line 316
    if-nez v1, :cond_6

    const/4 v2, 0x0

    :goto_4
    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 317
    if-nez v1, :cond_7

    :goto_5
    iput v4, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rotation:I

    .line 318
    new-instance v2, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-direct {v2, p0, p1, v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;-><init>(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;ILcom/lenovo/scg/gallery3d/data/MediaItem;)V

    # setter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$102(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    .line 319
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v3, v3

    rem-int v3, p1, v3

    aput-object v0, v2, v3

    .line 320
    return-void

    :cond_2
    move v2, v4

    .line 303
    goto :goto_0

    :cond_3
    move v2, v4

    .line 309
    goto :goto_1

    .line 314
    :cond_4
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isPanorama(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Z

    move-result v2

    goto :goto_2

    .line 315
    :cond_5
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getMediaType()I

    move-result v3

    goto :goto_3

    .line 316
    :cond_6
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v2

    goto :goto_4

    .line 317
    :cond_7
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getRotation()I

    move-result v4

    goto :goto_5
.end method

.method private requestNonactiveImages()V
    .locals 5

    .prologue
    .line 254
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 255
    .local v1, "range":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 256
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->requestSlotImage(I)Z

    .line 257
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->requestSlotImage(I)Z

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_0
    return-void
.end method

.method private requestSlotImage(I)Z
    .locals 4
    .param p1, "slotIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 263
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v2, :cond_0

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-lt p1, v2, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v1

    .line 264
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v3, v3

    rem-int v3, p1, v3

    aget-object v0, v2, v3

    .line 265
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    if-eqz v2, :cond_0

    .line 268
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;-><init>(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)V

    # setter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->mPanoSupportListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$002(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;)Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;

    .line 269
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->mPanoSupportListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$PanoSupportListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPanoramaSupport(Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;)V

    .line 271
    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->startLoad()V

    .line 272
    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->isRequestInProgress()Z

    move-result v1

    goto :goto_0
.end method

.method private setContentWindow(II)V
    .locals 3
    .param p1, "contentStart"    # I
    .param p2, "contentEnd"    # I

    .prologue
    .line 162
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ne p2, v2, :cond_0

    .line 197
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-nez v2, :cond_1

    .line 165
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .line 166
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .line 167
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->setActiveWindow(II)V

    goto :goto_0

    .line 171
    :cond_1
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v2, :cond_2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt v2, p2, :cond_4

    .line 172
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .local v0, "i":I
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .local v1, "n":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 173
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->setActiveWindow(II)V

    .line 176
    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_8

    .line 177
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 180
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_4
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, p1, :cond_5

    .line 181
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 183
    :cond_5
    move v0, p2

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .restart local v1    # "n":I
    :goto_4
    if-ge v0, v1, :cond_6

    .line 184
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 186
    :cond_6
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->setActiveWindow(II)V

    .line 187
    move v0, p1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    :goto_5
    if-ge v0, v1, :cond_7

    .line 188
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 190
    :cond_7
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    :goto_6
    if-ge v0, p2, :cond_8

    .line 191
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 195
    :cond_8
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .line 196
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    goto :goto_0
.end method

.method private updateAllImageRequests()V
    .locals 3

    .prologue
    .line 323
    const/4 v2, 0x0

    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 324
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    .local v0, "i":I
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 325
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->requestSlotImage(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    .line 324
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    :cond_1
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    if-nez v2, :cond_2

    .line 328
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->requestNonactiveImages()V

    .line 332
    :goto_1
    return-void

    .line 330
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->cancelNonactiveImages()V

    goto :goto_1
.end method

.method private updateTextureUploadQueue()V
    .locals 7

    .prologue
    .line 229
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-nez v4, :cond_1

    .line 246
    :cond_0
    return-void

    .line 230
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mTileUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;->clear()V

    .line 233
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    .local v1, "i":I
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 234
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v5, v5

    rem-int v5, v1, v5

    aget-object v0, v4, v5

    .line 235
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    if-eqz v4, :cond_2

    .line 236
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mTileUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;->addTexture(Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;)V

    .line 233
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    :cond_3
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 242
    .local v3, "range":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    .line 243
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->uploadBgTextureInSlot(I)V

    .line 244
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->uploadBgTextureInSlot(I)V

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private uploadBgTextureInSlot(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 220
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v1, :cond_0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 222
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mTileUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;->addTexture(Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;)V

    .line 226
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    :cond_0
    return-void
.end method


# virtual methods
.method public get(I)Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    .locals 4
    .param p1, "slotIndex"    # I

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    const-string v0, "invalid slot: %s outsides (%s, %s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isActiveSlot(I)Z
    .locals 1
    .param p1, "slotIndex"    # I

    .prologue
    .line 158
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

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
    .param p1, "index"    # I

    .prologue
    .line 385
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 386
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 387
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 388
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    .line 389
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$Listener;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$Listener;->onContentChanged()V

    .line 393
    :cond_0
    return-void
.end method

.method public onSizeChanged(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 375
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    if-eq v0, p1, :cond_2

    .line 376
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    .line 377
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$Listener;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$Listener;->onSizeChanged(I)V

    .line 378
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .line 379
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .line 381
    :cond_2
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 405
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    .line 406
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mTileUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;->clear()V

    .line 407
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;->freeResources()V

    .line 408
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .local v0, "i":I
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 409
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 396
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    .line 397
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;->prepareResources()V

    .line 398
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    .local v0, "i":I
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 399
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    .line 402
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v6, 0x0

    .line 200
    if-gt p1, p2, :cond_0

    sub-int v3, p2, p1

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v4, v4

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    if-le p2, v3, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    .line 209
    .local v2, "data":[Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    .line 210
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    .line 212
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    array-length v4, v2

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    array-length v5, v2

    sub-int/2addr v4, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v6, v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 213
    .local v1, "contentStart":I
    array-length v3, v2

    add-int/2addr v3, v1

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 214
    .local v0, "contentEnd":I
    invoke-direct {p0, v1, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->setContentWindow(II)V

    .line 215
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->updateTextureUploadQueue()V

    .line 216
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    goto :goto_0
.end method

.method public setListener(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$Listener;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$Listener;

    .line 148
    return-void
.end method
