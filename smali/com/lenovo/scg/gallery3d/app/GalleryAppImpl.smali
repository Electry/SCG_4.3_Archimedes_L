.class public Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;
.super Landroid/app/Application;
.source "GalleryAppImpl.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/app/GalleryApp;


# static fields
.field public static final DELAY_TIME_SNDMSG:I = 0x0

.field private static final DOWNLOAD_CAPACITY:J = 0x4000000L

.field private static final DOWNLOAD_FOLDER:Ljava/lang/String; = "download"

.field public static isEditing:Z

.field private static mAppImpl:Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;

.field public static mHeightGL:I

.field public static mWidthGL:I


# instance fields
.field public mCurrentImagePath:Ljava/lang/String;

.field private mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;

.field private mDefaultPage:I

.field private mDownloadCache:Lcom/lenovo/scg/gallery3d/data/DownloadCache;

.field private mFilterStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/edit/FilterStack;",
            ">;"
        }
    .end annotation
.end field

.field private mHasActivityResult:Z

.field private mImageCacheService:Lcom/lenovo/scg/gallery3d/data/ImageCacheService;

.field private mIsEnableLocalTimePageAnimation:Z

.field private mIsPhotoViewAutoRotate:Z

.field private mLock:Ljava/lang/Object;

.field private mPsersonCenterToggleListener:Lcom/lenovo/scg/gallery3d/app/GalleryApp$PsersonCenterToggleListener;

.field private mScaleBitmap:Landroid/graphics/Bitmap;

.field private mStitchingProgressManager:Lcom/lenovo/scg/gallery3d/app/StitchingProgressManager;

.field private mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    sput v0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mWidthGL:I

    .line 71
    sput v0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mHeightGL:I

    .line 112
    sput-boolean v0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->isEditing:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 50
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mFilterStacks:Ljava/util/ArrayList;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mDefaultPage:I

    .line 98
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mIsEnableLocalTimePageAnimation:Z

    .line 108
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mIsPhotoViewAutoRotate:Z

    return-void
.end method

.method public static getGalleryContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mAppImpl:Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;

    return-object v0
.end method

.method private initializeAsyncTask()V
    .locals 1

    .prologue
    .line 238
    :try_start_0
    const-class v0, Landroid/os/AsyncTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isDeleteAllFilterStacks()Z
    .locals 3

    .prologue
    .line 289
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mFilterStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 290
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mFilterStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;

    .line 291
    .local v0, "filterStack":Lcom/lenovo/scg/gallery3d/edit/FilterStack;
    if-eqz v0, :cond_0

    .line 292
    const/4 v2, 0x0

    .line 295
    .end local v0    # "filterStack":Lcom/lenovo/scg/gallery3d/edit/FilterStack;
    :goto_1
    return v2

    .line 289
    .restart local v0    # "filterStack":Lcom/lenovo/scg/gallery3d/edit/FilterStack;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    .end local v0    # "filterStack":Lcom/lenovo/scg/gallery3d/edit/FilterStack;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public deleteFilterStack(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mFilterStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mFilterStacks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->isDeleteAllFilterStacks()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/EditUtils;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;-><init>()V

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->deleteTempFile()V

    .line 284
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mFilterStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 286
    :cond_1
    return-void
.end method

.method public getAndroidContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 172
    return-object p0
.end method

.method public getCurrentBitmap(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 307
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mFilterStacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mFilterStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mFilterStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->getCurrentBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 310
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;
    .locals 1

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/DataManager;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/data/DataManager;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;

    .line 190
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/DataManager;->initializeSourceMap()V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultPage()I
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mDefaultPage:I

    return v0
.end method

.method public declared-synchronized getDownloadCache()Lcom/lenovo/scg/gallery3d/data/DownloadCache;
    .locals 4

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mDownloadCache:Lcom/lenovo/scg/gallery3d/data/DownloadCache;

    if-nez v1, :cond_2

    .line 222
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 224
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 226
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to create: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    .end local v0    # "cacheDir":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 229
    .restart local v0    # "cacheDir":Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/lenovo/scg/gallery3d/data/DownloadCache;

    const-wide/32 v2, 0x4000000

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/lenovo/scg/gallery3d/data/DownloadCache;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryApp;Ljava/io/File;J)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mDownloadCache:Lcom/lenovo/scg/gallery3d/data/DownloadCache;

    .line 231
    .end local v0    # "cacheDir":Ljava/io/File;
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mDownloadCache:Lcom/lenovo/scg/gallery3d/data/DownloadCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method public getEnableLocalTimePageAnimation()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mIsEnableLocalTimePageAnimation:Z

    return v0
