.class public Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$ReadPictureFromFileTask;,
        Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$WritePictureToFileTask;,
        Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;,
        Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$readPictureListener;
    }
.end annotation


# static fields
.field private static final ADJUST_CACHE_SIZE:J = 0x4600000L

.field public static final ADJUST_CACHE_USERS_COUNT:J = 0x50L

.field private static final EVERYADJUST_CACHE_SIZE:J = 0x500000L

.field private static FILEPATH:Ljava/lang/String; = null

.field private static final HEADER_PICTURE_PREFIX:Ljava/lang/String; = "header-"

.field private static final MAX_CACHE_SIZE:J = 0x6400000L

.field public static final MAX_CACHE_USERS_COUNT:J = 0x64L

.field private static final PREPARING:J = -0x2L

.field private static final TAG:Ljava/lang/String; = "FileManager"

.field private static final UNAVAILABLE:J = -0x1L

.field private static final UNKNOWN_SIZE:J = -0x3L

.field private static final WB_CACHE_PATH:Ljava/lang/String; = "material_cache/"

.field private static sGalleryFileManager:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;


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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/material_download/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->FILEPATH:Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->sGalleryFileManager:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->mAllFileSize:J

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->mIsAdjustCache:Z

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->lockAdjustCacheFile:Ljava/lang/Object;

    .line 90
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$1;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->mComparator:Ljava/util/Comparator;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;[BLjava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->writePictureToFileImpl([BLjava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->readPictureFromFileImpl(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized adjustCacheFile()V
    .locals 6

    .prologue
    .line 356
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->mAllFileSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v4, 0x6400000

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 372
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 359
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->getWeiBoPath()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, "weiboPath":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 363
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    .local v0, "weiboDir":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->adjustUserCount(Ljava/io/File;)V

    .line 365
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->mAllFileSize:J

    const-wide/32 v4, 0x4600000

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 366
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->fetchAllFileSize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 356
    .end local v0    # "weiboDir":Ljava/io/File;
    .end local v1    # "weiboPath":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 369
    .restart local v0    # "weiboDir":Ljava/io/File;
    .restart local v1    # "weiboPath":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->adjustUserFile(Ljava/io/File;)V

    .line 370
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->fetchAllFileSize()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private adjustUnAvailableSpace()V
    .locals 12

    .prologue
    .line 557
    invoke-static {}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->getAvailableSpace()J

    move-result-wide v0

    .line 558
    .local v0, "availableSpace":J
    const-wide/32 v8, 0x500000

    cmp-long v5, v0, v8

    if-gez v5, :cond_0

    .line 559
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->getWeiBoPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 560
    .local v4, "file":Ljava/io/File;
    const-string/jumbo v5, "update by caojl from wwf"

    const-string v8, "delete all*********************************************"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 562
    .local v6, "start":J
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->deleteFiles(Ljava/io/File;)V

    .line 563
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 564
    .local v2, "end":J
    const-string/jumbo v5, "update by caojl from wwf"

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

    .line 566
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
    .line 375
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 376
    .local v8, "start":J
    const-string/jumbo v7, "update by caojl from update by caojl from wwf"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "adjustUserCount mAllFileSize = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->mAllFileSize:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 378
    .local v4, "files":[Ljava/io/File;
    array-length v6, v4

    .line 379
    .local v6, "length":I
    int-to-long v10, v6

    const-wide/16 v12, 0x64

    cmp-long v7, v10, v12

    if-gtz v7, :cond_0

    .line 406
    :goto_0
    return-void

    .line 383
    :cond_0
    int-to-long v10, v6

    const-wide/16 v12, 0x64

    cmp-long v7, v10, v12

    if-lez v7, :cond_2

    .line 384
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v6, :cond_2

    .line 385
    aget-object v1, v4, v5

    .line 386
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "childNames":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v7, v0

    const/4 v10, 0x1

    if-gt v7, v10, :cond_1

    .line 388
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->deleteFiles(Ljava/io/File;)V

    .line 384
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 394
    .end local v0    # "childNames":[Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "i":I
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 395
    array-length v6, v4

    .line 396
    int-to-long v10, v6

    const-wide/16 v12, 0x50

    cmp-long v7, v10, v12

    if-lez v7, :cond_3

    .line 397
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->mComparator:Ljava/util/Comparator;

    invoke-static {v4, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 399
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    array-length v7, v4

    add-int/lit8 v7, v7, -0x50

    if-ge v5, v7, :cond_3

    .line 400
    aget-object v1, v4, v5

    .line 401
    .restart local v1    # "file":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->deleteFiles(Ljava/io/File;)V

    .line 399
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 404
    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "i":I
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 405
    .local v2, "end":J
    const-string/jumbo v7, "update by caojl from update by caojl from wwf"

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
    .line 409
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 410
    .local v4, "start":J
    const-string/jumbo v6, "update by caojl from update by caojl from wwf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adjustUserFile mAllFileSize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->mAllFileSize:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v2, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-direct {p0, v2, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->traversalFile(Ljava/util/ArrayList;Ljava/io/File;)V

    .line 413
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->mComparator:Ljava/util/Comparator;

    invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 414
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 415
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-direct {p0, v6}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->deleteFiles(Ljava/io/File;)V

    .line 417
    iget-wide v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->mAllFileSize:J

    const-wide/32 v8, 0x4600000

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1

    .line 421
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 422
    .local v0, "end":J
    const-string/jumbo v6, "update by caojl from wwf"

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

    .line 423
    return-void

    .line 414
    .end local v0    # "end":J
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static checkDir(Ljava/lang/String;)Z
    .locals 4
    .param p0, "dirPath"    # Ljava/lang/String;

    .prologue
    .line 315
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
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

    .line 317
    const-string v1, "FileManager"

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

    .line 318
    const/4 v1, 0x0

    .line 320
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
    .line 334
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->mAllFileSize:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->mAllFileSize:J

    .line 335
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->mAllFileSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 336
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->fetchAllFileSize()V

    .line 338
    :cond_0
    return-void
.end method

.method private deleteFiles(Ljava/io/File;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 437
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 438
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "childNames":[Ljava/lang/String;
    array-length v2, v0

    .line 440
    .local v2, "length":I
    if-lez v2, :cond_0

    .line 442
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 443
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->deleteFiles(Ljava/io/File;)V

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 448
    .end local v0    # "childNames":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 449
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->decreaseAllFileSize(J)V

    .line 450
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 452
    :cond_1
    return-void
.end method

.method public static destory()V
    .locals 0

    .prologue
    .line 243
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;

    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;->destory()V

    .line 244
    return-void
.end method

.method private declared-synchronized fetchAllFileSize()V
    .locals 12

    .prologue
    .line 341
    monitor-enter p0

    :try_start_0
    const-string/jumbo v6, "update by caojl from wwf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mAllFileSize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->mAllFileSize:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 343
    .local v2, "start":J
    invoke-static {}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->getWeiBoPath()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 344
    .local v5, "weiboPath":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 352
    :goto_0
    monitor-exit p0

    return-void

    .line 347
    :cond_0
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 348
    .local v4, "weiboDir":Ljava/io/File;
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->getFileSize(Ljava/io/File;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->mAllFileSize:J

    .line 349
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 350
    .local v0, "end":J
    const-string/jumbo v6, "update by caojl from wwf"

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

    .line 351
    const-string/jumbo v6, "update by caojl from update by caojl from wwf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->mAllFileSize:J

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

    .line 341
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

    .line 532
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 533
    .local v3, "state":Ljava/lang/String;
    const-string v6, "FileManager"

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

    .line 534
    const-string v6, "checking"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 535
    const-wide/16 v4, -0x2

    .line 553
    :cond_0
    :goto_0
    return-wide v4

    .line 537
    :cond_1
    const-string/jumbo v6, "mounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 541
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->getWeiBoPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 542
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 543
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 548
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->getWeiBoPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 549
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

    .line 550
    .end local v2    # "stat":Landroid/os/StatFs;
    :catch_0
    move-exception v1

    .line 551
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "FileManager"

    const-string v5, "Fail to access external storage"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    const-wide/16 v4, -0x3

    goto :goto_0
.end method

.method public static getDownloadCacheFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonUtil;->hasSDCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".material_download/material_cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".material_download/material_cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDownloadFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonUtil;->hasSDCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".material_download/download_file/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".material_download/download_file/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getFileSize(Ljava/io/File;)J
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 455
    const-wide/16 v2, 0x0

    .line 456
    .local v2, "size":J
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 457
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 458
    .local v0, "flist":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 459
    aget-object v4, v0, v1

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->getFileSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 458
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    :cond_0
    const-wide/16 v4, 0x1000

    add-long/2addr v2, v4

    .line 465
    .end local v0    # "flist":[Ljava/io/File;
    .end local v1    # "i":I
    :goto_1
    return-wide v2

    .line 463
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;
    .locals 2

    .prologue
    .line 115
    const-class v1, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->sGalleryFileManager:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->sGalleryFileManager:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;

    .line 118
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->sGalleryFileManager:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSaveFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/CommonUtil;->hasSDCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/material_download/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/material_download/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getWeiBoPath()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 298
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 300
    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGRootPath()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "scgPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->checkDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v1, v2

    .line 311
    :cond_0
    :goto_0
    return-object v1

    .line 305
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "material_cache/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "weiboPath":Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->checkDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 307
    goto :goto_0

    .end local v0    # "scgPath":Ljava/lang/String;
    .end local v1    # "weiboPath":Ljava/lang/String;
    :cond_2
    move-object v1, v2

    .line 311
    goto :goto_0
.end method

.method private increaseAllFileSize(J)V
    .locals 5
    .param p1, "size"    # J

    .prologue
    .line 324
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->mAllFileSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 325
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->fetchAllFileSize()V

    .line 327
    :cond_0
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->mAllFileSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->mAllFileSize:J

    .line 328
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->mAllFileSize:J

    const-wide/32 v2, 0x6400000

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 329
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->adjustCacheFile()V

    .line 331
    :cond_1
    return-void
.end method

.method private readPictureFromFileImpl(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "person"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "filetype"    # Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    .prologue
    const/4 v4, 0x1

    .line 169
    invoke-virtual {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;)Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "filePath":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 187
    :goto_0
    return-object v0

    .line 173
    :cond_0
    const/4 v0, 0x0

    .line 175
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v3, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;->WEIBO_PICTURE_THUMBNAL:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    if-ne p3, v3, :cond_1

    .line 176
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeFile(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_1
    sget-object v3, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;->WEIBO_PICTURE:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    if-ne p3, v3, :cond_2

    .line 178
    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeFile(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 180
    :cond_2
    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeFile(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "readPictureFromFileImpl error:%s"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
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
    .line 426
    .local p1, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 428
    .local v0, "flist":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 429
    aget-object v2, v0, v1

    invoke-direct {p0, p1, v2}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->traversalFile(Ljava/util/ArrayList;Ljava/io/File;)V

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 432
    .end local v0    # "flist":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    :cond_1
    return-void
.end method

.method private writePictureToFileImpl([BLjava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;)Z
    .locals 8
    .param p1, "bytes"    # [B
    .param p2, "person"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "filetype"    # Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    .prologue
    const/4 v4, 0x0

    .line 247
    if-nez p1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v4

    .line 250
    :cond_1
    array-length v5, p1

    int-to-long v6, v5

    invoke-direct {p0, v6, v7}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->increaseAllFileSize(J)V

    .line 251
    invoke-virtual {p0, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "filePath":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 255
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 259
    .local v3, "fout":Ljava/io/FileOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 260
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 272
    const-string v4, "FileManager"

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

    .line 273
    const/4 v4, 0x1

    goto :goto_0

    .line 261
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->adjustUnAvailableSpace()V

    .line 264
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 266
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 268
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->adjustUnAvailableSpace()V

    .line 269
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getFilePath(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;)Ljava/lang/String;
    .locals 6
    .param p1, "person"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "filetype"    # Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    .prologue
    const/4 v2, 0x0

    .line 277
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 278
    :cond_0
    const-string v3, "FileManager"

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

    .line 294
    :cond_1
    :goto_0
    return-object v2

    .line 281
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->getWeiBoPath()Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "weiboPath":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 286
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

    .line 287
    .local v0, "personPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->checkDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 288
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->adjustUnAvailableSpace()V

    goto :goto_0

    .line 291
    :cond_3
    sget-object v2, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;->HEADER_PICTURE:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    if-ne p3, v2, :cond_4

    .line 292
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

    .line 294
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
    .line 141
    sget-object v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;->WEIBO_PICTURE:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->readPictureFromFile(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public readPictureFromFile(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "person"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "filetype"    # Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    .prologue
    .line 130
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->readPictureFromFileImpl(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public readPictureFromFileAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$readPictureListener;)V
    .locals 6
    .param p1, "person"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "filetype"    # Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;
    .param p4, "listener"    # Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$readPictureListener;

    .prologue
    .line 153
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$ReadPictureFromFileTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$ReadPictureFromFileTask;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$readPictureListener;)V

    .line 154
    .local v0, "task":Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;->submitToRead(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;)Z

    .line 155
    return-void
.end method

.method public readPictureFromFileAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$readPictureListener;)V
    .locals 1
    .param p1, "person"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$readPictureListener;

    .prologue
    .line 165
    sget-object v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;->WEIBO_PICTURE:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->readPictureFromFileAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$readPictureListener;)V

    .line 166
    return-void
.end method

.method public writePictureToFile([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "person"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 199
    sget-object v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;->WEIBO_PICTURE:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->writePictureToFile([BLjava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;)Z

    move-result v0

    return v0
.end method

.method public writePictureToFile([BLjava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;)Z
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "person"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "filetype"    # Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    .prologue
    .line 212
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->writePictureToFileImpl([BLjava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;)Z

    move-result v0

    return v0
.end method

.method public writePictureToFileAsync([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "person"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 224
    sget-object v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;->WEIBO_PICTURE:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;->writePictureToFileAsync([BLjava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;)Z

    move-result v0

    return v0
.end method

.method public writePictureToFileAsync([BLjava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;)Z
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "person"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "filetype"    # Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;

    .prologue
    .line 237
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$WritePictureToFileTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$WritePictureToFileTask;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager;[BLjava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/download/util/FileManager$FileType;)V

    .line 238
    .local v0, "task":Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskScheduler;->submitToWrite(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/Task;)Z

    .line 239
    const/4 v1, 0x1

    return v1
.end method
