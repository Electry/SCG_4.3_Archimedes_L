.class public Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;
.super Ljava/lang/Object;
.source "SparseArrayBitmapPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;
    }
.end annotation


# static fields
.field private static final BITMAPS_TO_KEEP_AFTER_UNNEEDED_HINT:I = 0x4


# instance fields
.field private mCapacityBytes:I

.field private mNodePool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool",
            "<",
            "Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mPoolNodesHead:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

.field private mPoolNodesTail:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

.field private mSizeBytes:I

.field private mStore:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroid/util/Pools$Pool;)V
    .locals 2
    .param p1, "capacityBytes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Pools$Pool",
            "<",
            "Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "nodePool":Landroid/util/Pools$Pool;, "Landroid/util/Pools$Pool<Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;>;"
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->mStore:Landroid/util/SparseArray;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->mSizeBytes:I

    .line 36
    iput-object v1, p0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->mPoolNodesHead:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    .line 38
    iput-object v1, p0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->mPoolNodesTail:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    .line 54
    iput p1, p0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->mCapacityBytes:I

    .line 55
    iput-object p2, p0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->mNodePool:Landroid/util/Pools$Pool;

    .line 56
    return-void
.end method

.method private freeUpCapacity(I)V
    .locals 3
    .param p1, "bytesNeeded"    # I

    .prologue
    .line 64
    iget v1, p0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->mCapacityBytes:I

    sub-int v0, v1, p1

    .line 65
    .local v0, "targetSize":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->mPoolNodesTail:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->mSizeBytes:I

    if-le v1, v0, :cond_0

    .line 66
    iget-object v1, p0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->mPoolNodesTail:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->unlinkAndRecycleNode(Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;Z)V

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method private unlinkAndRecycleNode(Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;Z)V
    .locals 4
    .param p1, "n"    # Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;
    .param p2, "recycleBitmap"    # Z

    .prologue
    const/4 v3, 0x0

    .line 72
    iget-object v0, p1, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->prevInBucket:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p1, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->prevInBucket:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    iget-object v1, p1, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    iput-object v1, v0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    .line 77
    :goto_0
    iget-object v0, p1, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p1, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    iget-object v1, p1, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->prevInBucket:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    iput-object v1, v0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->prevInBucket:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    .line 82
    :cond_0
    iget-object v0, p1, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->prevInPool:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    if-eqz v0, :cond_3

    .line 83
    iget-object v0, p1, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->prevInPool:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    iget-object v1, p1, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->nextInPool:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    iput-object v1, v0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->nextInPool:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    .line 87
    :goto_1
    iget-object v0, p1, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->nextInPool:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    if-eqz v0, :cond_4

    .line 88
    iget-object v0, p1, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->nextInPool:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    iget-object v1, p1, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->prevInPool:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    iput-object v1, v0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->prevInPool:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    .line 94
    :goto_2
    iput-object v3, p1, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    .line 95
    iput-object v3, p1, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->nextInPool:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    .line 96
    iput-object v3, p1, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->prevInBucket:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    .line 97
    iput-object v3, p1, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->prevInPool:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    .line 98
    iget v0, p0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->mSizeBytes:I

    iget-object v1, p1, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->mSizeBytes:I

    .line 99
    if-eqz p2, :cond_1

    iget-object v0, p1, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 100
    :cond_1
    iput-object v3, p1, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;

    .line 101
    iget-object v0, p0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->mNodePool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 102
    return-void

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->mStore:Landroid/util/SparseArray;

    iget-object v1, p1, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p1, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 85
    :cond_3
    iget-object v0, p1, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->nextInPool:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    iput-object v0, p0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->mPoolNodesHead:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    goto :goto_1

    .line 90
    :cond_4
    iget-object v0, p1, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->prevInPool:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    iput-object v0, p0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->mPoolNodesTail:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->mCapacityBytes:I

    invoke-direct {p0, v0}, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->freeUpCapacity(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(II)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->mStore:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    .line 114
    .local v1, "cur":Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;
    :goto_0
    if-eqz v1, :cond_1

    .line 115
    iget-object v2, v1, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 116
    iget-object v0, v1, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;

    .line 117
    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->unlinkAndRecycleNode(Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :goto_1
    monitor-exit p0

    return-object v0

    .line 120
    :cond_0
    :try_start_1
    iget-object v1, v1, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 122
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 113
    .end local v1    # "cur":Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getCapacity()I
    .locals 1

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->mCapacityBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSize()I
    .locals 1

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->mSizeBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Landroid/graphics/Bitmap;)Z
    .locals 4
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 126
    monitor-enter p0

    if-nez p1, :cond_0

    .line 127
    const/4 v3, 0x0

    .line 152
    :goto_0
    monitor-exit p0

    return v3

    .line 129
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 130
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->freeUpCapacity(I)V

    .line 131
    iget-object v3, p0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->mNodePool:Landroid/util/Pools$Pool;

    invoke-interface {v3}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    .line 132
    .local v2, "newNode":Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;
    if-nez v2, :cond_1

    .line 133
    new-instance v2, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    .end local v2    # "newNode":Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;
    invoke-direct {v2}, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;-><init>()V

    .line 135
    .restart local v2    # "newNode":Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;
    :cond_1
    iput-object p1, v2, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;

    .line 136
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->prevInBucket:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    .line 137
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->prevInPool:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    .line 138
    iget-object v3, p0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->mPoolNodesHead:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    iput-object v3, v2, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->nextInPool:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    .line 139
    iput-object v2, p0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->mPoolNodesHead:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 141
    .local v1, "key":I
    iget-object v3, p0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->mStore:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    iput-object v3, v2, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    .line 142
    iget-object v3, v2, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    if-eqz v3, :cond_2

    .line 143
    iget-object v3, v2, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    iput-object v2, v3, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->prevInBucket:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    .line 145
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->mStore:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    iget-object v3, v2, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->nextInPool:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    if-nez v3, :cond_3

    .line 147
    iput-object v2, p0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->mPoolNodesTail:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    .line 151
    :goto_1
    iget v3, p0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->mSizeBytes:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->mSizeBytes:I

    .line 152
    const/4 v3, 0x1

    goto :goto_0

    .line 149
    :cond_3
    iget-object v3, v2, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->nextInPool:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;

    iput-object v2, v3, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;->prevInPool:Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 126
    .end local v0    # "bytes":I
    .end local v1    # "key":I
    .end local v2    # "newNode":Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool$Node;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setCapacity(I)V
    .locals 1
    .param p1, "capacityBytes"    # I

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->mCapacityBytes:I

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/photos/data/SparseArrayBitmapPool;->freeUpCapacity(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
