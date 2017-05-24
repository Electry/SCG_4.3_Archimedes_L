.class public Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;
.super Ljava/lang/Object;
.source "AlbumSetDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;,
        Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateContent;,
        Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;,
        Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$UpdateInfo;,
        Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$MySourceListener;,
        Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$DataListener;
    }
.end annotation


# static fields
.field private static final INDEX_NONE:I = -0x1

.field private static final MIN_LOAD_COUNT:I = 0x4

.field private static final MSG_LOAD_FINISH:I = 0x2

.field private static final MSG_LOAD_START:I = 0x1

.field private static final MSG_RUN_OBJECT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AlbumSetDataAdapter"

.field private static mCameraBucketId:I


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mCoverItem:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

.field private final mData:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

.field private mDataListener:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$DataListener;

.field private final mItemVersion:[J

.field private mLoadingListener:Lcom/lenovo/scg/gallery3d/app/LoadingListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private mReloadTask:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;

.field private final mSetVersion:[J

.field private mSize:I

.field private final mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;

.field private final mSourceListener:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$MySourceListener;

.field private mSourceVersion:J

.field private final mTotalCount:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mCameraBucketId:I

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/data/MediaSet;I)V
    .locals 4
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p2, "albumSet"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .param p3, "cacheSize"    # I

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mActiveStart:I

    .line 73
    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mActiveEnd:I

    .line 75
    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mContentStart:I

    .line 77
    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I

    .line 81
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mSourceVersion:J

    .line 93
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$MySourceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$MySourceListener;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mSourceListener:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$MySourceListener;

    .line 102
    invoke-static {p2}, Lcom/lenovo/scg/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/MediaSet;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 103
    new-array v0, p3, [Lcom/lenovo/scg/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mCoverItem:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 104
    new-array v0, p3, [Lcom/lenovo/scg/gallery3d/data/MediaSet;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mData:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 105
    new-array v0, p3, [I

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mTotalCount:[I

    .line 106
    new-array v0, p3, [J

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mItemVersion:[J

    .line 107
    new-array v0, p3, [J

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mSetVersion:[J

    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mItemVersion:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mSetVersion:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 111
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$1;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$1;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mMainHandler:Landroid/os/Handler;

    .line 128
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)Lcom/lenovo/scg/gallery3d/app/LoadingListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mLoadingListener:Lcom/lenovo/scg/gallery3d/app/LoadingListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$DataListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mDataListener:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$DataListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mActiveEnd:I

    return v0
.end method

.method static synthetic access$1102(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mActiveEnd:I

    return p1
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)[Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mCoverItem:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)[J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mItemVersion:[J

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)[Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mData:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)[I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mTotalCount:[I

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mActiveStart:I

    return v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$1900()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mCameraBucketId:I

    return v0
.end method

.method static synthetic access$1902(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 39
    sput p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mCameraBucketId:I

    return p0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;
    .param p1, "x1"    # Ljava/util/concurrent/Callable;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)[J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mSetVersion:[J

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mContentStart:I

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I

    return v0
.end method

.method static synthetic access$602(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I

    return p1
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;
    .param p1, "x1"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mSourceVersion:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mSize:I

    return v0
.end method

.method static synthetic access$902(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mSize:I

    return p1
.end method

.method private assertIsActive(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 144
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mActiveStart:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mActiveEnd:I

    if-lt p1, v0, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private clearSlot(I)V
    .locals 4
    .param p1, "slotIndex"    # I

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 198
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mData:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    aput-object v1, v0, p1

    .line 199
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mCoverItem:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    aput-object v1, v0, p1

    .line 200
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mTotalCount:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 201
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mItemVersion:[J

    aput-wide v2, v0, p1

    .line 202
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mSetVersion:[J

    aput-wide v2, v0, p1

    .line 203
    return-void
.end method

.method private executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 350
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 351
    .local v1, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TT;>;"
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 353
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 355
    :goto_0
    return-object v2

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    goto :goto_0

    .line 356
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 357
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private setContentWindow(II)V
    .locals 6
    .param p1, "contentStart"    # I
    .param p2, "contentEnd"    # I

    .prologue
    .line 206
    iget v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mContentStart:I

    if-ne p1, v5, :cond_0

    iget v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I

    if-ne p2, v5, :cond_0

    .line 228
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mCoverItem:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    array-length v2, v5

    .line 209
    .local v2, "length":I
    iget v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mContentStart:I

    .line 210
    .local v4, "start":I
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I

    .line 212
    .local v0, "end":I
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mContentStart:I

    .line 213
    iput p2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I

    .line 215
    if-ge p1, v0, :cond_1

    if-lt v4, p2, :cond_2

    .line 216
    :cond_1
    move v1, v4

    .local v1, "i":I
    move v3, v0

    .local v3, "n":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 217
    rem-int v5, v1, v2

    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->clearSlot(I)V

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 220
    .end local v1    # "i":I
    .end local v3    # "n":I
    :cond_2
    move v1, v4

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, p1, :cond_3

    .line 221
    rem-int v5, v1, v2

    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->clearSlot(I)V

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 223
    :cond_3
    move v1, p2

    move v3, v0

    .restart local v3    # "n":I
    :goto_3
    if-ge v1, v3, :cond_4

    .line 224
    rem-int v5, v1, v2

    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->clearSlot(I)V

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 227
    :cond_4
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method


# virtual methods
.method public findSet(Lcom/lenovo/scg/gallery3d/data/Path;)I
    .locals 5
    .param p1, "id"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 187
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mData:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    array-length v1, v3

    .line 188
    .local v1, "length":I
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mContentStart:I

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I

    if-ge v0, v3, :cond_1

    .line 189
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mData:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    rem-int v4, v0, v1

    aget-object v2, v3, v4

    .line 190
    .local v2, "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 194
    .end local v0    # "i":I
    .end local v2    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :goto_1
    return v0

    .line 188
    .restart local v0    # "i":I
    .restart local v2    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    .end local v2    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getActiveStart()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mActiveStart:I

    return v0
.end method

.method public getCoverItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->assertIsActive(I)Z

    .line 164
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mCoverItem:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mCoverItem:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->assertIsActive(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mData:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mData:[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    .line 158
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTotalCount(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->assertIsActive(I)Z

    .line 169
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mTotalCount:[I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mTotalCount:[I

    array-length v1, v1

    rem-int v1, p1, v1

    aget v0, v0, v1

    return v0
.end method

.method public isActive(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 177
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;->terminate()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;

    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mSourceListener:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->removeContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    .line 134
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mSourceListener:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->addContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    .line 138
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;

    .line 139
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$ReloadTask;->start()V

    .line 140
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v4, 0x0

    .line 231
    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mActiveStart:I

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mActiveEnd:I

    if-ne p2, v3, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    if-gt p1, p2, :cond_3

    sub-int v3, p2, p1

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mCoverItem:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    array-length v5, v5

    if-gt v3, v5, :cond_3

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mSize:I

    if-gt p2, v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->assertTrue(Z)V

    .line 235
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mActiveStart:I

    .line 236
    iput p2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mActiveEnd:I

    .line 238
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mCoverItem:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    array-length v2, v3

    .line 240
    .local v2, "length":I
    if-eq p1, p2, :cond_0

    .line 242
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mSize:I

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 243
    .local v1, "contentStart":I
    add-int v3, v1, v2

    iget v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 244
    .local v0, "contentEnd":I
    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mContentStart:I

    if-gt v3, p1, :cond_2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I

    if-lt v3, p2, :cond_2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mContentStart:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    .line 245
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->setContentWindow(II)V

    goto :goto_0

    .end local v0    # "contentEnd":I
    .end local v1    # "contentStart":I
    .end local v2    # "length":I
    :cond_3
    move v3, v4

    .line 233
    goto :goto_1
.end method

.method public setLoadingListener(Lcom/lenovo/scg/gallery3d/app/LoadingListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/app/LoadingListener;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mLoadingListener:Lcom/lenovo/scg/gallery3d/app/LoadingListener;

    .line 263
    return-void
.end method

.method public setModelListener(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$DataListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$DataListener;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mDataListener:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader$DataListener;

    .line 259
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->mSize:I

    return v0
.end method
