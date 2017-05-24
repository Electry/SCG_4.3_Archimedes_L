.class public Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;
.super Ljava/lang/Object;
.source "GalleryFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$ReadPictureFromFileTask;,
        Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$WritePictureToFileTask;,
        Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;,
        Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;
    }
.end annotation


# static fields
.field private static final ADJUST_CACHE_SIZE:J = 0x4600000L

.field public static final ADJUST_CACHE_USERS_COUNT:J = 0x50L

.field private static final EVERYADJUST_CACHE_SIZE:J = 0x500000L

.field private static final HEADER_PICTURE_PREFIX:Ljava/lang/String; = "header-"

.field private static final MAX_CACHE_SIZE:J = 0x6400000L

.field public static final MAX_CACHE_USERS_COUNT:J = 0x64L

.field private static final PREPARING:J = -0x2L

.field private static final TAG:Ljava/lang/String; = "wangwf1_GalleryFileManager"

.field private static final UNAVAILABLE:J = -0x1L

.field private static final UNKNOWN_SIZE:J = -0x3L

.field private static final WB_CACHE_PATH:Ljava/lang/String; = "weibocache/"

.field private static sGalleryFileManager:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;


# instance fields
.field private lockAdjustCacheFile:Ljava/lang/Object;

.field private mAllFileSize:J

.field private mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAdjustCache:Z

