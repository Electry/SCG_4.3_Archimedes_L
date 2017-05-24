.class public Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;
.super Lcom/lenovo/scg/gallery3d/data/MediaSet;
.source "LocalMergeAlbumForCamera.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;
    }
.end annotation


# static fields
.field private static final PAGE_SIZE:I = 0x40

.field private static final TAG:Ljava/lang/String; = "LocalMergeAlbumForCamera"

.field private static sCameraAllPath:Ljava/lang/String;

.field private static sInvalidate:Z


# instance fields
.field private final mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

.field private mBucketId:I

.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;

.field private mIndex:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mNeedInvalidateCacheAll:I

.field private mOthersCount:I

.field private mSources:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedOperation:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/local/all/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->sCameraAllPath:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->sInvalidate:Z

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/Path;Ljava/util/Comparator;[Lcom/lenovo/scg/gallery3d/data/MediaSet;ILcom/lenovo/scg/gallery3d/app/GalleryApp;)V
    .locals 3
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p3, "sources"    # [Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .param p4, "bucketId"    # I
    .param p5, "app"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/data/Path;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/MediaItem;",
            ">;[",
            "Lcom/lenovo/scg/gallery3d/data/MediaSet;",
            "I",
            "Lcom/lenovo/scg/gallery3d/app/GalleryApp;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    const/4 v2, -0x1

    .line 65
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;J)V

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSources:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 51
    iput v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mOthersCount:I

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mNeedInvalidateCacheAll:I

    .line 62
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mIndex:Ljava/util/TreeMap;

    .line 66
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mComparator:Ljava/util/Comparator;

    .line 69
    iput p4, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mBucketId:I

    .line 70
    iput v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mOthersCount:I

    .line 71
    iput-object p5, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 72
    sget-object v0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->sCameraAllPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->setAllMediaSet(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSources:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mName:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->sCameraAllPath:Ljava/lang/String;

    .line 80
    return-void

    .line 73
    :cond_0
    const-string v0, "Camera"

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/data/Path;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 30
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->isCameraPath(Lcom/lenovo/scg/gallery3d/data/Path;)Z

    move-result v0

    return v0
.end method

.method public static invalidate()V
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->sInvalidate:Z

    .line 389
    return-void
.end method

.method private invalidateCache()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 122
    iget v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mNeedInvalidateCacheAll:I

    if-gtz v2, :cond_0

    sget-boolean v2, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->sInvalidate:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 123
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSources:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 124
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 125
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;->invalidate()V

    .line 123
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_2
    iget v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mNeedInvalidateCacheAll:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mNeedInvalidateCacheAll:I

    .line 129
    const/4 v2, -0x1

    iput v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mOthersCount:I

    .line 130
    sput-boolean v4, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->sInvalidate:Z

    .line 140
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mIndex:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clear()V

    .line 141
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mIndex:Ljava/util/TreeMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSources:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    new-array v4, v4, [I

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-void

    .line 132
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSources:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .restart local v1    # "n":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 133
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;

    aget-object v2, v2, v0

    # getter for: Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;->access$000(Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->isCameraPath(Lcom/lenovo/scg/gallery3d/data/Path;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 134
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    .line 135
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;->invalidate()V

    .line 132
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static isCameraPath(Lcom/lenovo/scg/gallery3d/data/Path;)Z
    .locals 3
    .param p0, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/local/all/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private reInit()V
    .locals 9

    .prologue
    const/4 v6, -0x1

    .line 87
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSources:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 88
    .local v3, "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->isCameraPath(Lcom/lenovo/scg/gallery3d/data/Path;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 89
    invoke-virtual {v3, p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->removeContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    goto :goto_0

    .line 92
    .end local v3    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_1
    sget-object v5, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->sCameraAllPath:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->setAllMediaSet(Ljava/lang/String;)V

    .line 93
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSources:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    const/4 v4, 0x0

    .line 94
    .local v4, "supported":I
    :goto_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSources:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;

    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSources:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_2
    if-ge v0, v2, :cond_3

    .line 96
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;

    new-instance v8, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSources:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-direct {v8, v5}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;-><init>(Lcom/lenovo/scg/gallery3d/data/MediaSet;)V

    aput-object v8, v7, v0

    .line 97
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSources:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSupportedOperations()I

    move-result v5

    and-int/2addr v4, v5

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v2    # "n":I
    .end local v4    # "supported":I
    :cond_2
    move v4, v6

    .line 93
    goto :goto_1

    .line 99
    .restart local v0    # "i":I
    .restart local v2    # "n":I
    .restart local v4    # "supported":I
    :cond_3
    iput v4, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSupportedOperation:I

    .line 100
    const/4 v5, 0x0

    sput-object v5, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->sCameraAllPath:Ljava/lang/String;

    .line 101
    iput v6, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mOthersCount:I

    .line 102
    const/4 v5, 0x1

    iput v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mNeedInvalidateCacheAll:I

    .line 103
    return-void
.end method

.method public static setCameraAllPath(Ljava/lang/String;)V
    .locals 4
    .param p0, "allPath"    # Ljava/lang/String;

    .prologue
    .line 377
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "paths":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/local/all/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 385
    :goto_0
    return-void

    .line 384
    :cond_0
    sput-object p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->sCameraAllPath:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateData()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 107
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;

    if-nez v3, :cond_2

    .line 108
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSources:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    move v2, v4

    .line 109
    .local v2, "supported":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSources:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;

    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSources:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 111
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;

    new-instance v6, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSources:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-direct {v6, v3}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;-><init>(Lcom/lenovo/scg/gallery3d/data/MediaSet;)V

    aput-object v6, v5, v0

    .line 112
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSources:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSupportedOperations()I

    move-result v3

    and-int/2addr v2, v3

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "supported":I
    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    .line 114
    .restart local v0    # "i":I
    .restart local v1    # "n":I
    .restart local v2    # "supported":I
    :cond_1
    iput v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSupportedOperation:I

    .line 116
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "supported":I
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mIndex:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->clear()V

    .line 117
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mIndex:Ljava/util/TreeMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSources:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    new-array v5, v5, [I

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 3

    .prologue
    .line 273
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSources:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 274
    .local v1, "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->delete()V

    goto :goto_0

    .line 276
    .end local v1    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_0
    return-void
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 146
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "bucketId"

    iget v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mBucketId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 14
    .param p1, "start"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 164
    .local v10, "teststart":J
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mIndex:Ljava/util/TreeMap;

    add-int/lit8 v12, p1, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 165
    .local v0, "head":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;[I>;"
    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 166
    .local v4, "markPos":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    invoke-virtual {v9}, [I->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 167
    .local v8, "subPos":[I
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSources:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    new-array v7, v9, [Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 169
    .local v7, "slot":[Lcom/lenovo/scg/gallery3d/data/MediaItem;
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSources:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    .line 171
    .local v6, "size":I
    array-length v9, v8

    if-le v6, v9, :cond_1

    .line 172
    const-string v9, "LocalMergeAlbumForCamera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mSources.size() = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSources:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "subPos.length = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 207
    :cond_0
    return-object v5

    .line 177
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_2

    .line 178
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;

    aget-object v9, v9, v1

    aget v12, v8, v1

    invoke-virtual {v9, v12}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;->getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v9

    aput-object v9, v7, v1

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    move v1, v4

    :goto_1
    add-int v9, p1, p2

    if-ge v1, v9, :cond_0

    .line 183
    const/4 v3, -0x1

    .line 184
    .local v3, "k":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v6, :cond_5

    .line 185
    aget-object v9, v7, v2

    if-eqz v9, :cond_4

    .line 186
    const/4 v9, -0x1

    if-eq v3, v9, :cond_3

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mComparator:Ljava/util/Comparator;

    aget-object v12, v7, v2

    aget-object v13, v7, v3

    invoke-interface {v9, v12, v13}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    if-gez v9, :cond_4

    .line 187
    :cond_3
    move v3, v2

    .line 184
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 193
    :cond_5
    const/4 v9, -0x1

    if-eq v3, v9, :cond_0

    .line 196
    aget v9, v8, v3

    add-int/lit8 v9, v9, 0x1

    aput v9, v8, v3

    .line 197
    if-lt v1, p1, :cond_6

    .line 198
    aget-object v9, v7, v3

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_6
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mFetcher:[Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;

    aget-object v9, v9, v3

    aget v12, v8, v3

    invoke-virtual {v9, v12}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;->getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v9

    aput-object v9, v7, v3

    .line 203
    add-int/lit8 v9, v1, 0x1

    rem-int/lit8 v9, v9, 0x40

    if-nez v9, :cond_7

    .line 204
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mIndex:Ljava/util/TreeMap;

    add-int/lit8 v12, v1, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8}, [I->clone()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->getTotalMediaItemCount()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSupportedOperation:I

    return v0
.end method

.method public getTotalMediaItemCount()I
    .locals 10

    .prologue
    .line 212
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 213
    .local v6, "start":J
    const/4 v0, 0x0

    .line 214
    .local v0, "count":I
    iget v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mOthersCount:I

    if-ltz v5, :cond_3

    .line 215
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSources:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 216
    .local v4, "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->isCameraPath(Lcom/lenovo/scg/gallery3d/data/Path;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 217
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v5

    add-int/2addr v0, v5

    .line 221
    .end local v4    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_1
    iget v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mOthersCount:I

    add-int/2addr v0, v5

    .line 238
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 239
    .local v2, "end":J
    return v0

    .line 223
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "end":J
    :cond_3
    const/4 v5, 0x0

    iput v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mOthersCount:I

    .line 224
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSources:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 225
    .restart local v4    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->isCameraPath(Lcom/lenovo/scg/gallery3d/data/Path;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 226
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_0

    .line 228
    :cond_4
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v5

    if-lez v5, :cond_5

    .line 229
    add-int/lit8 v0, v0, 0x1

    .line 230
    iget v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mOthersCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mOthersCount:I

    goto :goto_0

    .line 232
    :cond_5
    const-string v5, "LocalMergeAlbumForCamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LocalMergeAlbumForCamera.getTotalMediaItemCount invalid path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public insertMediaSet(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 346
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v0

    .line 347
    .local v0, "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSources:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSources:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->isCameraPath(Lcom/lenovo/scg/gallery3d/data/Path;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->addContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    .line 353
    :cond_0
    return-void
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->notifyContentChanged()V

    .line 264
    return-void
.end method

.method public declared-synchronized reload()J
    .locals 8

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    sget-object v3, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->sCameraAllPath:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->reInit()V

    .line 247
    :cond_0
    const/4 v0, 0x0

    .line 248
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSources:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 249
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSources:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->reload()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mDataVersion:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    const/4 v0, 0x1

    .line 248
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    :cond_2
    if-eqz v0, :cond_3

    .line 252
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->nextVersionNumber()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mDataVersion:J

    .line 253
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->updateData()V

    .line 254
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->invalidateCache()V

    .line 256
    :cond_3
    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mDataVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v4

    .line 244
    .end local v0    # "changed":Z
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public rotate(I)V
    .locals 3
    .param p1, "degrees"    # I

    .prologue
    .line 280
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSources:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 281
    .local v1, "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->rotate(I)V

    goto :goto_0

    .line 283
    .end local v1    # "set":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_0
    return-void
.end method

.method public setAllMediaSet(Ljava/lang/String;)V
    .locals 5
    .param p1, "allPath"    # Ljava/lang/String;

    .prologue
    .line 356
    const-string v2, "LocalMergeAlbumForCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string v2, "LocalMergeAlbumForCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaSetUtils.CAMERA_BUCKET_ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 374
    :cond_0
    return-void

    .line 363
    :cond_1
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, "paths":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    aget-object v2, v1, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/local/all/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 370
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->mSources:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 371
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 372
    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->insertMediaSet(Ljava/lang/String;)V

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
