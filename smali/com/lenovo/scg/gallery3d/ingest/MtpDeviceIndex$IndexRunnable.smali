.class Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;
.super Ljava/lang/Object;
.source "MtpDeviceIndex.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndexRunnable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable$IndexingException;
    }
.end annotation


# instance fields
.field private mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

.field private mBucketsTemp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;",
            "Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;",
            ">;"
        }
    .end annotation
.end field

.field private mDateInstance:Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;

.field private mDevice:Landroid/mtp/MtpDevice;

.field private mMtpObjects:[Landroid/mtp/MtpObjectInfo;

.field private mNumObjects:I

.field private mUnifiedLookupIndex:[I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;Landroid/mtp/MtpDevice;)V
    .locals 1
    .param p2, "device"    # Landroid/mtp/MtpDevice;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mNumObjects:I

    .line 555
    new-instance v0, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mDateInstance:Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;

    .line 424
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mDevice:Landroid/mtp/MtpDevice;

    .line 425
    return-void
.end method

.method private addObject(Landroid/mtp/MtpObjectInfo;)V
    .locals 4
    .param p1, "objectInfo"    # Landroid/mtp/MtpObjectInfo;

    .prologue
    .line 558
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mNumObjects:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mNumObjects:I

    .line 559
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mDateInstance:Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;

    invoke-virtual {p1}, Landroid/mtp/MtpObjectInfo;->getDateCreated()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;->setTimestamp(J)V

    .line 560
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mBucketsTemp:Ljava/util/Map;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mDateInstance:Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    .line 561
    .local v0, "bucket":Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;
    if-nez v0, :cond_1

    .line 562
    new-instance v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    .end local v0    # "bucket":Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mDateInstance:Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;

    invoke-direct {v0, v1, v2, p1}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;-><init>(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;Landroid/mtp/MtpObjectInfo;)V

    .line 563
    .restart local v0    # "bucket":Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mBucketsTemp:Ljava/util/Map;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mDateInstance:Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    new-instance v1, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;

    invoke-direct {v1}, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mDateInstance:Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->tempElementsList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mProgressListener:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->access$500(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;)Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 571
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mProgressListener:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->access$500(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;)Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mNumObjects:I

    invoke-interface {v1, p1, v2}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;->onObjectIndexed(Landroid/mtp/MtpObjectInfo;I)V

    goto :goto_0
.end method

.method private buildLookupIndex()V
    .locals 9

    .prologue
    .line 447
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    array-length v6, v7

    .line 448
    .local v6, "numBuckets":I
    iget v7, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mNumObjects:I

    add-int/2addr v7, v6

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mUnifiedLookupIndex:[I

    .line 449
    const/4 v2, 0x0

    .line 452
    .local v2, "currentUnifiedIndexEntry":I
    iget v7, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mNumObjects:I

    new-array v7, v7, [Landroid/mtp/MtpObjectInfo;

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mMtpObjects:[Landroid/mtp/MtpObjectInfo;

    .line 453
    const/4 v1, 0x0

    .line 454
    .local v1, "currentItemsEntry":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 455
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    aget-object v0, v7, v3

    .line 456
    .local v0, "bucket":Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;
    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->tempElementsList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v7, v2

    add-int/lit8 v5, v7, 0x1

    .line 457
    .local v5, "nextUnifiedEntry":I
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mUnifiedLookupIndex:[I

    invoke-static {v7, v2, v5, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 458
    iput v2, v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->unifiedStartIndex:I

    .line 459
    add-int/lit8 v7, v5, -0x1

    iput v7, v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->unifiedEndIndex:I

    .line 460
    move v2, v5

    .line 462
    iput v1, v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->itemsStartIndex:I

    .line 463
    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->tempElementsList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iput v7, v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->numItems:I

    .line 464
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget v7, v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->numItems:I

    if-ge v4, v7, :cond_0

    .line 465
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mMtpObjects:[Landroid/mtp/MtpObjectInfo;

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->tempElementsList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/mtp/MtpObjectInfo;

    aput-object v7, v8, v1

    .line 466
    add-int/lit8 v1, v1, 0x1

    .line 464
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 468
    :cond_0
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->tempElementsList:Ljava/util/List;

    .line 454
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 470
    .end local v0    # "bucket":Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;
    .end local v4    # "j":I
    .end local v5    # "nextUnifiedEntry":I
    :cond_1
    return-void
.end method

.method private copyResults()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 473
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mUnifiedLookupIndex:[I

    # setter for: Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mUnifiedLookupIndex:[I
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->access$102(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;[I)[I

    .line 474
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mMtpObjects:[Landroid/mtp/MtpObjectInfo;

    # setter for: Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mMtpObjects:[Landroid/mtp/MtpObjectInfo;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->access$202(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;[Landroid/mtp/MtpObjectInfo;)[Landroid/mtp/MtpObjectInfo;

    .line 475
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    # setter for: Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->access$302(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;)[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    .line 476
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mUnifiedLookupIndex:[I

    .line 477
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mMtpObjects:[Landroid/mtp/MtpObjectInfo;

    .line 478
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    .line 479
    return-void
.end method

.method private indexDevice()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable$IndexingException;
        }
    .end annotation

    .prologue
    .line 496
    iget-object v13, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    monitor-enter v13

    .line 497
    :try_start_0
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    sget-object v14, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;->Started:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    # setter for: Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mProgress:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;
    invoke-static {v12, v14}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->access$602(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;)Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    .line 498
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mBucketsTemp:Ljava/util/Map;

    .line 500
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mDevice:Landroid/mtp/MtpDevice;

    invoke-virtual {v12}, Landroid/mtp/MtpDevice;->getStorageIds()[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v0    # "arr$":[I
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_5

    aget v10, v0, v4

    .line 501
    .local v10, "storageId":I
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mDevice:Landroid/mtp/MtpDevice;

    iget-object v13, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->getDevice()Landroid/mtp/MtpDevice;

    move-result-object v13

    if-eq v12, v13, :cond_0

    new-instance v12, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable$IndexingException;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable$IndexingException;-><init>(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$1;)V

    throw v12

    .line 498
    .end local v4    # "i$":I
    .end local v10    # "storageId":I
    :catchall_0
    move-exception v12

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 502
    .restart local v4    # "i$":I
    .restart local v10    # "storageId":I
    :cond_0
    new-instance v9, Ljava/util/Stack;

    invoke-direct {v9}, Ljava/util/Stack;-><init>()V

    .line 503
    .local v9, "pendingDirectories":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Integer;>;"
    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 504
    .end local v4    # "i$":I
    :cond_1
    invoke-virtual {v9}, Ljava/util/Stack;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .line 505
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mDevice:Landroid/mtp/MtpDevice;

    iget-object v13, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    invoke-virtual {v13}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->getDevice()Landroid/mtp/MtpDevice;

    move-result-object v13

    if-eq v12, v13, :cond_2

    new-instance v12, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable$IndexingException;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable$IndexingException;-><init>(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$1;)V

    throw v12

    .line 506
    :cond_2
    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 507
    .local v2, "dirHandle":I
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mDevice:Landroid/mtp/MtpDevice;

    const/4 v13, 0x0

    invoke-virtual {v12, v10, v13, v2}, Landroid/mtp/MtpDevice;->getObjectHandles(III)[I

    move-result-object v1

    .local v1, "arr$":[I
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v6, :cond_1

    aget v7, v1, v3

    .line 508
    .local v7, "objectHandle":I
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mDevice:Landroid/mtp/MtpDevice;

    invoke-virtual {v12, v7}, Landroid/mtp/MtpDevice;->getObjectInfo(I)Landroid/mtp/MtpObjectInfo;

    move-result-object v8

    .line 509
    .local v8, "objectInfo":Landroid/mtp/MtpObjectInfo;
    if-nez v8, :cond_3

    new-instance v12, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable$IndexingException;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable$IndexingException;-><init>(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$1;)V

    throw v12

    .line 510
    :cond_3
    invoke-virtual {v8}, Landroid/mtp/MtpObjectInfo;->getFormat()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    .line 507
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 513
    :sswitch_0
    invoke-direct {p0, v8}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->addObject(Landroid/mtp/MtpObjectInfo;)V

    goto :goto_2

    .line 516
    :sswitch_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 500
    .end local v1    # "arr$":[I
    .end local v2    # "dirHandle":I
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "objectHandle":I
    .end local v8    # "objectInfo":Landroid/mtp/MtpObjectInfo;
    :cond_4
    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 522
    .end local v9    # "pendingDirectories":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Integer;>;"
    .end local v10    # "storageId":I
    :cond_5
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mBucketsTemp:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    .line 523
    .local v11, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;>;"
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mBucketsTemp:Ljava/util/Map;

    .line 524
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v12

    new-array v12, v12, [Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    invoke-interface {v11, v12}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    iput-object v12, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    .line 525
    const/4 v11, 0x0

    .line 526
    iget-object v13, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    monitor-enter v13

    .line 527
    :try_start_2
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    sget-object v14, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;->Sorting:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    # setter for: Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mProgress:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;
    invoke-static {v12, v14}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->access$602(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;)Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    .line 528
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mProgressListener:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;
    invoke-static {v12}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->access$500(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;)Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 529
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mProgressListener:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;
    invoke-static {v12}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->access$500(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;)Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;

    move-result-object v12

    invoke-interface {v12}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;->onSorting()V

    .line 531
    :cond_6
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 532
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->sortAll()V

    .line 533
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->buildLookupIndex()V

    .line 534
    iget-object v13, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    monitor-enter v13

    .line 535
    :try_start_3
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mDevice:Landroid/mtp/MtpDevice;

    iget-object v14, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    invoke-virtual {v14}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->getDevice()Landroid/mtp/MtpDevice;

    move-result-object v14

    if-eq v12, v14, :cond_7

    new-instance v12, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable$IndexingException;

    const/4 v14, 0x0

    invoke-direct {v12, p0, v14}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable$IndexingException;-><init>(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$1;)V

    throw v12

    .line 552
    :catchall_1
    move-exception v12

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v12

    .line 531
    :catchall_2
    move-exception v12

    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v12

    .line 536
    :cond_7
    :try_start_5
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->copyResults()V

    .line 546
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    # invokes: Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->computeReversedBuckets()V
    invoke-static {v12}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->access$800(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;)V

    .line 548
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    sget-object v14, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;->Finished:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    # setter for: Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mProgress:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;
    invoke-static {v12, v14}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->access$602(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;)Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    .line 549
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mProgressListener:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;
    invoke-static {v12}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->access$500(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;)Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 550
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mProgressListener:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;
    invoke-static {v12}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->access$500(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;)Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;

    move-result-object v12

    invoke-interface {v12}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;->onIndexFinish()V

    .line 552
    :cond_8
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 553
    return-void

    .line 510
    nop

    :sswitch_data_0
    .sparse-switch
        0x3001 -> :sswitch_1
        0x3801 -> :sswitch_0
        0x3808 -> :sswitch_0
    .end sparse-switch
.end method

.method private sortAll()V
    .locals 5

    .prologue
    .line 576
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 577
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 578
    .local v1, "bucket":Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;
    # getter for: Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->sMtpObjectComparator:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$MtpObjectTimestampComparator;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->access$900()Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$MtpObjectTimestampComparator;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->sortElements(Ljava/util/Comparator;)V

    .line 577
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 580
    .end local v1    # "bucket":Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 484
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->indexDevice()V
    :try_end_0
    .catch Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable$IndexingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :goto_0
    return-void

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable$IndexingException;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    monitor-enter v2

    .line 487
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    # invokes: Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->resetState()V
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->access$400(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;)V

    .line 488
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mProgressListener:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->access$500(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;)Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;->this$0:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mProgressListener:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->access$500(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;)Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;->onIndexFinish()V

    .line 491
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