.end method

.method public getFilterStack(I)Lcom/lenovo/scg/gallery3d/edit/FilterStack;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 245
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mFilterStacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mFilterStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mFilterStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/edit/FilterStack;

    .line 248
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilterStackIndex()I
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mFilterStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getImageCacheService()Lcom/lenovo/scg/gallery3d/data/ImageCacheService;
    .locals 3

    .prologue
    .line 203
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mImageCacheService:Lcom/lenovo/scg/gallery3d/data/ImageCacheService;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/ImageCacheService;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lenovo/scg/gallery3d/data/ImageCacheService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mImageCacheService:Lcom/lenovo/scg/gallery3d/data/ImageCacheService;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mImageCacheService:Lcom/lenovo/scg/gallery3d/data/ImageCacheService;

    monitor-exit v1

    return-object v0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPhotoViewAutoScreenRotated()Z
    .locals 4

    .prologue
    .line 370
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getGalleryLocalPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 371
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "photoViewOrietion"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 373
    .local v0, "isPhotoViewAutoRotate":Z
    return v0
.end method

.method public getStitchingProgressManager()Lcom/lenovo/scg/gallery3d/app/StitchingProgressManager;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mStitchingProgressManager:Lcom/lenovo/scg/gallery3d/app/StitchingProgressManager;

    return-object v0
.end method

.method public declared-synchronized getThreadPool()Lcom/lenovo/scg/gallery3d/util/ThreadPool;
    .locals 1

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/util/ThreadPool;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mThreadPool:Lcom/lenovo/scg/gallery3d/util/ThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDoingEdit()Z
    .locals 1

    .prologue
    .line 383
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->isEditing:Z

    return v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 123
    invoke-static {}, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;->getInstance()Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;

    move-result-object v3

    .line 124
    .local v3, "mUncaughtExceptionHandler":Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;->init(Landroid/content/Context;)V

    .line 125
    sput-object p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mAppImpl:Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;

    .line 127
    invoke-static {p0}, Lcom/lenovo/scg/camera/CameraUtil;->initialize(Landroid/content/Context;)V

    .line 128
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->initializeAsyncTask()V

    .line 129
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->initialize(Landroid/content/Context;)V

    .line 130
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/gadget/WidgetUtils;->initialize(Landroid/content/Context;)V

    .line 131
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;->initialize(Landroid/content/Context;)V

    .line 132
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/util/UsageStatistics;->initialize(Landroid/content/Context;)V

    .line 133
    invoke-static {p0}, Lcom/lenovo/scg/photos/data/MediaCache;->initialize(Landroid/content/Context;)V

    .line 135
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/util/LightCycleHelper;->createStitchingManagerInstance(Lcom/lenovo/scg/gallery3d/app/GalleryApp;)Lcom/lenovo/scg/gallery3d/app/StitchingProgressManager;

    move-result-object v5

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mStitchingProgressManager:Lcom/lenovo/scg/gallery3d/app/StitchingProgressManager;

    .line 136
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mStitchingProgressManager:Lcom/lenovo/scg/gallery3d/app/StitchingProgressManager;

    if-eqz v5, :cond_0

    .line 137
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mStitchingProgressManager:Lcom/lenovo/scg/gallery3d/app/StitchingProgressManager;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/gallery3d/app/StitchingProgressManager;->addChangeListener(Lcom/lenovo/scg/gallery3d/app/StitchingChangeListener;)V

    .line 140
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->initialize(Landroid/content/Context;)V

    .line 144
    const v5, 0x7f0f09d6

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "appname":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 147
    .local v4, "sh":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "minicamera_shortcut_is_created"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 148
    .local v1, "isInstalledMiniCamera":Z
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 149
    .local v2, "isQRCodeSupported":Z
    const-string v5, "GalleryAppImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCreate, appname = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isInstalledMiniCamera = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isQRCodeSupported = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 152
    const v5, 0x7f030002

    const-class v6, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    invoke-static {p0, v0, v5, v6}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->addShortcut(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Class;)V

    .line 153
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v6, "minicamera_shortcut_is_created"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 168
    :cond_1
    return-void
