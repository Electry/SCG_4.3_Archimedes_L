.class public Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;
.super Ljava/lang/Object;
.source "BytesBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/data/BytesBufferPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BytesBuffer"
.end annotation


# instance fields
.field public data:[B

.field public length:I

.field public offset:I


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    .line 40
    return-void
.end method

.method synthetic constructor <init>(ILcom/lenovo/scg/gallery3d/data/BytesBufferPool$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$1;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;-><init>(I)V

    return-void
.end method


# virtual methods
.method public readFrom(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;)V
    .locals 9
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 44
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 45
    .local v1, "fis":Ljava/io/FileInputStream;
    iput v5, p0, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    .line 47
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    array-length v0, v5

    .line 49
    .local v0, "capacity":I
    :cond_0
    :goto_0
    const/16 v5, 0x1000

    iget v6, p0, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    sub-int v6, v0, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 50
    .local v4, "step":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v6, p0, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    invoke-virtual {v1, v5, v6, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 51
    .local v3, "rc":I
    if-ltz v3, :cond_1

    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    .line 62
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-void

    .line 52
    :cond_2
    :try_start_1
    iget v5, p0, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    .line 54
    iget v5, p0, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    if-ne v5, v0, :cond_0

    .line 55
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    new-array v2, v5, [B

    .line 56
    .local v2, "newData":[B
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    array-length v8, v8

    invoke-static {v5, v6, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    .line 58
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    array-length v0, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 62
    .end local v0    # "capacity":I
    .end local v2    # "newData":[B
    .end local v3    # "rc":I
    .end local v4    # "step":I
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v5
.end method
