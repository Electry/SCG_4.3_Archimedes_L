.class public final Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;
.super Ljava/lang/Object;
.source "ImageFileSystemCache.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/ImageCache;


# static fields
.field public static final IMAGE_CACHE_DIR:Ljava/lang/String; = "/images_cache"

.field private static final IMAGE_NOMEDIA_DIR:Ljava/lang/String; = ".nomedia"

.field private static final MAX_CACHE_SIZE:I = 0x6400000

.field private static instance:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;


# instance fields
.field private hardCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private rootCacheDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;->instance:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;->rootCacheDir:Ljava/io/File;

    .line 24
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;->hardCache:Landroid/support/v4/util/LruCache;

    .line 29
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;->initCacheInstance()V

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;->rootCacheDir:Ljava/io/File;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 147
    :cond_0
    :goto_0
    return-object v0

    .line 143
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;->rootCacheDir:Ljava/io/File;

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 145
    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;
    .locals 2

    .prologue
    .line 33
    const-class v1, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;->instance:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;->instance:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;

    .line 36
    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;->instance:Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 152
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;->rootCacheDir:Ljava/io/File;

    if-nez v5, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-object v4

    .line 156
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;->rootCacheDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "absolutePath":Ljava/lang/String;
    const/4 v5, 0x0

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "dirString":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 160
    :cond_2
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".nomedia"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v3, "nomediaDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 162
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 165
    :cond_3
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    goto :goto_0
.end method

.method private initCacheInstance()V
    .locals 6

    .prologue
    .line 40
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;->getStorageRootPath()Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "storageRootPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/images_cache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;->rootCacheDir:Ljava/io/File;

    .line 42
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/images_cache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".nomedia"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "noMediaDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 48
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 49
    .local v1, "sBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 51
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache$1;

    const/high16 v4, 0x6400000

    invoke-direct {v3, p0, v4}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache$1;-><init>(Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;I)V

    iput-object v3, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;->hardCache:Landroid/support/v4/util/LruCache;

    .line 70
    return-void
.end method


# virtual methods
.method public getData(Ljava/lang/String;)[B
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 102
    const/4 v3, 0x0

    .line 104
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;->getFile(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 105
    .local v0, "bitmapFile":Ljava/io/File;
    if-nez v0, :cond_1

    .line 127
    if-eqz v3, :cond_0

    .line 129
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    .end local v0    # "bitmapFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v6

    .line 130
    .restart local v0    # "bitmapFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 131
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 109
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .local v4, "inputStream":Ljava/io/InputStream;
    const/4 v5, 0x0

    :try_start_3
    new-array v1, v5, [B

    .line 111
    .local v1, "data":[B
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    if-eqz v4, :cond_3

    .line 129
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v3, v4

    .line 130
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 122
    .end local v0    # "bitmapFile":Ljava/io/File;
    .end local v1    # "data":[B
    :catch_1
    move-exception v2

    .line 123
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 127
    if-eqz v3, :cond_0

    .line 129
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 130
    :catch_2
    move-exception v2

    .line 131
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 124
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 125
    .local v2, "e":Ljava/lang/Error;
    :goto_2
    :try_start_7
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 127
    if-eqz v3, :cond_0

    .line 129
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_0

    .line 130
    :catch_4
    move-exception v2

    .line 131
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 126
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 127
    :goto_3
    if-eqz v3, :cond_2

    .line 129
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 134
    :cond_2
    :goto_4
    throw v5

    .line 130
    :catch_5
    move-exception v2

    .line 131
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 130
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "bitmapFile":Ljava/io/File;
    .restart local v1    # "data":[B
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :catch_6
    move-exception v2

    .line 131
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    move-object v3, v4

    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 126
    .end local v1    # "data":[B
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 124
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    goto :goto_2

    .line 122
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public putData(Ljava/lang/String;[B)Z
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 75
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 76
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 97
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return v3

    .line 79
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;->getOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 80
    .local v2, "fos":Ljava/io/FileOutputStream;
    if-nez v2, :cond_1

    move v3, v4

    .line 81
    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 86
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 87
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 88
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;->hardCache:Landroid/support/v4/util/LruCache;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :try_start_1
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;->hardCache:Landroid/support/v4/util/LruCache;

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/storage/photo/cache/impl/ImageFileSystemCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v6, "ImageCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Put Bitmap to FileSystemCache : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    monitor-exit v5

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 94
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    move v3, v4

    .line 97
    goto :goto_0
.end method
