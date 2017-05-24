.class public final Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCacheProxy;
.super Ljava/lang/Object;
.source "ImageCacheProxy.java"


# static fields
.field private static fileSystemCache:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCache;

.field private static memoryCache:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    sput-object v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCacheProxy;->memoryCache:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCache;

    .line 16
    sput-object v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCacheProxy;->fileSystemCache:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static getData(Ljava/lang/String;)[B
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 38
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCacheProxy;->fileSystemCache:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCache;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCacheProxy;->memoryCache:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCache;

    if-nez v2, :cond_1

    .line 39
    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCacheProxy;->initCache()V

    .line 42
    :cond_1
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCacheProxy;->memoryCache:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCache;

    invoke-interface {v2, p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCache;->getData(Ljava/lang/String;)[B

    move-result-object v0

    .line 43
    .local v0, "val":[B
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 49
    .end local v0    # "val":[B
    .local v1, "val":[B
    :goto_0
    return-object v1

    .line 47
    .end local v1    # "val":[B
    .restart local v0    # "val":[B
    :cond_2
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCacheProxy;->fileSystemCache:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCache;

    invoke-interface {v2, p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCache;->getData(Ljava/lang/String;)[B

    move-result-object v0

    move-object v1, v0

    .line 49
    .end local v0    # "val":[B
    .restart local v1    # "val":[B
    goto :goto_0
.end method

.method private static initCache()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;->getInstance()Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCacheProxy;->memoryCache:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCache;

    .line 23
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;->getInstance()Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCacheProxy;->fileSystemCache:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCache;

    .line 24
    return-void
.end method

.method public static putData(Ljava/lang/String;[B)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # [B

    .prologue
    .line 27
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCacheProxy;->fileSystemCache:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCache;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCacheProxy;->memoryCache:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCache;

    if-nez v2, :cond_1

    .line 28
    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCacheProxy;->initCache()V

    .line 31
    :cond_1
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCacheProxy;->memoryCache:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCache;

    invoke-interface {v2, p0, p1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCache;->putData(Ljava/lang/String;[B)Z

    move-result v0

    .line 32
    .local v0, "cachedA":Z
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCacheProxy;->fileSystemCache:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCache;

    invoke-interface {v2, p0, p1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCache;->putData(Ljava/lang/String;[B)Z

    move-result v1

    .line 34
    .local v1, "cachedB":Z
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
