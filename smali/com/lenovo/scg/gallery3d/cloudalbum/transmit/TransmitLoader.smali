.class public Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;
.super Ljava/lang/Object;
.source "TransmitLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnUploadListener;,
        Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$ContentResolverQueryCallback;,
        Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

.field public static mPhotoStorageApi:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;


# instance fields
.field private engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

.field private mContext:Landroid/content/Context;

.field public mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mPhotoStorageApi:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mContext:Landroid/content/Context;

    .line 51
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    .line 55
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    .line 57
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mResolver:Landroid/content/ContentResolver;

    .line 60
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    .line 61
    return-void
.end method

.method public static getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->instance:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->instance:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->instance:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->instance:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private querySource(Landroid/net/Uri;[Ljava/lang/String;Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$ContentResolverQueryCallback;)V
    .locals 7
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "callback"    # Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$ContentResolverQueryCallback;

    .prologue
    .line 216
    const/4 v6, 0x0

    .line 218
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 219
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-interface {p3, v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$ContentResolverQueryCallback;->onCursorResult(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :cond_0
    if-eqz v6, :cond_1

    .line 226
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_1
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 225
    if-eqz v6, :cond_1

    .line 226
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 226
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method


# virtual methods
.method public deleteContent(Ljava/io/File;)I
    .locals 7
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 166
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 167
    .local v0, "delete":I
    const-string v1, "WYJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete the existing file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return v0
.end method

.method public download(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;)V
    .locals 3
    .param p1, "cloudPhoto"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    new-instance v1, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-direct {v1, p1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->submit(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderTask;)V

    .line 100
    return-void
.end method

.method public download(Ljava/lang/String;)V
    .locals 3
    .param p1, "ablumId"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    new-instance v1, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderAlbumTask;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-direct {v1, p1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderAlbumTask;-><init>(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->submit(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/DownLoaderAlbumTask;)V

    .line 104
    return-void
.end method

.method public downloadCreate()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setDownloadCreate()V

    .line 108
    return-void
.end method

.method public downloadPause()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setDownloadPause()V

    .line 112
    return-void
.end method

.method public downloadResume()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setDownloadResume()V

    .line 116
    return-void
.end method

.method public downloadStop()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setDownloadStop()V

    .line 120
    return-void
.end method

.method public getAllImage()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v9, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;>;"
    const/4 v7, 0x0

    .line 278
    .local v7, "path":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    const/4 v6, 0x0

    .line 280
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "content://media/external/images/media/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_size"

    aput-object v4, v2, v3

    const-string v3, "_data like ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudFileUtils;->getCameraPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    move-object v8, v7

    .line 282
    .end local v7    # "path":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    .local v8, "path":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    :goto_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    new-instance v7, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    invoke-direct {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 284
    .end local v8    # "path":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    .restart local v7    # "path":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    :try_start_2
    sget-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->mDefaultId:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->setmId(Ljava/lang/String;)V

    .line 285
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->setmPath(Ljava/lang/String;)V

    .line 286
    const-string v0, "_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->setSize(J)V

    .line 287
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v8, v7

    .end local v7    # "path":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    .restart local v8    # "path":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    goto :goto_0

    .line 292
    :cond_0
    if-eqz v6, :cond_3

    .line 293
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v7, v8

    .line 296
    .end local v8    # "path":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    .restart local v7    # "path":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    :cond_1
    :goto_1
    return-object v9

    .line 289
    :catch_0
    move-exception v0

    .line 292
    :goto_2
    if-eqz v6, :cond_1

    .line 293
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 292
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_2

    .line 293
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 292
    .end local v7    # "path":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    .restart local v8    # "path":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    :catchall_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "path":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    .restart local v7    # "path":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    goto :goto_3

    .line 289
    .end local v7    # "path":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    .restart local v8    # "path":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    :catch_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "path":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    .restart local v7    # "path":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    goto :goto_2

    .end local v7    # "path":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    .restart local v8    # "path":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    :cond_3
    move-object v7, v8

    .end local v8    # "path":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    .restart local v7    # "path":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    goto :goto_1
.end method

.method public init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    sget-object v1, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mPhotoStorageApi:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

    if-eqz v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mContext:Landroid/content/Context;

    .line 66
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    .line 68
    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/DefaultPhotoStorageFactory;->getInstance()Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageFactory;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorageFactory;->getPhotoStorage(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

    move-result-object v1

    sput-object v1, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mPhotoStorageApi:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_1
    new-instance v1, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-direct {v1, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mResolver:Landroid/content/ContentResolver;

    .line 74
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->openOrCreateCloudDB()V

    .line 76
    const-string v1, "WYJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exist("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "albumset_table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "albumset_table"

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->isTableExist(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "albumset_table"

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->isTableExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 78
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "CREATE TABLE if not exists albumset_table(album_id INTEGER PRIMARY KEY,album_version LONG,album_name TEXT,album_url TEXT,photo_count INTEGER,album_size LONG default 0)"

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->createCloudTable(Ljava/lang/String;)V

    .line 80
    :cond_2
    const-string v1, "WYJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exist("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "album_table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "album_table"

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->isTableExist(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "album_table"

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->isTableExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 82
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "CREATE TABLE if not exists album_table(photo_id INTEGER PRIMARY KEY,album_id TEXT,photo_name TEXT,photo_small_thumb_url TEXT,photo_big_thumb_url TEXT,photo_url TEXT,photo_download INTEGER default 0,photo_size LONG default 0)"

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->createCloudTable(Ljava/lang/String;)V

    .line 84
    :cond_3
    const-string v1, "WYJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exist("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "image_table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "image_table"

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->isTableExist(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "image_table"

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->isTableExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 86
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "CREATE TABLE if not exists image_table(image_id INTEGER PRIMARY KEY,image_path TEXT,image_size LONG default 0)"

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->createCloudTable(Ljava/lang/String;)V

    .line 88
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->closeCloudDB()V

    goto/16 :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    const-string v1, "WYJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LcpPhotoException e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public insertContent(Ljava/io/File;)Landroid/net/Uri;
    .locals 10
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 175
    const/4 v5, 0x0

    .line 177
    .local v5, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudFileUtils;->readBitmapFromUri(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 178
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 179
    .local v2, "now":J
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 180
    .local v6, "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "title"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v7, "_display_name"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string/jumbo v7, "mime_type"

    const-string v8, "image/jpeg"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v7, "datetaken"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 184
    const-string v7, "date_modified"

    const-wide/16 v8, 0x3e8

    div-long v8, v2, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 185
    const-string v7, "date_added"

    const-wide/16 v8, 0x3e8

    div-long v8, v2, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 186
    const-string/jumbo v7, "orientation"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    const-string v7, "_data"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v7, "_size"

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 190
    const-string/jumbo v7, "width"

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    const-string v7, "height"

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    const/4 v7, 0x3

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "datetaken"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "latitude"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const-string v8, "longitude"

    aput-object v8, v4, v7

    .line 194
    .local v4, "projection":[Ljava/lang/String;
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    new-instance v8, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$1;

    invoke-direct {v8, p0, v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$1;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;Landroid/content/ContentValues;)V

    invoke-direct {p0, v7, v4, v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->querySource(Landroid/net/Uri;[Ljava/lang/String;Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$ContentResolverQueryCallback;)V

    .line 206
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mResolver:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 212
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "now":J
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v6    # "values":Landroid/content/ContentValues;
    :goto_0
    return-object v5

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    const-string v7, "WYJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insertContent Exception e = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSync()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->isSync()Z

    move-result v0

    return v0
.end method

.method public needCompression()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->isCompression()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkMobileDataConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveBucketId2Db(Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 301
    :try_start_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getSelectedMap()Ljava/util/Map;

    move-result-object v0

    .line 302
    .local v0, "selectedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->saveBucketId2Db(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v0    # "selectedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 1
    .param p1, "castIntent"    # Landroid/content/Intent;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 96
    :cond_0
    return-void
.end method

.method public setOnDownloadListener(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setOnDownloadListener(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnDownloadListener;)V

    .line 158
    return-void
.end method

.method public setOnUploadListener(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnUploadListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnUploadListener;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setOnUploadListener(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader$OnUploadListener;)V

    .line 269
    return-void
.end method

.method public sync(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;)V
    .locals 3
    .param p1, "cloudPath"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    new-instance v1, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-direct {v1, p1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->sync(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncTask;)V

    .line 133
    return-void
.end method

.method public syncAuto()V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    new-instance v1, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-direct {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setSyncAuto(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;)V

    .line 124
    return-void
.end method

.method public syncAutoStop()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setSyncAutoStop()V

    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setSyncStop()V

    .line 129
    return-void
.end method

.method public upload(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;)V
    .locals 3
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    new-instance v1, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-direct {v1, p1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->submit(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/UpLoaderTask;)V

    .line 233
    return-void
.end method

.method public uploadCreate()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setUploadCreate()V

    .line 249
    return-void
.end method

.method public uploadPause()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setUploadPause()V

    .line 237
    return-void
.end method

.method public uploadResume()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setUploadResume()V

    .line 241
    return-void
.end method

.method public uploadStop()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setUploadStop()V

    .line 245
    return-void
.end method
