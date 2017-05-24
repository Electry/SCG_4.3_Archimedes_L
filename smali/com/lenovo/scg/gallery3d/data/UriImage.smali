.class public Lcom/lenovo/scg/gallery3d/data/UriImage;
.super Lcom/lenovo/scg/gallery3d/data/MediaItem;
.source "UriImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/data/UriImage$BitmapJob;,
        Lcom/lenovo/scg/gallery3d/data/UriImage$RegionDecoderJob;
    }
.end annotation


# static fields
.field private static final STATE_DOWNLOADED:I = 0x2

.field private static final STATE_DOWNLOADING:I = 0x1

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_INIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UriImage"

.field private static final THREAD_POOL_NAME_URIIMAGE_BITMAPJOB:Ljava/lang/String; = "pool_uriimage_bitmapjob"

.field private static final THREAD_POOL_NAME_URIIMAGE_REGIONDECODERJOB:Ljava/lang/String; = "pool_uriimage_regiondecoderjob"


# instance fields
.field private mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

.field private mCacheEntry:Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;

.field private final mContentType:Ljava/lang/String;

.field private mDefaultProjectes:[Ljava/lang/String;

.field private mDownloadAuthority:Ljava/lang/String;

.field private mDownloadProjects:[Ljava/lang/String;

.field private mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mFilePath:Ljava/lang/String;

.field private mHeight:I

.field private mImageName:Ljava/lang/String;

.field private mMmsAuthority:Ljava/lang/String;

.field private mMmsProjects:[Ljava/lang/String;

.field private mPanoramaMetadata:Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;

.field private mRotation:I

.field private mState:I

.field private final mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/GalleryApp;Lcom/lenovo/scg/gallery3d/data/Path;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5
    .param p1, "application"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    .param p2, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "contentType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/UriImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;J)V

    .line 72
    iput v2, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mState:I

    .line 80
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;-><init>(Lcom/lenovo/scg/gallery3d/data/MediaObject;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mPanoramaMetadata:Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;

    .line 87
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_display_name"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mDownloadProjects:[Ljava/lang/String;

    .line 89
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "name"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mMmsProjects:[Ljava/lang/String;

    .line 91
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mDefaultProjectes:[Ljava/lang/String;

    .line 93
    const-string v0, "downloads"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mDownloadAuthority:Ljava/lang/String;

    .line 95
    const-string/jumbo v0, "mms"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mMmsAuthority:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    .line 103
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 104
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    .line 105
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/data/UriImage;Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/data/UriImage;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/data/UriImage;->prepareInputFile(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/data/UriImage;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/data/UriImage;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/gallery3d/data/UriImage;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/data/UriImage;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mWidth:I

    return p1
.end method

.method static synthetic access$402(Lcom/lenovo/scg/gallery3d/data/UriImage;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/data/UriImage;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mHeight:I

    return p1
.end method

.method private isSharable()Z
    .locals 2

    .prologue
    .line 343
    const-string v0, "file"

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private openFileOrDownloadTempFile(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)V
    .locals 3
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/data/UriImage;->openOrDownloadInner(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)I

    move-result v0

    .line 126
    .local v0, "state":I
    monitor-enter p0

    .line 127
    :try_start_0
    iput v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mState:I

    .line 128
    iget v1, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 129
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 131
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 134
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 135
    monitor-exit p0

    .line 136
    return-void

    .line 135
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private openOrDownloadInner(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)I
    .locals 11
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 139
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "scheme":Ljava/lang/String;
    const-string v8, "content"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.resource"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "file"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 143
    :cond_0
    :try_start_0
    const-string v8, "image/jpeg"

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 144
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v8}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 145
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/data/Exif;->getOrientation(Ljava/io/InputStream;)I

    move-result v8

    iput v8, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mRotation:I

    .line 146
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 148
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_1
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v8}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    const-string/jumbo v10, "r"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 149
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 174
    :cond_2
    :goto_0
    return v5

    .line 150
    :cond_3
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/data/UriImage;->updateUirImageInfo()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v7

    .line 151
    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v5, "UriImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to open: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v6

    .line 154
    goto :goto_0

    .line 158
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    :try_start_1
    new-instance v8, Ljava/net/URI;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    .line 159
    .local v4, "url":Ljava/net/URL;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v8}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDownloadCache()Lcom/lenovo/scg/gallery3d/data/DownloadCache;

    move-result-object v8

    invoke-virtual {v8, p1, v4}, Lcom/lenovo/scg/gallery3d/data/DownloadCache;->download(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;)Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;

    move-result-object v8

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mCacheEntry:Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;

    .line 160
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_2

    .line 161
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mCacheEntry:Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;

    if-nez v5, :cond_5

    .line 162
    const-string v5, "UriImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 163
    goto :goto_0

    .line 165
    :cond_5
    const-string v5, "image/jpeg"

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 166
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mCacheEntry:Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;

    iget-object v5, v5, Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 167
    .restart local v1    # "is":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/data/Exif;->getOrientation(Ljava/io/InputStream;)I

    move-result v5

    iput v5, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mRotation:I

    .line 168
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 170
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_6
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mCacheEntry:Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;

    iget-object v5, v5, Lcom/lenovo/scg/gallery3d/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    const/high16 v8, 0x10000000

    invoke-static {v5, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v5, v7

    .line 171
    goto/16 :goto_0

    .line 172
    .end local v4    # "url":Ljava/net/URL;
    :catch_1
    move-exception v3

    .line 173
    .local v3, "t":Ljava/lang/Throwable;
    const-string v5, "UriImage"

    const-string v7, "download error"

    invoke-static {v5, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v6

    .line 174
    goto/16 :goto_0
.end method

.method private prepareInputFile(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Z
    .locals 4
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 224
    new-instance v2, Lcom/lenovo/scg/gallery3d/data/UriImage$1;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/data/UriImage$1;-><init>(Lcom/lenovo/scg/gallery3d/data/UriImage;)V

    invoke-interface {p1, v2}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/lenovo/scg/gallery3d/util/ThreadPool$CancelListener;)V

    .line 235
    :goto_0
    monitor-enter p0

    .line 236
    :try_start_0
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    .line 243
    :goto_1
    return v0

    .line 237
    :cond_0
    iget v2, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mState:I

    if-nez v2, :cond_1

    .line 238
    const/4 v2, 0x1

    iput v2, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mState:I

    .line 252
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/data/UriImage;->openFileOrDownloadTempFile(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)V

    goto :goto_0

    .line 240
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 241
    monitor-exit p0

    goto :goto_1

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 242
    :cond_2
    :try_start_2
    iget v2, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 243
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_1

    .line 246
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 250
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method private updateUirImageInfo()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 184
    const/4 v7, 0x0

    .line 186
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 187
    .local v6, "authority":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mDefaultProjectes:[Ljava/lang/String;

    .line 188
    .local v2, "projects":[Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mDownloadAuthority:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 189
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mDownloadProjects:[Ljava/lang/String;

    .line 193
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 194
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    array-length v0, v2

    if-le v0, v9, :cond_5

    .line 196
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mImageName:Ljava/lang/String;

    .line 197
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mFilePath:Ljava/lang/String;

    .line 208
    :cond_1
    :goto_1
    const-string v0, "UriImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get image name is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mImageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :cond_2
    if-eqz v7, :cond_3

    .line 216
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 220
    .end local v2    # "projects":[Ljava/lang/String;
    .end local v6    # "authority":Ljava/lang/String;
    :cond_3
    :goto_2
    return-void

    .line 190
    .restart local v2    # "projects":[Ljava/lang/String;
    .restart local v6    # "authority":Ljava/lang/String;
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mMmsAuthority:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mMmsProjects:[Ljava/lang/String;

    goto :goto_0

    .line 199
    :cond_5
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mFilePath:Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mFilePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mFilePath:Ljava/lang/String;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v9, :cond_6

    .line 202
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mFilePath:Ljava/lang/String;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mImageName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 211
    .end local v2    # "projects":[Ljava/lang/String;
    .end local v6    # "authority":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 212
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v0, "UriImage"

    const-string/jumbo v1, "query UilImage contentProvider exception "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 214
    if-eqz v7, :cond_3

    .line 216
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 217
    :catch_1
    move-exception v0

    goto :goto_2

    .line 204
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v2    # "projects":[Ljava/lang/String;
    .restart local v6    # "authority":Ljava/lang/String;
    :cond_6
    :try_start_5
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mImageName:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 214
    .end local v2    # "projects":[Ljava/lang/String;
    .end local v6    # "authority":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_7

    .line 216
    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 217
    :cond_7
    :goto_3
    throw v0

    .restart local v2    # "projects":[Ljava/lang/String;
    .restart local v6    # "authority":Ljava/lang/String;
    :catch_2
    move-exception v0

    goto :goto_2

    .end local v2    # "projects":[Ljava/lang/String;
    .end local v6    # "authority":Ljava/lang/String;
    :catch_3
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public clearCachedPanoramaSupport()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mPanoramaMetadata:Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->clearCachedValues()V

    .line 336
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 389
    return-void

    .line 387
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDetails()Lcom/lenovo/scg/gallery3d/data/MediaDetails;
    .locals 4

    .prologue
    .line 358
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getDetails()Lcom/lenovo/scg/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 359
    .local v0, "details":Lcom/lenovo/scg/gallery3d/data/MediaDetails;
    iget v2, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mWidth:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mHeight:I

    if-eqz v2, :cond_0

    .line 360
    const/4 v2, 0x5

    iget v3, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 361
    const/4 v2, 0x6

    iget v3, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 363
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 364
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 366
    :cond_1
    const-string v2, "file"

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 367
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "filePath":Ljava/lang/String;
    const/16 v2, 0xc8

    invoke-virtual {v0, v2, v1}, Lcom/lenovo/scg/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 369
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaDetails;->extractExifInfo(Lcom/lenovo/scg/gallery3d/data/MediaDetails;Ljava/lang/String;)V

    .line 371
    .end local v1    # "filePath":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mImageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 372
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x2

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mImageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPanoramaSupport(Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mPanoramaMetadata:Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/scg/gallery3d/app/PanoramaMetadataSupport;->getPanoramaSupport(Lcom/lenovo/scg/gallery3d/app/GalleryApp;Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;)V

    .line 331
    return-void
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mRotation:I

    return v0
.end method

.method public getSupportedOperations()I
    .locals 3

    .prologue
    .line 307
    const/16 v0, 0x220

    .line 308
    .local v0, "supported":I
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/data/UriImage;->isSharable()Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    or-int/lit8 v0, v0, 0x40

    .line 314
    :cond_1
    const-string v1, "image/gif"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    or-int/lit16 v0, v0, 0x80

    .line 320
    :cond_2
    const-string v1, "image/speech"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 321
    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    .line 325
    :cond_3
    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x0

    return v0
.end method

.method public requestImage(I)Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/UriImage$BitmapJob;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/gallery3d/data/UriImage$BitmapJob;-><init>(Lcom/lenovo/scg/gallery3d/data/UriImage;I)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/UriImage$RegionDecoderJob;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/data/UriImage$RegionDecoderJob;-><init>(Lcom/lenovo/scg/gallery3d/data/UriImage;Lcom/lenovo/scg/gallery3d/data/UriImage$1;)V

    return-object v0
.end method
