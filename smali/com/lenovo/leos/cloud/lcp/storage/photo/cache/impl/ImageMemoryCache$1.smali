.class Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache$1;
.super Landroid/support/v4/util/LruCache;
.source "ImageMemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;->initCacheInstance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;I)V
    .locals 0
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache$1;->this$0:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;

    .line 33
    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Ljava/lang/String;

    check-cast p3, [B

    check-cast p4, [B

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache$1;->entryRemoved(ZLjava/lang/String;[B[B)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;[B[B)V
    .locals 2
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "oldValue"    # [B
    .param p4, "newValue"    # [B

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache$1;->this$0:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;

    # getter for: Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;->softCache:Ljava/util/Map;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;->access$0(Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache$1;->sizeOf(Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method public sizeOf(Ljava/lang/String;[B)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 37
    array-length v0, p2

    return v0
.end method
