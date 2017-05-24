.class public Lcom/lenovo/scg/gallery3d/data/ImageCacheService;
.super Ljava/lang/Object;
.source "ImageCacheService.java"


# static fields
.field private static final IMAGE_CACHE_FILE:Ljava/lang/String; = "imgcache"

.field private static final IMAGE_CACHE_MAX_BYTES:I = 0xc800000

.field private static final IMAGE_CACHE_MAX_ENTRIES:I = 0x1388

.field private static final IMAGE_CACHE_VERSION:I = 0x7

.field private static final TAG:Ljava/lang/String; = "ImageCacheService"


# instance fields
.field private mCache:Lcom/lenovo/scg/gallery3d/common/BlobCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "imgcache"

    const/16 v1, 0x1388

    const/high16 v2, 0xc800000

    const/4 v3, 0x7

    invoke-static {p1, v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/lenovo/scg/gallery3d/common/BlobCache;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ImageCacheService;->mCache:Lcom/lenovo/scg/gallery3d/common/BlobCache;

    .line 48
    return-void
.end method

.method private static isSameKey([B[B)Z
    .locals 5
    .param p0, "key"    # [B
    .param p1, "buffer"    # [B

    .prologue
    const/4 v2, 0x0

    .line 169
    array-length v1, p0

    .line 170
    .local v1, "n":I
    array-length v3, p1

    if-ge v3, v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v2

    .line 173
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 174
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-ne v3, v4, :cond_0

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 178
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static makeKey(Lcom/lenovo/scg/gallery3d/data/Path;I)[B
    .locals 2
    .param p0, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p1, "type"    # I

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static makeKey(Lcom/lenovo/scg/gallery3d/data/Path;IJ)[B
    .locals 2
    .param p0, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p1, "type"    # I
    .param p2, "modifyDate"    # J

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearImageData(Lcom/lenovo/scg/gallery3d/data/Path;I)V
    .locals 5
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "type"    # I

    .prologue
    .line 153
    invoke-static {p1, p2}, Lcom/lenovo/scg/gallery3d/data/ImageCacheService;->makeKey(Lcom/lenovo/scg/gallery3d/data/Path;I)[B

    move-result-object v2

    .line 154
    .local v2, "key":[B
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v0

    .line 155
    .local v0, "cacheKey":J
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/ImageCacheService;->mCache:Lcom/lenovo/scg/gallery3d/common/BlobCache;

    monitor-enter v4

    .line 157
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/ImageCacheService;->mCache:Lcom/lenovo/scg/gallery3d/common/BlobCache;

    invoke-virtual {v3, v0, v1}, Lcom/lenovo/scg/gallery3d/common/BlobCache;->clearEntry(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :goto_0
    :try_start_1
    monitor-exit v4

    .line 162
    return-void

    .line 161
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 158
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getImageData(Lcom/lenovo/scg/gallery3d/data/Path;IJLcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;)Z
    .locals 7
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "type"    # I
    .param p3, "modifyDate"    # J
    .param p5, "buffer"    # Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;

    .prologue
    const/4 v4, 0x0

    .line 110
    invoke-static {p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/data/ImageCacheService;->makeKey(Lcom/lenovo/scg/gallery3d/data/Path;IJ)[B

    move-result-object v2

    .line 111
    .local v2, "key":[B
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v0

    .line 113
    .local v0, "cacheKey":J
    :try_start_0
    new-instance v3, Lcom/lenovo/scg/gallery3d/common/BlobCache$LookupRequest;

    invoke-direct {v3}, Lcom/lenovo/scg/gallery3d/common/BlobCache$LookupRequest;-><init>()V

    .line 114
    .local v3, "request":Lcom/lenovo/scg/gallery3d/common/BlobCache$LookupRequest;
    iput-wide v0, v3, Lcom/lenovo/scg/gallery3d/common/BlobCache$LookupRequest;->key:J

    .line 115
    iget-object v5, p5, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iput-object v5, v3, Lcom/lenovo/scg/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    .line 116
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/data/ImageCacheService;->mCache:Lcom/lenovo/scg/gallery3d/common/BlobCache;

    monitor-enter v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :try_start_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/ImageCacheService;->mCache:Lcom/lenovo/scg/gallery3d/common/BlobCache;

    invoke-virtual {v5, v3}, Lcom/lenovo/scg/gallery3d/common/BlobCache;->lookup(Lcom/lenovo/scg/gallery3d/common/BlobCache$LookupRequest;)Z

    move-result v5

    if-nez v5, :cond_1

    monitor-exit v6

    .line 128
    .end local v3    # "request":Lcom/lenovo/scg/gallery3d/common/BlobCache$LookupRequest;
    :cond_0
    :goto_0
    return v4

    .line 118
    .restart local v3    # "request":Lcom/lenovo/scg/gallery3d/common/BlobCache$LookupRequest;
    :cond_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :try_start_2
    iget-object v5, v3, Lcom/lenovo/scg/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    invoke-static {v2, v5}, Lcom/lenovo/scg/gallery3d/data/ImageCacheService;->isSameKey([B[B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    iget-object v5, v3, Lcom/lenovo/scg/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    iput-object v5, p5, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    .line 121
    array-length v5, v2

    iput v5, p5, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    .line 122
    iget v5, v3, Lcom/lenovo/scg/gallery3d/common/BlobCache$LookupRequest;->length:I

    iget v6, p5, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    sub-int/2addr v5, v6

    iput v5, p5, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 123
    const/4 v4, 0x1

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 125
    .end local v3    # "request":Lcom/lenovo/scg/gallery3d/common/BlobCache$LookupRequest;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public getImageData(Lcom/lenovo/scg/gallery3d/data/Path;ILcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;)Z
    .locals 7
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "type"    # I
    .param p3, "buffer"    # Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-static {p1, p2}, Lcom/lenovo/scg/gallery3d/data/ImageCacheService;->makeKey(Lcom/lenovo/scg/gallery3d/data/Path;I)[B

    move-result-object v2

    .line 63
    .local v2, "key":[B
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v0

    .line 65
    .local v0, "cacheKey":J
    :try_start_0
    new-instance v3, Lcom/lenovo/scg/gallery3d/common/BlobCache$LookupRequest;

    invoke-direct {v3}, Lcom/lenovo/scg/gallery3d/common/BlobCache$LookupRequest;-><init>()V

    .line 66
    .local v3, "request":Lcom/lenovo/scg/gallery3d/common/BlobCache$LookupRequest;
    iput-wide v0, v3, Lcom/lenovo/scg/gallery3d/common/BlobCache$LookupRequest;->key:J

    .line 67
    iget-object v5, p3, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iput-object v5, v3, Lcom/lenovo/scg/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    .line 68
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/data/ImageCacheService;->mCache:Lcom/lenovo/scg/gallery3d/common/BlobCache;

    monitor-enter v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :try_start_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/ImageCacheService;->mCache:Lcom/lenovo/scg/gallery3d/common/BlobCache;

    invoke-virtual {v5, v3}, Lcom/lenovo/scg/gallery3d/common/BlobCache;->lookup(Lcom/lenovo/scg/gallery3d/common/BlobCache$LookupRequest;)Z

    move-result v5

    if-nez v5, :cond_1

    monitor-exit v6

    .line 80
    .end local v3    # "request":Lcom/lenovo/scg/gallery3d/common/BlobCache$LookupRequest;
    :cond_0
    :goto_0
    return v4

    .line 70
    .restart local v3    # "request":Lcom/lenovo/scg/gallery3d/common/BlobCache$LookupRequest;
    :cond_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :try_start_2
    iget-object v5, v3, Lcom/lenovo/scg/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    invoke-static {v2, v5}, Lcom/lenovo/scg/gallery3d/data/ImageCacheService;->isSameKey([B[B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 72
    iget-object v5, v3, Lcom/lenovo/scg/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    iput-object v5, p3, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    .line 73
    array-length v5, v2

    iput v5, p3, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    .line 74
    iget v5, v3, Lcom/lenovo/scg/gallery3d/common/BlobCache$LookupRequest;->length:I

    iget v6, p3, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    sub-int/2addr v5, v6

    iput v5, p3, Lcom/lenovo/scg/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 75
    const/4 v4, 0x1

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 77
    .end local v3    # "request":Lcom/lenovo/scg/gallery3d/common/BlobCache$LookupRequest;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public putImageData(Lcom/lenovo/scg/gallery3d/data/Path;IJ[B)V
    .locals 7
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "type"    # I
    .param p3, "modifyDate"    # J
    .param p5, "value"    # [B

    .prologue
    .line 132
    invoke-static {p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/data/ImageCacheService;->makeKey(Lcom/lenovo/scg/gallery3d/data/Path;IJ)[B

    move-result-object v1

    .line 133
    .local v1, "key":[B
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v2

    .line 134
    .local v2, "cacheKey":J
    array-length v4, v1

    array-length v5, p5

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 135
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 136
    invoke-virtual {v0, p5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 137
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/ImageCacheService;->mCache:Lcom/lenovo/scg/gallery3d/common/BlobCache;

    monitor-enter v5

    .line 139
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/ImageCacheService;->mCache:Lcom/lenovo/scg/gallery3d/common/BlobCache;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v4, v2, v3, v6}, Lcom/lenovo/scg/gallery3d/common/BlobCache;->insert(J[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :goto_0
    :try_start_1
    monitor-exit v5

    .line 144
    return-void

    .line 143
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 140
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public putImageData(Lcom/lenovo/scg/gallery3d/data/Path;I[B)V
    .locals 7
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "type"    # I
    .param p3, "value"    # [B

    .prologue
    .line 84
    invoke-static {p1, p2}, Lcom/lenovo/scg/gallery3d/data/ImageCacheService;->makeKey(Lcom/lenovo/scg/gallery3d/data/Path;I)[B

    move-result-object v1

    .line 85
    .local v1, "key":[B
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v2

    .line 86
    .local v2, "cacheKey":J
    array-length v4, v1

    array-length v5, p3

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 87
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 88
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 89
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/ImageCacheService;->mCache:Lcom/lenovo/scg/gallery3d/common/BlobCache;

    monitor-enter v5

    .line 91
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/ImageCacheService;->mCache:Lcom/lenovo/scg/gallery3d/common/BlobCache;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v4, v2, v3, v6}, Lcom/lenovo/scg/gallery3d/common/BlobCache;->insert(J[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :goto_0
    :try_start_1
    monitor-exit v5

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 92
    :catch_0
    move-exception v4

    goto :goto_0
.end method
