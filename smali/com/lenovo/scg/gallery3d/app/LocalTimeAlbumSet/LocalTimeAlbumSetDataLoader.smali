.class public Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;
.super Ljava/lang/Object;
.source "LocalTimeAlbumSetDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;,
        Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaItemUpdateContent;,
        Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateContent;,
        Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetGetUpdateInfo;,
        Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MediaSetUpdateInfo;,
        Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MySourceListener;,
        Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;,
        Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;,
        Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumInfo;,
        Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$DataListener;
    }
.end annotation


# static fields
.field private static final INDEX_NONE:I = -0x1

.field private static final MIN_LOAD_COUNT:I = 0x4

.field private static final MSG_LOAD_FINISH:I = 0x2

.field private static final MSG_LOAD_START:I = 0x1

.field private static final MSG_RUN_OBJECT:I = 0x3

.field public static final M_LIMIT_ITEM_COUNT:I = 0x15

.field private static final TAG:Ljava/lang/String; = "wangwf1_LocalTimeAlbumSetDataAdapter"

.field private static mReloadTimes:I


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field private mDataListener:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$DataListener;

.field private mLastVersion:J

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingListener:Lcom/lenovo/scg/gallery3d/app/LoadingListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMediaSetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private mReloadTask:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;

.field private mSize:I

.field private final mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;

.field private final mSourceListener:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MySourceListener;

.field private mSourceVersion:J

