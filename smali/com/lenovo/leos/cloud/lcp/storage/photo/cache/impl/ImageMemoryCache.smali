.class public final Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;
.super Ljava/lang/Object;
.source "ImageMemoryCache.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCache;


# static fields
.field private static final MAX_HARD_CACHE_SIZE:I = 0x7d000

.field private static final MAX_SOFT_CACHE_SIZE:I = 0x1e

.field private static instance:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;


# instance fields
.field private hardCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private softCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<[B>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;->instance:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;->hardCache:Landroid/support/v4/util/LruCache;

    .line 17
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;->softCache:Ljava/util/Map;

    .line 22
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;->initCacheInstance()V

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;->softCache:Ljava/util/Map;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;
    .locals 2

    .prologue
    .line 26
    const-class v1, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;->instance:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;->instance:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;

    .line 29
    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;->instance:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initCacheInstance()V
    .locals 4

    .prologue
    .line 33
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache$1;

    const v1, 0x7d000

    invoke-direct {v0, p0, v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache$1;-><init>(Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;I)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;->hardCache:Landroid/support/v4/util/LruCache;

    .line 46
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache$2;

    const/16 v1, 0x1e

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache$2;-><init>(Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;IFZ)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;->softCache:Ljava/util/Map;

    .line 58
    return-void
.end method


# virtual methods
.method public getData(Ljava/lang/String;)[B
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 62
    if-nez p1, :cond_0

    move-object v1, v2

    .line 85
    :goto_0
    return-object v1

    .line 65
    :cond_0
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;->hardCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v3, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 67
    .local v1, "val":[B
    if-eqz v1, :cond_1

    .line 68
    const-string v2, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Hit Bitmap from First MemoryCache : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    :cond_1
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;->softCache:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 74
    .local v0, "softReference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<[B>;"
    if-eqz v0, :cond_3

    .line 75
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "val":[B
    check-cast v1, [B

    .line 77
    .restart local v1    # "val":[B
    if-eqz v1, :cond_2

    .line 78
    const-string v2, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Hit Bitmap from Second MemoryCache : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :cond_2
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;->softCache:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v1, v2

    .line 85
    goto :goto_0
.end method

.method public putData(Ljava/lang/String;[B)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 90
    if-eqz p2, :cond_0

    .line 91
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;->hardCache:Landroid/support/v4/util/LruCache;

    monitor-enter v1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;->hardCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v0, "ImageCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Put Bitmap to MemoryCache : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    monitor-exit v1

    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 97
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
