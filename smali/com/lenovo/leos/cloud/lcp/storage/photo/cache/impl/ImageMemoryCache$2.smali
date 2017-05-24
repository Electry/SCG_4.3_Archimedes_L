.class Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache$2;
.super Ljava/util/LinkedHashMap;
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
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/ref/SoftReference",
        "<[B>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x49ccada370fbeea2L


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;IFZ)V
    .locals 0
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # F
    .param p4, "$anonymous2"    # Z

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache$2;->this$0:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache;

    .line 46
    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<[B>;>;)Z"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/SoftReference<[B>;>;"
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageMemoryCache$2;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