.end method

.method public onPsersonCenterToggleListen()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mPsersonCenterToggleListener:Lcom/lenovo/scg/gallery3d/app/GalleryApp$PsersonCenterToggleListener;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mPsersonCenterToggleListener:Lcom/lenovo/scg/gallery3d/app/GalleryApp$PsersonCenterToggleListener;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryApp$PsersonCenterToggleListener;->onPersonCenterToggle()V

    .line 342
    :cond_0
    return-void
.end method

.method public resetScaleBitmap(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 299
    const-string v0, "jiaxiaowei"

    const-string/jumbo v1, "resetScaleBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mScaleBitmap:Landroid/graphics/Bitmap;

    .line 304
    return-void
.end method

.method public setDefaultPage(I)V
    .locals 0
    .param p1, "defaultPage"    # I

    .prologue
    .line 325
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mDefaultPage:I

    .line 326
    return-void
.end method

.method public setDoingEdit(Z)V
    .locals 0
    .param p1, "doing"    # Z

    .prologue
    .line 389
    sput-boolean p1, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->isEditing:Z

    .line 390
    return-void
.end method

.method public setEnableLocalTimePageAnimation(Z)V
    .locals 0
    .param p1, "isEnable"    # Z

    .prologue
    .line 352
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mIsEnableLocalTimePageAnimation:Z

    .line 353
    return-void
.end method

.method public setFilterStack(Lcom/lenovo/scg/gallery3d/edit/FilterStack;)V
    .locals 1
    .param p1, "filterStack"    # Lcom/lenovo/scg/gallery3d/edit/FilterStack;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mFilterStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    return-void
.end method

.method public setOnPersonCenterToggleListener(Lcom/lenovo/scg/gallery3d/app/GalleryApp$PsersonCenterToggleListener;)V
    .locals 0
    .param p1, "psersonCenterToggleListener"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp$PsersonCenterToggleListener;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mPsersonCenterToggleListener:Lcom/lenovo/scg/gallery3d/app/GalleryApp$PsersonCenterToggleListener;

    .line 346
    return-void
.end method

.method public setPhotoViewAutoScreenRotate(Z)V
    .locals 0
    .param p1, "isRotate"    # Z

    .prologue
    .line 364
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mIsPhotoViewAutoRotate:Z

    .line 365
    return-void
.end method

.method public setScaleBitmap(Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p1, "scaleBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "index"    # I

    .prologue
    .line 258
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mFilterStacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mFilterStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 259
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mScaleBitmap:Landroid/graphics/Bitmap;

    .line 260
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/NothingCommand;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/edit/NothingCommand;-><init>()V

    .line 263
    .local v0, "command":Lcom/lenovo/scg/gallery3d/edit/Command;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mFilterStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p2, v2, :cond_1

    .line 276
    .end local v0    # "command":Lcom/lenovo/scg/gallery3d/edit/Command;
    :cond_0
    :goto_0
    return-void

    .line 268
    .restart local v0    # "command":Lcom/lenovo/scg/gallery3d/edit/Command;
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mFilterStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/edit/FilterStack;

    .line 270
    .local v1, "ft":Lcom/lenovo/scg/gallery3d/edit/FilterStack;
    if-eqz v1, :cond_0

    .line 272
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mScaleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->addCommand(Lcom/lenovo/scg/gallery3d/edit/Command;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
