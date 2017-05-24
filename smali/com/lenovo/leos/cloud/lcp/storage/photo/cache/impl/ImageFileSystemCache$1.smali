.class Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache$1;
.super Landroid/support/v4/util/LruCache;
.source "ImageFileSystemCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;->initCacheInstance()V
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;I)V
    .locals 0
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache$1;->this$0:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;

    .line 51
    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Long;

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache$1;->entryRemoved(ZLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 3
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "oldValue"    # Ljava/lang/Long;
    .param p4, "newValue"    # Ljava/lang/Long;

    .prologue
    .line 61
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache$1;->this$0:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;

    # invokes: Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;->getFile(Ljava/lang/String;)Ljava/io/File;
    invoke-static {v2, p2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;->access$0(Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 62
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache$1;->sizeOf(Ljava/lang/String;Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public sizeOf(Ljava/lang/String;Ljava/lang/Long;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;

    .prologue
    .line 54
    invoke-virtual {p2}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method