.field private mTaskArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->sGalleryFileManager:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->mAllFileSize:J

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->mIsAdjustCache:Z

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->lockAdjustCacheFile:Ljava/lang/Object;

    .line 58
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->mComparator:Ljava/util/Comparator;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->mTaskArray:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->mTaskArray:Ljava/util/ArrayList;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;[BLjava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->writePictureToFileImpl([BLjava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->readPictureFromFileImpl(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized adjustCacheFile()V
    .locals 6

    .prologue
    .line 427
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->mAllFileSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v4, 0x6400000

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 443
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 430
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getWeiBoPath()Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, "weiboPath":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 434
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 435
    .local v0, "weiboDir":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->adjustUserCount(Ljava/io/File;)V

    .line 436
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->mAllFileSize:J

    const-wide/32 v4, 0x4600000

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 437
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->fetchAllFileSize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 427
    .end local v0    # "weiboDir":Ljava/io/File;
    .end local v1    # "weiboPath":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 440
    .restart local v0    # "weiboDir":Ljava/io/File;
    .restart local v1    # "weiboPath":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->adjustUserFile(Ljava/io/File;)V

    .line 441
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->fetchAllFileSize()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private adjustUnAvailableSpace()V
    .locals 12

    .prologue
    .line 626
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getAvailableSpace()J

    move-result-wide v0

    .line 627
    .local v0, "availableSpace":J
    const-wide/32 v8, 0x500000

    cmp-long v5, v0, v8

    if-gez v5, :cond_0

    .line 628
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getWeiBoPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 629
    .local v4, "file":Ljava/io/File;
    const-string/jumbo v5, "wwf"

    const-string v8, "delete all*********************************************"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 631
    .local v6, "start":J
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->deleteFiles(Ljava/io/File;)V

    .line 632
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 633
    .local v2, "end":J
    const-string/jumbo v5, "wwf"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delete all********************************************* + end-start = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v10, v2, v6

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    .end local v2    # "end":J
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "start":J
    :cond_0
    return-void
.end method

.method private adjustUserCount(Ljava/io/File;)V
    .locals 14
    .param p1, "weiboDir"    # Ljava/io/File;

    .prologue
    .line 446
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 447
    .local v8, "start":J
    const-string/jumbo v7, "wwf"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "adjustUserCount mAllFileSize = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->mAllFileSize:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 449
    .local v4, "files":[Ljava/io/File;
    array-length v6, v4

    .line 450
    .local v6, "length":I
    int-to-long v10, v6

    const-wide/16 v12, 0x64

    cmp-long v7, v10, v12

    if-gtz v7, :cond_0

    .line 477
    :goto_0
    return-void

    .line 454
    :cond_0
    int-to-long v10, v6

    const-wide/16 v12, 0x64

    cmp-long v7, v10, v12

    if-lez v7, :cond_2

    .line 455
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v6, :cond_2

    .line 456
    aget-object v1, v4, v5

    .line 457
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "childNames":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v7, v0

    const/4 v10, 0x1

    if-gt v7, v10, :cond_1

    .line 459
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->deleteFiles(Ljava/io/File;)V

    .line 455
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 465
    .end local v0    # "childNames":[Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "i":I
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 466
    array-length v6, v4

    .line 467
    int-to-long v10, v6

    const-wide/16 v12, 0x50

    cmp-long v7, v10, v12

    if-lez v7, :cond_3

    .line 468
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->mComparator:Ljava/util/Comparator;

    invoke-static {v4, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 470
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    array-length v7, v4

    add-int/lit8 v7, v7, -0x50

    if-ge v5, v7, :cond_3

    .line 471
    aget-object v1, v4, v5

    .line 472
    .restart local v1    # "file":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->deleteFiles(Ljava/io/File;)V

    .line 470
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 475
    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "i":I
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 476
    .local v2, "end":J
    const-string/jumbo v7, "wwf"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "adjustUserCount = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v12, v2, v8

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private adjustUserFile(Ljava/io/File;)V
    .locals 10
    .param p1, "weiboDir"    # Ljava/io/File;

    .prologue
    .line 480
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 481
    .local v4, "start":J
    const-string/jumbo v6, "wwf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adjustUserFile mAllFileSize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->mAllFileSize:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .local v2, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-direct {p0, v2, p1}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->traversalFile(Ljava/util/ArrayList;Ljava/io/File;)V

    .line 484
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->mComparator:Ljava/util/Comparator;

    invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 485
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 486
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-direct {p0, v6}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->deleteFiles(Ljava/io/File;)V

    .line 488
    iget-wide v6, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->mAllFileSize:J

    const-wide/32 v8, 0x4600000

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1

    .line 492
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 493
    .local v0, "end":J
    const-string/jumbo v6, "wwf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adjustUserFile = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v0, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    return-void

    .line 485
    .end local v0    # "end":J
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static checkDir(Ljava/lang/String;)Z
    .locals 4
    .param p0, "dirPath"    # Ljava/lang/String;

    .prologue
    .line 386
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 387
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 388
    const-string/jumbo v1, "wangwf1_GalleryFileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkDir error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v1, 0x0

    .line 391
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private decreaseAllFileSize(J)V
    .locals 5
    .param p1, "size"    # J

    .prologue
    .line 405
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->mAllFileSize:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->mAllFileSize:J

    .line 406
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->mAllFileSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 407
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->fetchAllFileSize()V

    .line 409
    :cond_0
    return-void
.end method

.method private deleteFiles(Ljava/io/File;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 508
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 509
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "childNames":[Ljava/lang/String;
    array-length v2, v0

    .line 511
    .local v2, "length":I
    if-lez v2, :cond_0

    .line 513
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 514
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->deleteFiles(Ljava/io/File;)V

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    .end local v0    # "childNames":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 520
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->decreaseAllFileSize(J)V

    .line 521
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 523
    :cond_1
    return-void
.end method

.method public static destory()V
    .locals 0

    .prologue
    .line 314
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;

    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;->destory()V

    .line 315
    return-void
.end method

.method private declared-synchronized fetchAllFileSize()V
    .locals 12

    .prologue
    .line 412
    monitor-enter p0

    :try_start_0
    const-string/jumbo v6, "wwf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mAllFileSize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->mAllFileSize:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 414
    .local v2, "start":J
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getWeiBoPath()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 415
    .local v5, "weiboPath":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 423
    :goto_0
    monitor-exit p0

    return-void

    .line 418
    :cond_0
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 419
    .local v4, "weiboDir":Ljava/io/File;
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getFileSize(Ljava/io/File;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->mAllFileSize:J

    .line 420
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 421
    .local v0, "end":J
    const-string/jumbo v6, "wwf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fetchAllFileSize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v0, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string/jumbo v6, "wwf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->mAllFileSize:J

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "M"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 412
    .end local v0    # "end":J
    .end local v2    # "start":J
    .end local v4    # "weiboDir":Ljava/io/File;
    .end local v5    # "weiboPath":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private static getAvailableSpace()J
    .locals 9

    .prologue
    const-wide/16 v4, -0x1

    .line 601
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 602
    .local v3, "state":Ljava/lang/String;
    const-string/jumbo v6, "wangwf1_GalleryFileManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "External storage state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const-string v6, "checking"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 604
    const-wide/16 v4, -0x2

    .line 622
    :cond_0
    :goto_0
    return-wide v4

    .line 606
    :cond_1
    const-string/jumbo v6, "mounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 610
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getWeiBoPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 611
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 612
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 617
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getWeiBoPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 618
    .local v2, "stat":Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    goto :goto_0

    .line 619
    .end local v2    # "stat":Landroid/os/StatFs;
    :catch_0
    move-exception v1

    .line 620
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "wangwf1_GalleryFileManager"

    const-string v5, "Fail to access external storage"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 622
    const-wide/16 v4, -0x3

    goto :goto_0
.end method

.method private getFileSize(Ljava/io/File;)J
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 527
    const-wide/16 v2, 0x0

    .line 528
    .local v2, "size":J
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 529
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 530
    .local v0, "flist":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 531
    aget-object v4, v0, v1

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getFileSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 530
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 533
    :cond_0
    const-wide/16 v4, 0x1000

    add-long/2addr v2, v4

    .line 537
    .end local v0    # "flist":[Ljava/io/File;
    .end local v1    # "i":I
    :goto_1
    return-wide v2

    .line 535
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_1
.end method

.method public static getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->sGalleryFileManager:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->sGalleryFileManager:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    .line 100
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->sGalleryFileManager:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    return-object v0
.end method

.method public static getWeiBoPath()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 369
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 371
    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGRootPath()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "scgPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->checkDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v1, v2

    .line 382
    :cond_0
    :goto_0
    return-object v1

    .line 376
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "weibocache/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "weiboPath":Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->checkDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 378
    goto :goto_0

    .end local v0    # "scgPath":Ljava/lang/String;
    .end local v1    # "weiboPath":Ljava/lang/String;
    :cond_2
    move-object v1, v2

    .line 382
    goto :goto_0
.end method

.method private increaseAllFileSize(J)V
    .locals 5
    .param p1, "size"    # J

    .prologue
    .line 395
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->mAllFileSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 396
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->fetchAllFileSize()V

    .line 398
    :cond_0
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->mAllFileSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->mAllFileSize:J

    .line 399
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->mAllFileSize:J

    const-wide/32 v2, 0x6400000

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 400
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->adjustCacheFile()V

    .line 402
    :cond_1
    return-void
.end method

.method private readPictureFromFileImpl(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "person"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "filetype"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

    .prologue
    const/4 v4, 0x1

    .line 171
    invoke-virtual {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "filePath":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 173
    const/4 v0, 0x0

    .line 189
    :goto_0
    return-object v0

    .line 175
    :cond_0
    const/4 v0, 0x0

    .line 177
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v3, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;->WEIBO_PICTURE_THUMBNAL:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

    if-ne p3, v3, :cond_1

    .line 178
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeFile(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_1
    sget-object v3, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;->WEIBO_PICTURE:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

    if-ne p3, v3, :cond_2

    .line 180
    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeFile(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 182
    :cond_2
    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeFile(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "readPictureFromFileImpl error:%s"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private readPictureFromFileImpl(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;II)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "person"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "filetype"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;
    .param p4, "maxW"    # I
    .param p5, "maxH"    # I

    .prologue
    const/4 v7, 0x0

    .line 202
    invoke-virtual {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;)Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, "filePath":Ljava/lang/String;
    const/4 v4, 0x0

    .line 205
    .local v4, "fs":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 207
    .local v0, "bs":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    .end local v4    # "fs":Ljava/io/FileInputStream;
    .local v5, "fs":Ljava/io/FileInputStream;
    if-eqz v5, :cond_4

    .line 209
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 210
    .end local v0    # "bs":Ljava/io/BufferedInputStream;
    .local v1, "bs":Ljava/io/BufferedInputStream;
    if-eqz v1, :cond_3

    .line 211
    :try_start_2
    invoke-static {v3, p4, p5}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->setBitmapOption(Ljava/lang/String;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v6

    .line 213
    .local v6, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x0

    invoke-static {v1, v8, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v7

    .line 220
    if-eqz v1, :cond_0

    .line 221
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 223
    :cond_0
    if-eqz v5, :cond_1

    .line 224
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    move-object v0, v1

    .end local v1    # "bs":Ljava/io/BufferedInputStream;
    .restart local v0    # "bs":Ljava/io/BufferedInputStream;
    move-object v4, v5

    .line 230
    .end local v5    # "fs":Ljava/io/FileInputStream;
    .end local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v4    # "fs":Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    return-object v7

    .line 226
    .end local v0    # "bs":Ljava/io/BufferedInputStream;
    .end local v4    # "fs":Ljava/io/FileInputStream;
    .restart local v1    # "bs":Ljava/io/BufferedInputStream;
    .restart local v5    # "fs":Ljava/io/FileInputStream;
    .restart local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    .line 227
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_3
    move-object v0, v1

    .line 220
    .end local v1    # "bs":Ljava/io/BufferedInputStream;
    .restart local v0    # "bs":Ljava/io/BufferedInputStream;
    :cond_4
    if-eqz v0, :cond_5

    .line 221
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 223
    :cond_5
    if-eqz v5, :cond_6

    .line 224
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_6
    move-object v4, v5

    .line 228
    .end local v5    # "fs":Ljava/io/FileInputStream;
    .restart local v4    # "fs":Ljava/io/FileInputStream;
    goto :goto_1

    .line 226
    .end local v4    # "fs":Ljava/io/FileInputStream;
    .restart local v5    # "fs":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 227
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v5

    .line 229
    .end local v5    # "fs":Ljava/io/FileInputStream;
    .restart local v4    # "fs":Ljava/io/FileInputStream;
    goto :goto_1

    .line 216
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 217
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 220
    if-eqz v0, :cond_7

    .line 221
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 223
    :cond_7
    if-eqz v4, :cond_2

    .line 224
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 226
    :catch_3
    move-exception v2

    .line 227
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 219
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 220
    :goto_3
    if-eqz v0, :cond_8

    .line 221
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 223
    :cond_8
    if-eqz v4, :cond_9

    .line 224
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 228
    :cond_9
    :goto_4
    throw v7

    .line 226
    :catch_4
    move-exception v2

    .line 227
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 219
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "fs":Ljava/io/FileInputStream;
    .restart local v5    # "fs":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fs":Ljava/io/FileInputStream;
    .restart local v4    # "fs":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0    # "bs":Ljava/io/BufferedInputStream;
    .end local v4    # "fs":Ljava/io/FileInputStream;
    .restart local v1    # "bs":Ljava/io/BufferedInputStream;
    .restart local v5    # "fs":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "bs":Ljava/io/BufferedInputStream;
    .restart local v0    # "bs":Ljava/io/BufferedInputStream;
    move-object v4, v5

    .end local v5    # "fs":Ljava/io/FileInputStream;
    .restart local v4    # "fs":Ljava/io/FileInputStream;
    goto :goto_3

    .line 216
    .end local v4    # "fs":Ljava/io/FileInputStream;
    .restart local v5    # "fs":Ljava/io/FileInputStream;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5    # "fs":Ljava/io/FileInputStream;
    .restart local v4    # "fs":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0    # "bs":Ljava/io/BufferedInputStream;
    .end local v4    # "fs":Ljava/io/FileInputStream;
    .restart local v1    # "bs":Ljava/io/BufferedInputStream;
    .restart local v5    # "fs":Ljava/io/FileInputStream;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "bs":Ljava/io/BufferedInputStream;
    .restart local v0    # "bs":Ljava/io/BufferedInputStream;
    move-object v4, v5

    .end local v5    # "fs":Ljava/io/FileInputStream;
    .restart local v4    # "fs":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private static setBitmapOption(Ljava/lang/String;II)Landroid/graphics/BitmapFactory$Options;
    .locals 7
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 242
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 243
    .local v0, "opt":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 245
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 247
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 248
    .local v2, "outWidth":I
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 249
    .local v1, "outHeight":I
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 250
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 252
    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 255
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 256
    div-int v4, v2, p1

    div-int v5, v1, p2

    add-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 257
    .local v3, "sampleSize":I
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 260
    .end local v3    # "sampleSize":I
    :cond_0
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 261
    return-object v0
.end method

.method private traversalFile(Ljava/util/ArrayList;Ljava/io/File;)V
    .locals 3
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 497
    .local p1, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 498
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 499
    .local v0, "flist":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 500
    aget-object v2, v0, v1

    invoke-direct {p0, p1, v2}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->traversalFile(Ljava/util/ArrayList;Ljava/io/File;)V

    .line 499
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 503
    .end local v0    # "flist":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_1
    return-void
.end method

.method private writePictureToFileImpl([BLjava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;)Z
    .locals 8
    .param p1, "bytes"    # [B
    .param p2, "person"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "filetype"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

    .prologue
    const/4 v4, 0x0

    .line 318
    if-nez p1, :cond_1

    .line 344
    :cond_0
    :goto_0
    return v4

    .line 321
    :cond_1
    array-length v5, p1

    int-to-long v6, v5

    invoke-direct {p0, v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->increaseAllFileSize(J)V

    .line 322
    invoke-virtual {p0, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;)Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "filePath":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 326
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 329
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 330
    .local v3, "fout":Ljava/io/FileOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 331
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 343
    const-string/jumbo v4, "wangwf1_GalleryFileManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writePictureToFile ok : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v4, 0x1

    goto :goto_0

    .line 332
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->adjustUnAvailableSpace()V

    .line 335
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 337
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 339
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->adjustUnAvailableSpace()V

    .line 340
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public cancelAllTask()V
    .locals 6

    .prologue
    .line 84
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 85
    .local v1, "size":I
    const-string v3, "ct"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "will cancel local file task, size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 87
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;

    .line 88
    .local v2, "task":Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;->cancelTask()V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v2    # "task":Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 91
    return-void
.end method

.method public getFilePath(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;)Ljava/lang/String;
    .locals 6
    .param p1, "person"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "filetype"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

    .prologue
    const/4 v2, 0x0

    .line 348
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 349
    :cond_0
    const-string/jumbo v3, "wangwf1_GalleryFileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFilePath name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_1
    :goto_0
    return-object v2

    .line 352
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getWeiBoPath()Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "weiboPath":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 357
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "personPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->checkDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 359
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->adjustUnAvailableSpace()V

    goto :goto_0

    .line 362
    :cond_3
    sget-object v2, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;->HEADER_PICTURE:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

    if-ne p3, v2, :cond_4

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "header-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 365
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public readPictureFromFile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "person"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 132
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;->WEIBO_PICTURE:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->readPictureFromFile(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public readPictureFromFile(Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "person"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "maxW"    # I
    .param p4, "maxH"    # I

    .prologue
    .line 143
    sget-object v3, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;->WEIBO_PICTURE:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->readPictureFromFile(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public readPictureFromFile(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "person"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "filetype"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->readPictureFromFileImpl(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public readPictureFromFile(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "person"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "filetype"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;
    .param p4, "maxW"    # I
    .param p5, "maxH"    # I

    .prologue
    .line 122
    invoke-direct/range {p0 .. p5}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->readPictureFromFileImpl(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public readPictureFromFileAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;)V
    .locals 6
    .param p1, "person"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "filetype"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;
    .param p4, "listener"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;

    .prologue
    .line 154
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$ReadPictureFromFileTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$ReadPictureFromFileTask;-><init>(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;)V

    .line 155
    .local v0, "task":Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;->submitToRead(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;)Z

    .line 156
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method public readPictureFromFileAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;)V
    .locals 1
    .param p1, "person"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;

    .prologue
    .line 167
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;->WEIBO_PICTURE:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->readPictureFromFileAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;)V

    .line 168
    return-void
.end method

.method public writePictureToFile([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "person"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 272
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;->WEIBO_PICTURE:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->writePictureToFile([BLjava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;)Z

    move-result v0

    return v0
.end method

.method public writePictureToFile([BLjava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;)Z
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "person"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "filetype"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

    .prologue
    .line 284
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->writePictureToFileImpl([BLjava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;)Z

    move-result v0

    return v0
.end method

.method public writePictureToFileAsync([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "person"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 295
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;->WEIBO_PICTURE:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->writePictureToFileAsync([BLjava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;)Z

    move-result v0

    return v0
.end method

.method public writePictureToFileAsync([BLjava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;)Z
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "person"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "filetype"    # Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

    .prologue
    .line 307
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$WritePictureToFileTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$WritePictureToFileTask;-><init>(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;[BLjava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;)V

    .line 308
    .local v0, "task":Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;->submitToWrite(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;)Z

    .line 309
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->mTaskArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    const/4 v1, 0x1

    return v1
.end method
