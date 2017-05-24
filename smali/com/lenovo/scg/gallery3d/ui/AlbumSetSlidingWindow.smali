.class public Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;
.super Ljava/lang/Object;
.source "AlbumSetSlidingWindow.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$DataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;,
        Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;,
        Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$EntryUpdater;,
        Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;,
        Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$Listener;
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

.field private final mContentUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;

.field private final mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

.field private final mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

.field private mIsActive:Z

.field private final mLabelMaker:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

.field private final mLabelUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;

.field private mListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$Listener;

.field private mLoadingLabel:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

.field private final mLoadingText:Ljava/lang/String;

.field private mSize:I

.field private mSlotWidth:I

.field private final mSource:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

.field private final mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;I)V
    .locals 2
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p2, "source"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;
    .param p3, "labelSpec"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;
    .param p4, "cacheSize"    # I

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .line 64
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .line 66
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .line 68
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .line 86
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 88
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    .line 142
    invoke-virtual {p2, p0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->setModelListener(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$DataListener;)V

    .line 143
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    .line 144
    new-array v0, p4, [Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    .line 145
    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->size()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    .line 146
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    .line 148
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    .line 149
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f064d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mLoadingText:Ljava/lang/String;

    .line 150
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;-><init>(Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;

    .line 151
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;-><init>(Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mLabelUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;

    .line 153
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$1;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$1;-><init>(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    .line 161
    return-void
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mLabelUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/util/ThreadPool;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    .prologue
    .line 45
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$606(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    .prologue
    .line 45
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->requestNonactiveImages()V

    return-void
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    return-object v0
.end method

.method private cancelImagesInSlot(I)V
    .locals 3
    .param p1, "slotIndex"    # I

    .prologue
    .line 260
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 262
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    if-eqz v0, :cond_0

    .line 263
    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_2

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->cancelLoad()V

    .line 264
    :cond_2
    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->cancelLoad()V

    goto :goto_0
.end method

.method private cancelNonactiveImages()V
    .locals 5

    .prologue
    .line 245
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 246
    .local v1, "range":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 247
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->cancelImagesInSlot(I)V

    .line 248
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->cancelImagesInSlot(I)V

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_0
    return-void
.end method

.method private freeSlotContent(I)V
    .locals 4
    .param p1, "slotIndex"    # I

    .prologue
    .line 273
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 274
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->recycle()V

    .line 275
    :cond_0
    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_1

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->recycle()V

    .line 276
    :cond_1
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->recycle()V

    .line 277
    :cond_2
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;->recycle()V

    .line 278
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 279
    return-void
.end method

.method private static getDataVersion(Lcom/lenovo/scg/gallery3d/data/MediaObject;)J
    .locals 2
    .param p0, "object"    # Lcom/lenovo/scg/gallery3d/data/MediaObject;

    .prologue
    .line 269
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
    .line 541
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSupportedOperations()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1

    .line 542
    :cond_0
    const/4 v0, 0x0

    .line 545
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
    .line 549
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSupportedOperations()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1

    .line 550
    :cond_0
    const/4 v0, 0x0

    .line 553
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getCacheStatus()I

    move-result v0

    goto :goto_0
.end method

.method private isLabelChanged(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Ljava/lang/String;II)Z
    .locals 1
    .param p1, "entry"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "totalCount"    # I
    .param p4, "sourceType"    # I

    .prologue
    .line 282
    iget-object v0, p1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/lenovo/scg/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    if-ne v0, p3, :cond_0

    iget v0, p1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->sourceType:I

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
    .line 341
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;-><init>()V

    .line 342
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    invoke-direct {p0, v0, p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->updateAlbumSetEntry(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;I)V

    .line 343
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aput-object v0, v1, v2

    .line 344
    return-void
.end method

.method private requestImagesInSlot(I)V
    .locals 3
    .param p1, "slotIndex"    # I

    .prologue
    .line 253
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 255
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_2

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->startLoad()V

    .line 256
    :cond_2
    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->startLoad()V

    goto :goto_0
.end method

.method private requestNonactiveImages()V
    .locals 5

    .prologue
    .line 237
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 238
    .local v1, "range":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 239
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->requestImagesInSlot(I)V

    .line 240
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->requestImagesInSlot(I)V

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_0
    return-void
.end method

.method private setContentWindow(II)V
    .locals 3
    .param p1, "contentStart"    # I
    .param p2, "contentEnd"    # I

    .prologue
    .line 183
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-ne p2, v2, :cond_0

    .line 211
    :goto_0
    return-void

    .line 185
    :cond_0
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-ge p1, v2, :cond_1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt v2, p2, :cond_3

    .line 186
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .local v0, "i":I
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .local v1, "n":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 187
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 189
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->setActiveWindow(II)V

    .line 190
    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_7

    .line 191
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 194
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_3
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, p1, :cond_4

    .line 195
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 197
    :cond_4
    move v0, p2

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .restart local v1    # "n":I
    :goto_4
    if-ge v0, v1, :cond_5

    .line 198
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 200
    :cond_5
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->setActiveWindow(II)V

    .line 201
    move v0, p1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    :goto_5
    if-ge v0, v1, :cond_6

    .line 202
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 204
    :cond_6
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    :goto_6
    if-ge v0, p2, :cond_7

    .line 205
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 209
    :cond_7
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .line 210
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    goto :goto_0
.end method

.method private static startLoadBitmap(Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;)Z
    .locals 1
    .param p0, "loader"    # Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    .prologue
    .line 347
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 349
    :goto_0
    return v0

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->startLoad()V

    .line 349
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->isRequestInProgress()Z

    move-result v0

    goto :goto_0
.end method

.method private updateAlbumSetEntry(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;I)V
    .locals 10
    .param p1, "entry"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .param p2, "slotIndex"    # I

    .prologue
    .line 286
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v6

    .line 287
    .local v6, "album":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->getCoverItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v7

    .line 288
    .local v7, "cover":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->getTotalCount(I)I

    move-result v4

    .line 290
    .local v4, "totalCount":I
    iput-object v6, p1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 291
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->getDataVersion(Lcom/lenovo/scg/gallery3d/data/MediaObject;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setDataVersion:J

    .line 292
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->identifyCacheFlag(Lcom/lenovo/scg/gallery3d/data/MediaSet;)I

    move-result v0

    iput v0, p1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->cacheFlag:I

    .line 293
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->identifyCacheStatus(Lcom/lenovo/scg/gallery3d/data/MediaSet;)I

    move-result v0

    iput v0, p1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->cacheStatus:I

    .line 294
    if-nez v6, :cond_6

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 296
    if-nez v6, :cond_7

    const-string v3, ""

    .line 297
    .local v3, "title":Ljava/lang/String;
    :goto_1
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/data/DataSourceType;->identifySourceType(Lcom/lenovo/scg/gallery3d/data/MediaSet;)I

    move-result v5

    .line 298
    .local v5, "sourceType":I
    invoke-direct {p0, p1, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->isLabelChanged(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    iput-object v3, p1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    .line 300
    iput v4, p1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    .line 301
    iput v5, p1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->sourceType:I

    .line 302
    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->recycle()V

    .line 304
    const/4 v0, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {p1, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    .line 305
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    .line 307
    :cond_0
    if-eqz v6, :cond_1

    .line 308
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;

    move-object v1, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;-><init>(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;ILjava/lang/String;II)V

    # setter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {p1, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    .line 312
    :cond_1
    if-eqz v7, :cond_2

    .line 313
    const/16 v0, 0x80

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isGif:Z

    .line 318
    :cond_2
    if-eqz v7, :cond_3

    .line 319
    const/high16 v0, 0x400000

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v1

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isSpeech:Z

    .line 323
    :cond_3
    iput-object v7, p1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 324
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->getDataVersion(Lcom/lenovo/scg/gallery3d/data/MediaObject;)J

    move-result-wide v0

    iget-wide v8, p1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverDataVersion:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_5

    .line 325
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isPanorama(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isPanorama:Z

    .line 326
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->getDataVersion(Lcom/lenovo/scg/gallery3d/data/MediaObject;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverDataVersion:J

    .line 327
    if-nez v7, :cond_a

    const/4 v0, 0x0

    :goto_4
    iput v0, p1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->rotation:I

    .line 328
    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 329
    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->recycle()V

    .line 330
    const/4 v0, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {p1, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$002(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    .line 331
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    .line 332
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    .line 334
    :cond_4
    if-eqz v7, :cond_5

    .line 335
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    invoke-direct {v0, p0, p2, v7}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;-><init>(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;ILcom/lenovo/scg/gallery3d/data/MediaItem;)V

    # setter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {p1, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$002(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    .line 338
    :cond_5
    return-void

    .line 294
    .end local v3    # "title":Ljava/lang/String;
    .end local v5    # "sourceType":I
    :cond_6
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    goto/16 :goto_0

    .line 296
    :cond_7
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 313
    .restart local v3    # "title":Ljava/lang/String;
    .restart local v5    # "sourceType":I
    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    .line 319
    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    .line 327
    :cond_a
    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getRotation()I

    move-result v0

    goto :goto_4
.end method

.method private updateAllImageRequests()V
    .locals 5

    .prologue
    .line 392
    const/4 v3, 0x0

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 393
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .local v1, "i":I
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 394
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v4, v4

    rem-int v4, v1, v4

    aget-object v0, v3, v4

    .line 396
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    if-nez v0, :cond_0

    .line 408
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    :goto_1
    return-void

    .line 400
    .restart local v0    # "entry":Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    :cond_0
    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->startLoadBitmap(Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 401
    :cond_1
    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->startLoadBitmap(Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 393
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    :cond_3
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    if-nez v3, :cond_4

    .line 404
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->requestNonactiveImages()V

    goto :goto_1

    .line 406
    :cond_4
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->cancelNonactiveImages()V

    goto :goto_1
.end method

.method private updateTextureUploadQueue()V
    .locals 7

    .prologue
    .line 366
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-nez v4, :cond_1

    .line 389
    :cond_0
    return-void

    .line 367
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;->clear()V

    .line 368
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mLabelUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->clear()V

    .line 371
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .local v1, "i":I
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 372
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v5, v5

    rem-int v5, v1, v5

    aget-object v0, v4, v5

    .line 373
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    if-eqz v0, :cond_3

    .line 374
    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    if-eqz v4, :cond_2

    .line 375
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;->addTexture(Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;)V

    .line 377
    :cond_2
    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    if-eqz v4, :cond_3

    .line 378
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mLabelUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->addFgTexture(Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;)V

    .line 371
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    :cond_4
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 385
    .local v3, "range":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    .line 386
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->uploadBackgroundTextureInSlot(I)V

    .line 387
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->uploadBackgroundTextureInSlot(I)V

    .line 385
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private uploadBackgroundTextureInSlot(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 353
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 355
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    if-eqz v0, :cond_0

    .line 356
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    if-eqz v1, :cond_2

    .line 357
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;->addTexture(Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;)V

    .line 359
    :cond_2
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mLabelUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->addBgTexture(Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;)V

    goto :goto_0
.end method


# virtual methods
.method public get(I)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .locals 4
    .param p1, "slotIndex"    # I

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    const-string v0, "invalid slot: %s outsides (%s, %s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLoadingTexture()Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 466
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mLoadingLabel:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    if-nez v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mLoadingText:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->requestLabel(Ljava/lang/String;Ljava/lang/String;I)Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->JOB_CONTEXT_STUB:Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    invoke-interface {v1, v2}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;->run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 468
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-direct {v1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mLoadingLabel:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    .line 469
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mLoadingLabel:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->setOpaque(Z)V

    .line 471
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mLoadingLabel:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    return-object v1
.end method

.method public isActiveSlot(I)Z
    .locals 1
    .param p1, "slotIndex"    # I

    .prologue
    .line 179
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContentChanged(I)V
    .locals 12
    .param p1, "index"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 422
    iget-boolean v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-nez v6, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v6, :cond_2

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v6, :cond_3

    .line 429
    :cond_2
    const-string v6, "AlbumSetSlidingWindow"

    const-string v7, "invalid update: %s is outside (%s, %s)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    iget v9, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x2

    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 433
    :cond_3
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v7, v7

    rem-int v7, p1, v7

    aget-object v0, v6, v7

    .line 434
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    invoke-direct {p0, v0, p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->updateAlbumSetEntry(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;I)V

    .line 437
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v6, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v4

    .line 438
    .local v4, "tmpAlbum":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    const/4 v1, 0x0

    .line 439
    .local v1, "item":Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;
    invoke-virtual {v4, v10, v11}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 440
    invoke-virtual {v4, v10, v11}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "item":Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;
    check-cast v1, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;

    .line 445
    .restart local v1    # "item":Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;
    iget-object v6, v1, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    iget-object v7, v1, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, "itemFilePath":Ljava/lang/String;
    const-string v6, "/DCIM/Camera/continuous_"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 449
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 450
    .local v5, "tmpBucketId":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getSelectedMap()Ljava/util/Map;

    move-result-object v3

    .line 451
    .local v3, "selectedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->checkCCBucketIdinDb(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 452
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v6

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->saveBucketId2Db(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .end local v3    # "selectedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "tmpBucketId":Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    .line 459
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->updateTextureUploadQueue()V

    .line 460
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    if-eqz v6, :cond_0

    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 461
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    invoke-interface {v6}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$Listener;->onContentChanged()V

    goto/16 :goto_0
.end method

.method public onSizeChanged(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    if-eq v0, p1, :cond_2

    .line 413
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    .line 414
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$Listener;->onSizeChanged(I)V

    .line 415
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .line 416
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .line 418
    :cond_2
    return-void
.end method

.method public onSlotSizeChanged(II)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v8, 0x0

    .line 605
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mSlotWidth:I

    if-ne v0, p1, :cond_1

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mSlotWidth:I

    .line 608
    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mLoadingLabel:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    .line 609
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mSlotWidth:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->setLabelWidth(I)V

    .line 611
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 613
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .local v2, "i":I
    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .local v7, "n":I
    :goto_1
    if-ge v2, v7, :cond_4

    .line 614
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v1, v1

    rem-int v1, v2, v1

    aget-object v6, v0, v1

    .line 615
    .local v6, "entry":Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 616
    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;->recycle()V

    .line 617
    # setter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v6, v8}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    .line 618
    iput-object v8, v6, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    .line 620
    :cond_2
    iget-object v0, v6, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    if-eqz v0, :cond_3

    .line 621
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;

    iget-object v3, v6, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    iget v4, v6, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    iget v5, v6, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->sourceType:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;-><init>(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;ILjava/lang/String;II)V

    # setter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;
    invoke-static {v6, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;)Lcom/lenovo/scg/gallery3d/ui/BitmapLoader;

    .line 613
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 624
    .end local v6    # "entry":Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    :cond_4
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    .line 625
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->updateTextureUploadQueue()V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 475
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    .line 476
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mLabelUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/TextureUploader;->clear()V

    .line 477
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentUploader:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture$Uploader;->clear()V

    .line 478
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;->freeResources()V

    .line 479
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .local v0, "i":I
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 480
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 479
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 485
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    .line 486
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;->prepareResources()V

    .line 487
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .local v0, "i":I
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 488
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 490
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    .line 491
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v7, 0x0

    .line 214
    if-gt p1, p2, :cond_0

    sub-int v3, p2, p1

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v4, v4

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    if-le p2, v3, :cond_1

    .line 215
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

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    .line 219
    .local v2, "data":[Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .line 220
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .line 221
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    array-length v4, v2

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    array-length v5, v2

    sub-int/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v7, v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 222
    .local v1, "contentStart":I
    array-length v3, v2

    add-int/2addr v3, v1

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 223
    .local v0, "contentEnd":I
    invoke-direct {p0, v1, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->setContentWindow(II)V

    .line 225
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-eqz v3, :cond_2

    .line 226
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->updateTextureUploadQueue()V

    .line 227
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    .line 229
    :cond_2
    return-void
.end method

.method public setListener(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    .line 165
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    return v0
.end method
