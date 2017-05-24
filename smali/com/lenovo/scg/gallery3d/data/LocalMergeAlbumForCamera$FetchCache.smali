.class Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;
.super Ljava/lang/Object;
.source "LocalMergeAlbumForCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchCache"
.end annotation


# instance fields
.field private mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

.field private mCacheRef:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mStartPos:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/MediaSet;)V
    .locals 0
    .param p1, "baseSet"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 296
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;)Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    return-object v0
.end method


# virtual methods
.method public getItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 303
    const/16 v2, 0x40

    .line 304
    .local v2, "page_size":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v4

    # invokes: Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->isCameraPath(Lcom/lenovo/scg/gallery3d/data/Path;)Z
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->access$100(Lcom/lenovo/scg/gallery3d/data/Path;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 305
    if-lez p1, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-object v3

    .line 311
    :cond_1
    const/4 v2, 0x1

    .line 313
    :cond_2
    const/4 v1, 0x0

    .line 314
    .local v1, "needLoading":Z
    const/4 v0, 0x0

    .line 315
    .local v0, "cache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;->mCacheRef:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;->mStartPos:I

    if-lt p1, v4, :cond_3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;->mStartPos:I

    add-int/2addr v4, v2

    if-lt p1, v4, :cond_6

    .line 316
    :cond_3
    const/4 v1, 0x1

    .line 325
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 326
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;->mBaseSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v4, p1, v2}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 328
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;->mCacheRef:Ljava/util/ArrayList;

    .line 329
    iput p1, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;->mStartPos:I

    .line 332
    :cond_5
    iget v4, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;->mStartPos:I

    if-lt p1, v4, :cond_0

    iget v4, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;->mStartPos:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_0

    .line 336
    iget v3, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;->mStartPos:I

    sub-int v3, p1, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    goto :goto_0

    .line 319
    :cond_6
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;->mCacheRef:Ljava/util/ArrayList;

    .line 320
    if-nez v0, :cond_4

    .line 321
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera$FetchCache;->mCacheRef:Ljava/util/ArrayList;

    .line 300
    return-void
.end method
