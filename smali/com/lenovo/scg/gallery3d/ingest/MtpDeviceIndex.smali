.class public Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;
.super Ljava/lang/Object;
.source "MtpDeviceIndex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$1;,
        Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;,
        Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$MtpObjectTimestampComparator;,
        Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;,
        Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;,
        Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;,
        Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

.field private static final sMtpObjectComparator:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$MtpObjectTimestampComparator;


# instance fields
.field private mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

.field private mCachedReverseBuckets:[Ljava/lang/Object;

.field private mDevice:Landroid/mtp/MtpDevice;

.field private mGeneration:I

.field private mMtpObjects:[Landroid/mtp/MtpObjectInfo;

.field private mProgress:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

.field private mProgressListener:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;

.field private mUnifiedLookupIndex:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 104
    new-instance v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->sInstance:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    .line 106
    new-instance v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$MtpObjectTimestampComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$MtpObjectTimestampComparator;-><init>(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$1;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->sMtpObjectComparator:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$MtpObjectTimestampComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mGeneration:I

    .line 100
    sget-object v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;->Uninitialized:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mProgress:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    .line 113
    return-void
.end method

.method static synthetic access$102(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;
    .param p1, "x1"    # [I

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mUnifiedLookupIndex:[I

    return-object p1
.end method

.method static synthetic access$202(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;[Landroid/mtp/MtpObjectInfo;)[Landroid/mtp/MtpObjectInfo;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;
    .param p1, "x1"    # [Landroid/mtp/MtpObjectInfo;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mMtpObjects:[Landroid/mtp/MtpObjectInfo;

    return-object p1
.end method

.method static synthetic access$302(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;)[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;
    .param p1, "x1"    # [Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    return-object p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->resetState()V

    return-void
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;)Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mProgressListener:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;)Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mProgress:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    return-object p1
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->computeReversedBuckets()V

    return-void
.end method

.method static synthetic access$900()Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$MtpObjectTimestampComparator;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->sMtpObjectComparator:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$MtpObjectTimestampComparator;

    return-object v0
.end method

.method private computeReversedBuckets()V
    .locals 4

    .prologue
    .line 585
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mCachedReverseBuckets:[Ljava/lang/Object;

    .line 586
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mCachedReverseBuckets:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mCachedReverseBuckets:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    .line 586
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 589
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->sInstance:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    return-object v0
.end method

.method private resetState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 398
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mGeneration:I

    .line 399
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mUnifiedLookupIndex:[I

    .line 400
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mMtpObjects:[Landroid/mtp/MtpObjectInfo;

    .line 401
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    .line 402
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mCachedReverseBuckets:[Ljava/lang/Object;

    .line 403
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mDevice:Landroid/mtp/MtpDevice;

    if-nez v0, :cond_0

    sget-object v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;->Uninitialized:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    :goto_0
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mProgress:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    .line 404
    return-void

    .line 403
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;->Initialized:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    goto :goto_0
.end method


# virtual methods
.method public get(ILcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I
    .param p2, "order"    # Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    .prologue
    .line 187
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mProgress:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    sget-object v3, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;->Finished:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    .line 201
    :goto_0
    return-object v2

    .line 188
    :cond_0
    sget-object v2, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;->Ascending:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    if-ne p2, v2, :cond_2

    .line 189
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mUnifiedLookupIndex:[I

    aget v3, v3, p1

    aget-object v0, v2, v3

    .line 190
    .local v0, "bucket":Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;
    iget v2, v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->unifiedStartIndex:I

    if-ne v2, p1, :cond_1

    .line 191
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->bucket:Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;

    goto :goto_0

    .line 193
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mMtpObjects:[Landroid/mtp/MtpObjectInfo;

    iget v3, v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->itemsStartIndex:I

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    iget v4, v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->unifiedStartIndex:I

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    goto :goto_0

    .line 196
    .end local v0    # "bucket":Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mUnifiedLookupIndex:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    sub-int v1, v2, p1

    .line 197
    .local v1, "zeroIndex":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mUnifiedLookupIndex:[I

    aget v3, v3, v1

    aget-object v0, v2, v3

    .line 198
    .restart local v0    # "bucket":Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;
    iget v2, v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->unifiedEndIndex:I

    if-ne v2, v1, :cond_3

    .line 199
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->bucket:Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;

    goto :goto_0

    .line 201
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mMtpObjects:[Landroid/mtp/MtpObjectInfo;

    iget v3, v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->itemsStartIndex:I

    add-int/2addr v3, v1

    iget v4, v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->unifiedStartIndex:I

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    goto :goto_0
.end method

.method public getBucketNumberForPosition(ILcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;)I
    .locals 3
    .param p1, "position"    # I
    .param p2, "order"    # Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    .prologue
    .line 288
    sget-object v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;->Ascending:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    if-ne p2, v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mUnifiedLookupIndex:[I

    aget v0, v0, p1

    .line 291
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mUnifiedLookupIndex:[I

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mUnifiedLookupIndex:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, p1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getBuckets(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;)[Ljava/lang/Object;
    .locals 1
    .param p1, "order"    # Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 314
    :goto_0
    return-object v0

    .line 308
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;->Ascending:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    if-ne p1, v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    goto :goto_0

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mCachedReverseBuckets:[Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 312
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->computeReversedBuckets()V

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mCachedReverseBuckets:[Ljava/lang/Object;

    goto :goto_0
.end method

.method public declared-synchronized getDevice()Landroid/mtp/MtpDevice;
    .locals 1

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mDevice:Landroid/mtp/MtpDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFirstPositionForBucketNumber(ILcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;)I
    .locals 3
    .param p1, "bucketNumber"    # I
    .param p2, "order"    # Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    .prologue
    .line 280
    sget-object v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;->Ascending:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    if-ne p2, v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->unifiedStartIndex:I

    .line 283
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mUnifiedLookupIndex:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, p1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->unifiedEndIndex:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized getIndexRunnable()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mProgress:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    sget-object v1, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;->Initialized:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 142
    :goto_0
    monitor-exit p0

    return-object v0

    .line 141
    :cond_0
    :try_start_1
    sget-object v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;->Pending:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mProgress:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    .line 142
    new-instance v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mDevice:Landroid/mtp/MtpDevice;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$IndexRunnable;-><init>(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;Landroid/mtp/MtpDevice;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPositionFromPositionWithoutLabels(ILcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;)I
    .locals 7
    .param p1, "position"    # I
    .param p2, "order"    # Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    .prologue
    .line 233
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mProgress:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    sget-object v6, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;->Finished:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    if-eq v5, v6, :cond_1

    const/4 v4, -0x1

    .line 255
    :cond_0
    :goto_0
    return v4

    .line 234
    :cond_1
    sget-object v5, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;->Descending:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    if-ne p2, v5, :cond_2

    .line 235
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mMtpObjects:[Landroid/mtp/MtpObjectInfo;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    sub-int p1, v5, p1

    .line 237
    :cond_2
    const/4 v0, 0x0

    .line 238
    .local v0, "bucketNumber":I
    const/4 v3, 0x0

    .line 239
    .local v3, "iMin":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    array-length v5, v5

    add-int/lit8 v1, v5, -0x1

    .line 240
    .local v1, "iMax":I
    :goto_1
    if-lt v1, v3, :cond_5

    .line 241
    add-int v5, v1, v3

    div-int/lit8 v2, v5, 0x2

    .line 242
    .local v2, "iMid":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->itemsStartIndex:I

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->numItems:I

    add-int/2addr v5, v6

    if-gt v5, p1, :cond_3

    .line 243
    add-int/lit8 v3, v2, 0x1

    goto :goto_1

    .line 244
    :cond_3
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->itemsStartIndex:I

    if-le v5, p1, :cond_4

    .line 245
    add-int/lit8 v1, v2, -0x1

    goto :goto_1

    .line 247
    :cond_4
    move v0, v2

    .line 251
    .end local v2    # "iMid":I
    :cond_5
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->unifiedStartIndex:I

    add-int/2addr v5, p1

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->itemsStartIndex:I

    sub-int v4, v5, v6

    .line 252
    .local v4, "mappedPos":I
    sget-object v5, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;->Descending:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    if-ne p2, v5, :cond_0

    .line 253
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mUnifiedLookupIndex:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    sub-int v4, v5, v4

    goto :goto_0
.end method

.method public getPositionWithoutLabelsFromPosition(ILcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;)I
    .locals 4
    .param p1, "position"    # I
    .param p2, "order"    # Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    .prologue
    .line 259
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mProgress:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    sget-object v3, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;->Finished:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    if-eq v2, v3, :cond_0

    const/4 v2, -0x1

    .line 268
    :goto_0
    return v2

    .line 260
    :cond_0
    sget-object v2, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;->Ascending:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    if-ne p2, v2, :cond_2

    .line 261
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mUnifiedLookupIndex:[I

    aget v3, v3, p1

    aget-object v0, v2, v3

    .line 262
    .local v0, "bucket":Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;
    iget v2, v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->unifiedStartIndex:I

    if-ne v2, p1, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 263
    :cond_1
    iget v2, v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->itemsStartIndex:I

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    iget v3, v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->unifiedStartIndex:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 265
    .end local v0    # "bucket":Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mUnifiedLookupIndex:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    sub-int v1, v2, p1

    .line 266
    .local v1, "zeroIndex":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mUnifiedLookupIndex:[I

    aget v3, v3, v1

    aget-object v0, v2, v3

    .line 267
    .restart local v0    # "bucket":Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;
    iget v2, v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->unifiedEndIndex:I

    if-ne v2, v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    .line 268
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mMtpObjects:[Landroid/mtp/MtpObjectInfo;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iget v3, v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->itemsStartIndex:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    iget v3, v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->unifiedStartIndex:I

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method public declared-synchronized getProgress()Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;
    .locals 1

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mProgress:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWithoutLabels(ILcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;)Landroid/mtp/MtpObjectInfo;
    .locals 2
    .param p1, "position"    # I
    .param p2, "order"    # Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mProgress:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    sget-object v1, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;->Finished:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 217
    :goto_0
    return-object v0

    .line 214
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;->Ascending:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    if-ne p2, v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mMtpObjects:[Landroid/mtp/MtpObjectInfo;

    aget-object v0, v0, p1

    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mMtpObjects:[Landroid/mtp/MtpObjectInfo;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mMtpObjects:[Landroid/mtp/MtpObjectInfo;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 66
    const/16 v0, 0x1f

    .line 67
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 68
    .local v1, "result":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mDevice:Landroid/mtp/MtpDevice;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 69
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mGeneration:I

    add-int v1, v2, v3

    .line 70
    return v1

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mDevice:Landroid/mtp/MtpDevice;

    invoke-virtual {v2}, Landroid/mtp/MtpDevice;->getDeviceId()I

    move-result v2

    goto :goto_0
.end method

.method public declared-synchronized indexReady()Z
    .locals 2

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mProgress:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    sget-object v1, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;->Finished:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isFirstInBucket(ILcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;)Z
    .locals 4
    .param p1, "position"    # I
    .param p2, "order"    # Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 296
    sget-object v2, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;->Ascending:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    if-ne p2, v2, :cond_2

    .line 297
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mUnifiedLookupIndex:[I

    aget v3, v3, p1

    aget-object v2, v2, v3

    iget v2, v2, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->unifiedStartIndex:I

    if-ne v2, p1, :cond_1

    .line 300
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 297
    goto :goto_0

    .line 299
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mUnifiedLookupIndex:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    sub-int p1, v2, p1

    .line 300
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mBuckets:[Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mUnifiedLookupIndex:[I

    aget v3, v3, p1

    aget-object v2, v2, v3

    iget v2, v2, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$DateBucket;->unifiedEndIndex:I

    if-eq v2, p1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public declared-synchronized setDevice(Landroid/mtp/MtpDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/mtp/MtpDevice;

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mDevice:Landroid/mtp/MtpDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 130
    :goto_0
    monitor-exit p0

    return-void

    .line 128
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mDevice:Landroid/mtp/MtpDevice;

    .line 129
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->resetState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgressListener(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;)Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;
    .locals 1
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mProgressListener:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;

    .line 160
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mProgress:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mProgress:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    sget-object v1, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;->Finished:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mUnifiedLookupIndex:[I

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sizeWithoutLabels()I
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mProgress:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    sget-object v1, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;->Finished:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$Progress;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mMtpObjects:[Landroid/mtp/MtpObjectInfo;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized unsetProgressListener(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mProgressListener:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->mProgressListener:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_0
    monitor-exit p0

    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
