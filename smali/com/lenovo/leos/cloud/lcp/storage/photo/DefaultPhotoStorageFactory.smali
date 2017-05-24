.class public Lcom/lenovo/leos/cloud/lcp/storage/photo/DefaultPhotoStorageFactory;
.super Ljava/lang/Object;
.source "DefaultPhotoStorageFactory.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageFactory;


# static fields
.field private static instance:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/DefaultPhotoStorageFactory;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/DefaultPhotoStorageFactory;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/DefaultPhotoStorageFactory;->instance:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageFactory;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/DefaultPhotoStorageFactory;->instance:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageFactory;

    return-object v0
.end method


# virtual methods
.method public getPhotoStorage(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;
    .locals 4
    .param p1, "userid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;

    const-string/jumbo v3, "userid is empty!"

    invoke-direct {v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 31
    :cond_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;

    invoke-direct {v0, p1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, "result":Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->I()Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/StoreInfoCache;->setStorage(Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageImpl;)V

    .line 35
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->Me()Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/Reaper;->init()V

    .line 37
    return-object v0
.end method
