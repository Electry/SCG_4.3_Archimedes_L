.class public Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;
.super Ljava/lang/Object;
.source "LocalTimeAlbumSetSlidingWindow.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$DataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;,
        Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumCoverLoader;,
        Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$EntryUpdater;,
        Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;,
        Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$Listener;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_ALBUM_ENTRY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AlbumSetSlidingWindow"


# instance fields
.field private mActiveEnd:I

.field private mActiveRequestCount:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mData:[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

.field private final mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

.field private mIsActive:Z

.field private final mLabelMaker:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

.field private mListener:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$Listener;

.field private mLoadingLabel:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

.field private final mLoadingText:Ljava/lang/String;

.field private mSize:I

.field private mSlotWidth:I

.field private final mSource:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

.field private final mTailLabelMaker:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;

.field private final mTextureUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;

.field private final mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;I)V
    .locals 2
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p2, "source"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;
    .param p3, "labelSpec"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;
    .param p4, "cacheSize"    # I

    .prologue
    const/4 v0, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentStart:I

    .line 77
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentEnd:I

    .line 79
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveStart:I

    .line 81
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveEnd:I

    .line 99
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 101
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mIsActive:Z

    .line 199
    invoke-virtual {p2, p0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->setModelListener(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$DataListener;)V

    .line 200
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mSource:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    .line 201
    new-array v0, p4, [Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    .line 202
    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->size()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mSize:I

    .line 203
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    .line 205
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mLabelMaker:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    .line 206
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mTailLabelMaker:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;

    .line 207
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f064d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mLoadingText:Ljava/lang/String;

    .line 208
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;-><init>(Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mTextureUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;

    .line 210
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$1;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$1;-><init>(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    .line 218
    return-void
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mLabelMaker:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mTailLabelMaker:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/util/ThreadPool;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;)[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mTextureUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    .prologue
    .line 56
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$706(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    .prologue
    .line 56
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->requestNonactiveImages()V

    return-void
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$Listener;

    return-object v0
.end method

.method private cancelImagesInSlot(I)V
    .locals 3
    .param p1, "slotIndex"    # I

    .prologue
    .line 321
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 323
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;
    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->itemLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_2

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->itemLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->cancelLoad()V

    .line 324
    :cond_2
    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_3

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->cancelLoad()V

    .line 325
    :cond_3
    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->tailLabelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$200(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->tailLabelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$200(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->cancelLoad()V

    goto :goto_0
.end method

.method private cancelNonactiveImages()V
    .locals 5

    .prologue
    .line 305
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 306
    .local v1, "range":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 307
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->cancelImagesInSlot(I)V

    .line 308
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->cancelImagesInSlot(I)V

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_0
    return-void
.end method

.method private freeSlotContent(I)V
    .locals 4
    .param p1, "slotIndex"    # I

    .prologue
    .line 333
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 334
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;
    if-nez v0, :cond_0

    .line 344
    :goto_0
    return-void

    .line 337
    :cond_0
    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->itemLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_1

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->itemLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->recycle()V

    .line 338
    :cond_1
    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_2

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->recycle()V

    .line 339
    :cond_2
    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->tailLabelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$200(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_3

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->tailLabelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$200(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->recycle()V

    .line 340
    :cond_3
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->recycle()V

    .line 341
    :cond_4
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->tailLabelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->tailLabelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->recycle()V

    .line 342
    :cond_5
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->recycle()V

    .line 343
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    goto :goto_0
.end method

.method private static getDataVersion(Lcom/lenovo/scg/gallery3d/data/MediaObject;)J
    .locals 2
    .param p0, "object"    # Lcom/lenovo/scg/gallery3d/data/MediaObject;

    .prologue
    .line 329
    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/MediaObject;->getDataVersion()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static identifyCacheFlag(Lcom/lenovo/scg/gallery3d/data/MediaSet;)I
    .locals 1
    .param p0, "set"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .prologue
    .line 638
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSupportedOperations()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1

    .line 639
    :cond_0
    const/4 v0, 0x0

    .line 642
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getCacheFlag()I

    move-result v0

    goto :goto_0
.end method

.method private static identifyCacheStatus(Lcom/lenovo/scg/gallery3d/data/MediaSet;)I
    .locals 1
    .param p0, "set"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .prologue
    .line 646
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSupportedOperations()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1

    .line 647
    :cond_0
    const/4 v0, 0x0

    .line 650
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getCacheStatus()I

    move-result v0

    goto :goto_0
.end method

.method private isHeadChanged(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;Ljava/lang/String;II)Z
    .locals 1
    .param p1, "entry"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "totalCount"    # I
    .param p4, "sourceType"    # I

    .prologue
    .line 347
    iget-object v0, p1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/lenovo/scg/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    if-ne v0, p3, :cond_0

    iget v0, p1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->sourceType:I

    if-eq v0, p4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareSlotContent(I)V
    .locals 3
    .param p1, "slotIndex"    # I

    .prologue
    .line 434
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;-><init>()V

    .line 435
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;
    invoke-direct {p0, v0, p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->updateAlbumSetEntry(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;I)V

    .line 436
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aput-object v0, v1, v2

    .line 437
    return-void
.end method

.method private requestImagesInSlot(I)V
    .locals 3
    .param p1, "slotIndex"    # I

    .prologue
    .line 313
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 315
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;
    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->itemLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_2

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->itemLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->startLoad()V

    .line 316
    :cond_2
    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_3

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->startLoad()V

    .line 317
    :cond_3
    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->tailLabelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$200(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->tailLabelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$200(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->startLoad()V

    goto :goto_0
.end method

.method private requestNonactiveImages()V
    .locals 5

    .prologue
    .line 297
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 298
    .local v1, "range":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 299
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->requestImagesInSlot(I)V

    .line 300
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->requestImagesInSlot(I)V

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_0
    return-void
.end method

.method private setContentWindow(II)V
    .locals 3
    .param p1, "contentStart"    # I
    .param p2, "contentEnd"    # I

    .prologue
    .line 243
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentStart:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentEnd:I

    if-ne p2, v2, :cond_0

    .line 271
    :goto_0
    return-void

    .line 245
    :cond_0
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentEnd:I

    if-ge p1, v2, :cond_1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentStart:I

    if-lt v2, p2, :cond_3

    .line 246
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentStart:I

    .local v0, "i":I
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentEnd:I

    .local v1, "n":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 247
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 249
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mSource:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->setActiveWindow(II)V

    .line 250
    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_7

    .line 251
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 254
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_3
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentStart:I

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, p1, :cond_4

    .line 255
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 257
    :cond_4
    move v0, p2

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentEnd:I

    .restart local v1    # "n":I
    :goto_4
    if-ge v0, v1, :cond_5

    .line 258
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 260
    :cond_5
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mSource:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->setActiveWindow(II)V

    .line 261
    move v0, p1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentStart:I

    :goto_5
    if-ge v0, v1, :cond_6

    .line 262
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 264
    :cond_6
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentEnd:I

    :goto_6
    if-ge v0, p2, :cond_7

    .line 265
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 269
    :cond_7
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentStart:I

    .line 270
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentEnd:I

    goto :goto_0
.end method

.method private static startLoadBitmap(Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;)Z
    .locals 1
    .param p0, "loader"    # Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    .prologue
    .line 440
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 442
    :goto_0
    return v0

    .line 441
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->startLoad()V

    .line 442
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->isRequestInProgress()Z

    move-result v0

    goto :goto_0
.end method

.method private updateAlbumSetEntry(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;I)V
    .locals 21
    .param p1, "entry"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;
    .param p2, "slotIndex"    # I

    .prologue
    .line 351
    const-string v4, "HWJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-slidingwindow--updateAlbumSetEntry()--slotIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->reset()V

    .line 353
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mSource:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->getMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v17

    .line 354
    .local v17, "album":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mSource:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v18

    .line 356
    .local v18, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mSource:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->getRealTotalCount(I)I

    move-result v8

    .line 359
    .local v8, "totalRealCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mSource:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->getItemIndex(I)I

    move-result v19

    .line 360
    .local v19, "itemIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mSource:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->getItemShowCount(I)I

    move-result v20

    .line 361
    .local v20, "itemShowCount":I
    const/16 v4, 0x15

    move/from16 v0, v20

    if-lt v0, v4, :cond_0

    .line 362
    const/16 v4, 0x14

    move/from16 v0, v19

    if-lt v0, v4, :cond_0

    .line 363
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->isOverCount:Z

    .line 367
    :cond_0
    if-nez v19, :cond_9

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->isHead:Z

    .line 368
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 369
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->getDataVersion(Lcom/lenovo/scg/gallery3d/data/MediaObject;)J

    move-result-wide v4

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->setDataVersion:J

    .line 370
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->identifyCacheFlag(Lcom/lenovo/scg/gallery3d/data/MediaSet;)I

    move-result v4

    move-object/from16 v0, p1

    iput v4, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->cacheFlag:I

    .line 371
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->identifyCacheStatus(Lcom/lenovo/scg/gallery3d/data/MediaSet;)I

    move-result v4

    move-object/from16 v0, p1

    iput v4, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->cacheStatus:I

    .line 372
    if-nez v18, :cond_a

    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 374
    if-nez v17, :cond_b

    const-string v7, ""

    .line 375
    .local v7, "title":Ljava/lang/String;
    :goto_2
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/data/DataSourceType;->identifySourceType(Lcom/lenovo/scg/gallery3d/data/MediaSet;)I

    move-result v9

    .line 376
    .local v9, "sourceType":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v8, v9}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->isHeadChanged(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 377
    move-object/from16 v0, p1

    iput-object v7, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    .line 378
    move-object/from16 v0, p1

    iput v8, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    .line 379
    move-object/from16 v0, p1

    iput v9, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->sourceType:I

    .line 380
    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 381
    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->recycle()V

    .line 382
    const/4 v4, 0x0

    move-object/from16 v0, p1

    # setter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0, v4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    .line 383
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    .line 385
    :cond_1
    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->tailLabelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$200(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 386
    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->tailLabelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$200(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->recycle()V

    .line 387
    const/4 v4, 0x0

    move-object/from16 v0, p1

    # setter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->tailLabelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0, v4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$202(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    .line 388
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->tailLabelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    .line 390
    :cond_2
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->isHead:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    .line 391
    new-instance v4, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move/from16 v6, p2

    invoke-direct/range {v4 .. v10}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;-><init>(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;ILjava/lang/String;IIZ)V

    move-object/from16 v0, p1

    # setter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0, v4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    .line 398
    :cond_3
    :goto_3
    if-eqz v18, :cond_4

    .line 399
    const/16 v4, 0x80

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-ne v4, v5, :cond_d

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->isGif:Z

    .line 404
    :cond_4
    if-eqz v18, :cond_5

    .line 405
    const/high16 v4, 0x400000

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v5

    const/high16 v6, 0x400000

    and-int/2addr v5, v6

    if-ne v4, v5, :cond_e

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->isSpeech:Z

    .line 410
    :cond_5
    if-eqz v18, :cond_6

    .line 412
    invoke-static/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isPanorama(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Z

    move-result v4

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->isPanorama:Z

    .line 415
    :cond_6
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->item:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 416
    invoke-static/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->getDataVersion(Lcom/lenovo/scg/gallery3d/data/MediaObject;)J

    move-result-wide v4

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->coverDataVersion:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_8

    .line 417
    invoke-static/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->getDataVersion(Lcom/lenovo/scg/gallery3d/data/MediaObject;)J

    move-result-wide v4

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->coverDataVersion:J

    .line 419
    if-nez v18, :cond_f

    const/4 v4, 0x0

    :goto_6
    move-object/from16 v0, p1

    iput v4, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->rotation:I

    .line 420
    if-nez v18, :cond_10

    const/4 v4, 0x0

    :goto_7
    move-object/from16 v0, p1

    iput v4, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->mediaType:I

    .line 421
    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->itemLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 422
    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->itemLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->recycle()V

    .line 423
    const/4 v4, 0x0

    move-object/from16 v0, p1

    # setter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->itemLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0, v4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$002(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    .line 424
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    .line 425
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    .line 427
    :cond_7
    if-eqz v18, :cond_8

    .line 428
    new-instance v4, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumCoverLoader;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v18

    invoke-direct {v4, v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumCoverLoader;-><init>(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;ILcom/lenovo/scg/gallery3d/data/MediaItem;)V

    move-object/from16 v0, p1

    # setter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->itemLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0, v4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$002(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    .line 431
    :cond_8
    return-void

    .line 367
    .end local v7    # "title":Ljava/lang/String;
    .end local v9    # "sourceType":I
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 372
    :cond_a
    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v4

    goto/16 :goto_1

    .line 374
    :cond_b
    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 392
    .restart local v7    # "title":Ljava/lang/String;
    .restart local v9    # "sourceType":I
    :cond_c
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->isOverCount:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 393
    new-instance v10, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;

    add-int/lit8 v4, v8, -0x15

    add-int/lit8 v14, v4, 0x1

    const/16 v16, 0x0

    move-object/from16 v11, p0

    move/from16 v12, p2

    move-object v13, v7

    move v15, v9

    invoke-direct/range {v10 .. v16}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;-><init>(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;ILjava/lang/String;IIZ)V

    move-object/from16 v0, p1

    # setter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->tailLabelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0, v10}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$202(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    goto/16 :goto_3

    .line 399
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 405
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 419
    :cond_f
    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getRotation()I

    move-result v4

    goto :goto_6

    .line 420
    :cond_10
    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getMediaType()I

    move-result v4

    goto :goto_7
.end method

.method private updateAllImageRequests()V
    .locals 5

    .prologue
    .line 488
    const/4 v3, 0x0

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 489
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveStart:I

    .local v1, "i":I
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveEnd:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 490
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    array-length v4, v4

    rem-int v4, v1, v4

    aget-object v0, v3, v4

    .line 491
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;
    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->itemLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->startLoadBitmap(Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 492
    :cond_0
    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->startLoadBitmap(Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 493
    :cond_1
    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->tailLabelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$200(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->startLoadBitmap(Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 489
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 495
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;
    :cond_3
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveRequestCount:I

    if-nez v3, :cond_4

    .line 496
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->requestNonactiveImages()V

    .line 500
    :goto_1
    return-void

    .line 498
    :cond_4
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->cancelNonactiveImages()V

    goto :goto_1
.end method

.method private updateTextureUploadQueue()V
    .locals 7

    .prologue
    .line 460
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mIsActive:Z

    if-nez v4, :cond_1

    .line 485
    :cond_0
    return-void

    .line 461
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mTextureUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->clear()V

    .line 464
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveStart:I

    .local v1, "i":I
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveEnd:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_5

    .line 465
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    array-length v5, v5

    rem-int v5, v1, v5

    aget-object v0, v4, v5

    .line 466
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;
    if-eqz v0, :cond_4

    .line 467
    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    if-eqz v4, :cond_2

    .line 468
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mTextureUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->addFgTexture(Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;)V

    .line 470
    :cond_2
    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    if-eqz v4, :cond_3

    .line 471
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mTextureUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->addFgTexture(Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;)V

    .line 473
    :cond_3
    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->tailLabelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    if-eqz v4, :cond_4

    .line 474
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mTextureUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->tailLabelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->addFgTexture(Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;)V

    .line 464
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 480
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;
    :cond_5
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentEnd:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveStart:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 481
    .local v3, "range":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    .line 482
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->uploadBackgroundTextureInSlot(I)V

    .line 483
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveStart:I

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->uploadBackgroundTextureInSlot(I)V

    .line 481
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private uploadBackgroundTextureInSlot(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 446
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 448
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    if-eqz v1, :cond_2

    .line 449
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mTextureUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->addBgTexture(Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;)V

    .line 451
    :cond_2
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    if-eqz v1, :cond_3

    .line 452
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mTextureUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->addBgTexture(Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;)V

    .line 454
    :cond_3
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->tailLabelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mTextureUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->tailLabelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->addBgTexture(Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;)V

    goto :goto_0
.end method


# virtual methods
.method public get(I)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;
    .locals 3
    .param p1, "slotIndex"    # I

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    const-string/jumbo v0, "wangwf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid slot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " outsides ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v0, 0x0

    .line 231
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getLoadingTexture()Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 549
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mLoadingLabel:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    if-nez v1, :cond_0

    .line 550
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mLabelMaker:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mLoadingText:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->requestLabel(Ljava/lang/String;Ljava/lang/String;I)Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->JOB_CONTEXT_STUB:Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    invoke-interface {v1, v2}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;->run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 551
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-direct {v1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mLoadingLabel:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    .line 552
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mLoadingLabel:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->setOpaque(Z)V

    .line 554
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mLoadingLabel:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    return-object v1
.end method

.method public isActiveSlot(I)Z
    .locals 1
    .param p1, "slotIndex"    # I

    .prologue
    .line 239
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContentChanged(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 528
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mIsActive:Z

    if-nez v1, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_2

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_3

    .line 535
    :cond_2
    const-string v1, "AlbumSetSlidingWindow"

    const-string v2, "invalid update: %s is outside (%s, %s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentStart:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentEnd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 539
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 540
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;
    invoke-direct {p0, v0, p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->updateAlbumSetEntry(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;I)V

    .line 541
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->updateAllImageRequests()V

    .line 542
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->updateTextureUploadQueue()V

    .line 543
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$Listener;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$Listener;

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$Listener;->onContentChanged()V

    goto :goto_0
.end method

.method public onSizeChanged(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mSize:I

    if-eq v0, p1, :cond_3

    .line 505
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mSize:I

    .line 506
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$Listener;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mSize:I

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$Listener;->onSizeChanged(I)V

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$Listener;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mSource:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->getCountList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$Listener;->onSizeChanged(Ljava/util/ArrayList;)V

    .line 508
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentEnd:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mSize:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mSize:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentEnd:I

    .line 509
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveEnd:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mSize:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mSize:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveEnd:I

    .line 511
    :cond_3
    return-void
.end method

.method public onSizeChanged(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 514
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumInfo;>;"
    const/4 v1, 0x0

    .line 515
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 516
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumInfo;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumInfo;->count:I

    add-int/2addr v1, v2

    .line 515
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 518
    :cond_0
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mSize:I

    .line 519
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mIsActive:Z

    if-eqz v2, :cond_3

    .line 520
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$Listener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$Listener;

    invoke-interface {v2, p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$Listener;->onSizeChanged(Ljava/util/ArrayList;)V

    .line 521
    :cond_1
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mSize:I

    if-le v2, v3, :cond_2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mSize:I

    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentEnd:I

    .line 522
    :cond_2
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveEnd:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mSize:I

    if-le v2, v3, :cond_3

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mSize:I

    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveEnd:I

    .line 524
    :cond_3
    return-void
.end method

.method public onSlotSizeChanged(II)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 718
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mSlotWidth:I

    if-ne v0, p1, :cond_1

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mSlotWidth:I

    .line 721
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mLoadingLabel:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    .line 723
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mLabelMaker:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    sget v1, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->WM_WIDTH:I

    add-int/lit8 v1, v1, -0x14

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->setLabelWidth(I)V

    .line 724
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mTailLabelMaker:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;

    sget v1, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->WM_WIDTH:I

    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumTailLabelMaker;->setLabelWidth(I)V

    .line 726
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 728
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentStart:I

    .local v2, "i":I
    iget v8, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentEnd:I

    .local v8, "n":I
    :goto_1
    if-ge v2, v8, :cond_6

    .line 729
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    array-length v1, v1

    rem-int v1, v2, v1

    aget-object v7, v0, v1

    .line 730
    .local v7, "entry":Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;
    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 731
    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->recycle()V

    .line 732
    const/4 v0, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v7, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    .line 733
    const/4 v0, 0x0

    iput-object v0, v7, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    .line 735
    :cond_2
    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->tailLabelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$200(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 736
    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->tailLabelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$200(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->recycle()V

    .line 737
    const/4 v0, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->tailLabelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v7, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$202(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    .line 738
    const/4 v0, 0x0

    iput-object v0, v7, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->tailLabelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    .line 740
    :cond_3
    iget-boolean v0, v7, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->isHead:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 741
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;

    iget-object v3, v7, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    iget v4, v7, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    iget v5, v7, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->sourceType:I

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;-><init>(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;ILjava/lang/String;IIZ)V

    # setter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v7, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    .line 728
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 742
    :cond_5
    iget-boolean v0, v7, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->isOverCount:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 743
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;

    iget-object v3, v7, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    iget v4, v7, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    iget v5, v7, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->sourceType:I

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumLabelLoader;-><init>(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;ILjava/lang/String;IIZ)V

    # setter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->tailLabelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v7, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;->access$202(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    goto :goto_2

    .line 746
    .end local v7    # "entry":Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;
    :cond_6
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->updateAllImageRequests()V

    .line 747
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->updateTextureUploadQueue()V

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 558
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mIsActive:Z

    .line 559
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mTextureUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->clear()V

    .line 560
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentStart:I

    .local v0, "i":I
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentEnd:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 561
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 560
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 567
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mIsActive:Z

    if-ne v2, v3, :cond_0

    .line 576
    :goto_0
    return-void

    .line 571
    :cond_0
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mIsActive:Z

    .line 572
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentStart:I

    .local v0, "i":I
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mContentEnd:I

    .local v1, "n":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 573
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 575
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->updateAllImageRequests()V

    goto :goto_0
.end method

.method public setActiveWindow(II)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v7, 0x0

    .line 274
    const-string/jumbo v3, "wwf5"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setActiveWindow start = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    if-gt p1, p2, :cond_0

    sub-int v3, p2, p1

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    array-length v4, v4

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mSize:I

    if-le p2, v3, :cond_1

    .line 276
    :cond_0
    const-string/jumbo v3, "start = %s, end = %s, length = %s, size = %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;

    .line 279
    .local v2, "data":[Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$AlbumSetEntry;
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveStart:I

    .line 280
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mActiveEnd:I

    .line 281
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    array-length v4, v2

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mSize:I

    array-length v5, v2

    sub-int/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v7, v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 282
    .local v1, "contentStart":I
    array-length v3, v2

    add-int/2addr v3, v1

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 283
    .local v0, "contentEnd":I
    invoke-direct {p0, v1, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->setContentWindow(II)V

    .line 285
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mIsActive:Z

    if-eqz v3, :cond_2

    .line 286
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->updateTextureUploadQueue()V

    .line 287
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->updateAllImageRequests()V

    .line 289
    :cond_2
    return-void
.end method

.method public setListener(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$Listener;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow$Listener;

    .line 222
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlidingWindow;->mSize:I

    return v0
.end method