.field private final mTotalCount:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mReloadTimes:I

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/data/MediaSet;I)V
    .locals 4
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p2, "albumSet"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .param p3, "cacheSize"    # I

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mMediaSetList:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mList:Ljava/util/ArrayList;

    .line 150
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mLastVersion:J

    .line 152
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mActiveStart:I

    .line 154
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mActiveEnd:I

    .line 156
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mContentStart:I

    .line 158
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mContentEnd:I

    .line 162
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mSourceVersion:J

    .line 178
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MySourceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MySourceListener;-><init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mSourceListener:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MySourceListener;

    .line 181
    invoke-static {p2}, Lcom/lenovo/scg/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/MediaSet;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 184
    new-array v0, p3, [I

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mTotalCount:[I

    .line 190
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$1;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$1;-><init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mMainHandler:Landroid/os/Handler;

    .line 207
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;)Lcom/lenovo/scg/gallery3d/app/LoadingListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mLoadingListener:Lcom/lenovo/scg/gallery3d/app/LoadingListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    .prologue
    .line 52
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mContentEnd:I

    return v0
.end method

.method static synthetic access$1002(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mContentEnd:I

    return p1
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    .prologue
    .line 52
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mActiveEnd:I

    return v0
.end method

.method static synthetic access$1102(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mActiveEnd:I

    return p1
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    .prologue
    .line 52
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mActiveStart:I

    return v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;)Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;
    .param p1, "x1"    # Ljava/util/concurrent/Callable;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1604()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mReloadTimes:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mReloadTimes:I

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;)Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mLastVersion:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;
    .param p1, "x1"    # J

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mLastVersion:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mMediaSetList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    .prologue
    .line 52
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mSize:I

    return v0
.end method

.method static synthetic access$802(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mSize:I

    return p1
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;)Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$DataListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mDataListener:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$DataListener;

    return-object v0
.end method

.method private assertIsActive(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 226
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mActiveStart:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mActiveEnd:I

    if-lt p1, v0, :cond_0

    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "%s not in (%s, %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mActiveStart:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mActiveEnd:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    return-void
.end method

.method private clearSlot(I)V
    .locals 2
    .param p1, "slotIndex"    # I

    .prologue
    .line 357
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mTotalCount:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 360
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
    .line 545
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 546
    .local v1, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TT;>;"
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 548
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 550
    :goto_0
    return-object v2

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    goto :goto_0

    .line 551
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 552
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
    .line 363
    iget v5, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mContentStart:I

    if-ne p1, v5, :cond_1

    iget v5, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mContentEnd:I

    if-ne p2, v5, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mTotalCount:[I

    array-length v2, v5

    .line 367
    .local v2, "length":I
    iget v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mContentStart:I

    .line 368
    .local v4, "start":I
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mContentEnd:I

    .line 370
    .local v0, "end":I
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mContentStart:I

    .line 371
    iput p2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mContentEnd:I

    .line 373
    if-ge p1, v0, :cond_2

    if-lt v4, p2, :cond_3

    .line 374
    :cond_2
    move v1, v4

    .local v1, "i":I
    move v3, v0

    .local v3, "n":I
    :goto_1
    if-ge v1, v3, :cond_5

    .line 375
    rem-int v5, v1, v2

    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->clearSlot(I)V

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 378
    .end local v1    # "i":I
    .end local v3    # "n":I
    :cond_3
    move v1, v4

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, p1, :cond_4

    .line 379
    rem-int v5, v1, v2

    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->clearSlot(I)V

    .line 378
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 381
    :cond_4
    move v1, p2

    move v3, v0

    .restart local v3    # "n":I
    :goto_3
    if-ge v1, v3, :cond_5

    .line 382
    rem-int v5, v1, v2

    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->clearSlot(I)V

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 385
    :cond_5
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;

    if-eqz v5, :cond_0

    .line 386
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method


# virtual methods
.method public findItem(Lcom/lenovo/scg/gallery3d/data/Path;)I
    .locals 3
    .param p1, "id"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 337
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mContentStart:I

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mContentEnd:I

    if-ge v0, v2, :cond_1

    .line 338
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    .line 339
    .local v1, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v2

    if-ne p1, v2, :cond_0

    move v2, v0

    .line 349
    .end local v1    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :goto_1
    return v2

    .line 337
    .restart local v1    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    .end local v1    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 344
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    .line 345
    .restart local v1    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v2

    if-ne p1, v2, :cond_2

    move v2, v0

    .line 346
    goto :goto_1

    .line 343
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 349
    .end local v1    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_3
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getActiveStart()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mActiveStart:I

    return v0
.end method

.method public getCountList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mMediaSetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 328
    new-instance v3, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumInfo;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mMediaSetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mMediaSetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;

    iget v5, v2, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;->mCount:I

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mMediaSetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;->mRealCount:I

    invoke-direct {v3, p0, v4, v5, v2}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumInfo;-><init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;Ljava/lang/String;II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_0
    return-object v1
.end method

.method public getDataIndex(I)I
    .locals 3
    .param p1, "listIndex"    # I

    .prologue
    .line 232
    const/4 v1, 0x0

    .line 233
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;->mMediaSetIndex:I

    if-ge v0, v2, :cond_0

    .line 234
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mMediaSetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;->mRealCount:I

    add-int/2addr v1, v2

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;->mItemIndex:I

    add-int/2addr v1, v2

    .line 237
    return v1
.end method

.method public getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->assertIsActive(I)V

    .line 268
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 269
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;->mItem:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    goto :goto_0
.end method

.method public getItemIndex(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 295
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 296
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    .line 300
    :goto_0
    return v0

    .line 297
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;

    iget v0, v1, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;->mItemIndex:I

    .line 298
    .local v0, "itemIndex":I
    goto :goto_0

    .line 300
    .end local v0    # "itemIndex":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemShowCount(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 285
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 286
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    .line 290
    :goto_0
    return v0

    .line 287
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;

    iget v0, v1, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;->mItemShowCount:I

    .line 288
    .local v0, "itemCount":I
    goto :goto_0

    .line 290
    .end local v0    # "itemCount":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 241
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->assertIsActive(I)V

    .line 243
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    :cond_0
    move-object v2, v3

    .line 254
    :goto_0
    return-object v2

    .line 244
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;

    iget v1, v2, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;->mMediaSetIndex:I

    .line 246
    .local v1, "mediaSetIndex":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;

    iget-boolean v0, v2, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;->mItemOverFlag:Z

    .line 247
    .local v0, "itemOverFlag":Z
    if-eqz v0, :cond_2

    .line 248
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mMediaSetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    goto :goto_0

    .line 251
    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    move-object v2, v3

    .line 252
    goto :goto_0

    .line 254
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mMediaSetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    goto :goto_0
.end method

.method public getMediaSets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 261
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mMediaSetList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getRealTotalCount(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->assertIsActive(I)V

    .line 306
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    .line 308
    :goto_0
    return v0

    .line 307
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;

    iget v0, v1, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;->mItemRealCount:I

    .line 308
    .local v0, "itemRealCount":I
    goto :goto_0
.end method

.method public getTotalCount(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, -0x1

    .line 273
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->assertIsActive(I)V

    .line 274
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    move v1, v2

    .line 279
    :goto_0
    return v1

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;

    iget v0, v1, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaItem;->mMediaSetIndex:I

    .line 276
    .local v0, "mediaSetIndex":I
    if-ne v0, v2, :cond_2

    move v1, v2

    .line 277
    goto :goto_0

    .line 279
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mMediaSetList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$AlbumMediaSet;->mCount:I

    goto :goto_0
.end method

.method public isActive(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 318
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitOk()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 410
    sget v1, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mReloadTimes:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->terminate()V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mSourceListener:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->removeContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    .line 217
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mSourceListener:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->addContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    .line 221
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;-><init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;

    .line 222
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$ReloadTask;->start()V

    .line 223
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v4, 0x0

    .line 391
    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mActiveStart:I

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mActiveEnd:I

    if-ne p2, v3, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    if-gt p1, p2, :cond_3

    sub-int v3, p2, p1

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mTotalCount:[I

    array-length v5, v5

    if-gt v3, v5, :cond_3

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mSize:I

    if-gt p2, v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->assertTrue(Z)V

    .line 395
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mActiveStart:I

    .line 396
    iput p2, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mActiveEnd:I

    .line 398
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mTotalCount:[I

    array-length v2, v3

    .line 400
    .local v2, "length":I
    if-eq p1, p2, :cond_0

    .line 402
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mSize:I

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 403
    .local v1, "contentStart":I
    add-int v3, v1, v2

    iget v4, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 404
    .local v0, "contentEnd":I
    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mContentStart:I

    if-gt v3, p1, :cond_2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mContentEnd:I

    if-lt v3, p2, :cond_2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mContentStart:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    .line 405
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->setContentWindow(II)V

    goto :goto_0

    .end local v0    # "contentEnd":I
    .end local v1    # "contentStart":I
    .end local v2    # "length":I
    :cond_3
    move v3, v4

    .line 393
    goto :goto_1
.end method

.method public setLoadingListener(Lcom/lenovo/scg/gallery3d/app/LoadingListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/app/LoadingListener;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mLoadingListener:Lcom/lenovo/scg/gallery3d/app/LoadingListener;

    .line 426
    return-void
.end method

.method public setModelListener(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$DataListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$DataListener;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mDataListener:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader$DataListener;

    .line 422
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetDataLoader;->mSize:I

    return v0
.end method
