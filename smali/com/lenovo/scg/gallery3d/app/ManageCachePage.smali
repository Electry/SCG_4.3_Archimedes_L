.class public Lcom/lenovo/scg/gallery3d/app/ManageCachePage;
.super Lcom/lenovo/scg/gallery3d/app/ActivityState;
.source "ManageCachePage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;
.implements Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;
.implements Lcom/lenovo/scg/gallery3d/app/EyePosition$EyePositionListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DATA_CACHE_SIZE:I = 0x100

.field public static final KEY_MEDIA_PATH:Ljava/lang/String; = "media-path"

.field private static final MSG_REFRESH_STORAGE_INFO:I = 0x1

.field private static final MSG_REQUEST_LAYOUT:I = 0x2

.field private static final PROGRESS_BAR_MAX:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "ManageCachePage"


# instance fields
.field private mAlbumCountToMakeAvailableOffline:I

.field private mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

.field private mCacheStorageInfo:Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;

.field private mEyePosition:Lcom/lenovo/scg/gallery3d/app/EyePosition;

.field private mFooterContent:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutReady:Z

.field private mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

.field private mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

.field protected mSelectionDrawer:Lcom/lenovo/scg/gallery3d/ui/ManageCacheDrawer;

.field protected mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

.field private mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

.field private mUpdateStorageInfo:Lcom/lenovo/scg/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateStorageInfoJob:Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mX:F

.field private mY:F

.field private mZ:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mLayoutReady:Z

    .line 109
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/ManageCachePage$1;-><init>(Lcom/lenovo/scg/gallery3d/app/ManageCachePage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    .line 259
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/ManageCachePage$3;-><init>(Lcom/lenovo/scg/gallery3d/app/ManageCachePage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mUpdateStorageInfoJob:Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/app/ManageCachePage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/ManageCachePage;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mLayoutReady:Z

    return v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/app/ManageCachePage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/ManageCachePage;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mLayoutReady:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/app/ManageCachePage;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/ManageCachePage;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/app/ManageCachePage;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/ManageCachePage;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->onDown(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/app/ManageCachePage;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/ManageCachePage;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->onUp()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/app/ManageCachePage;)Lcom/lenovo/scg/gallery3d/app/EyePosition;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/ManageCachePage;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mEyePosition:Lcom/lenovo/scg/gallery3d/app/EyePosition;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/app/ManageCachePage;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/ManageCachePage;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/app/ManageCachePage;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/ManageCachePage;

    .prologue
    .line 55
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mX:F

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/app/ManageCachePage;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/ManageCachePage;

    .prologue
    .line 55
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mY:F

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/app/ManageCachePage;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/ManageCachePage;

    .prologue
    .line 55
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mZ:F

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/app/ManageCachePage;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/ManageCachePage;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->refreshCacheStorageInfo()V

    return-void
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/app/ManageCachePage;)Lcom/lenovo/scg/gallery3d/ui/GLView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/ManageCachePage;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/app/ManageCachePage;)Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/ManageCachePage;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mCacheStorageInfo:Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;

    return-object v0
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 291
    const-string/jumbo v1, "media-path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "mediaPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 293
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/lenovo/scg/gallery3d/data/MediaSet;)V

    .line 296
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 297
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    .line 299
    new-instance v1, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    const/16 v4, 0x100

    invoke-direct {v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/data/MediaSet;I)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    .line 300
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mSelectionDrawer:Lcom/lenovo/scg/gallery3d/ui/ManageCacheDrawer;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/ManageCacheDrawer;->setModel(Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;)V

    .line 301
    return-void
.end method

.method private initializeFooterViews()V
    .locals 4

    .prologue
    .line 336
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 338
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 339
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0400f8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mFooterContent:Landroid/view/View;

    .line 341
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mFooterContent:Landroid/view/View;

    const v3, 0x7f100665

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->refreshCacheStorageInfo()V

    .line 343
    return-void
.end method

.method private initializeViews()V
    .locals 9

    .prologue
    .line 304
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 306
    .local v7, "activity":Landroid/app/Activity;
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryContext;Z)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    .line 307
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->setSelectionListener(Lcom/lenovo/scg/gallery3d/ui/SelectionManager$SelectionListener;)V

    .line 309
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/app/Config$ManageCachePage;->get(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/app/Config$ManageCachePage;

    move-result-object v8

    .line 311
    .local v8, "config":Lcom/lenovo/scg/gallery3d/app/Config$ManageCachePage;
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, v8, Lcom/lenovo/scg/gallery3d/app/Config$ManageCachePage;->albumsetSlotViewSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    .line 312
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/ManageCacheDrawer;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    iget-object v4, v8, Lcom/lenovo/scg/gallery3d/app/Config$ManageCachePage;->labelSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    iget v5, v8, Lcom/lenovo/scg/gallery3d/app/Config$ManageCachePage;->cachePinSize:I

    iget v6, v8, Lcom/lenovo/scg/gallery3d/app/Config$ManageCachePage;->cachePinMargin:I

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/ui/ManageCacheDrawer;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/SelectionManager;Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;II)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mSelectionDrawer:Lcom/lenovo/scg/gallery3d/ui/ManageCacheDrawer;

    .line 313
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mSelectionDrawer:Lcom/lenovo/scg/gallery3d/ui/ManageCacheDrawer;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->setSlotRenderer(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;)V

    .line 314
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    new-instance v1, Lcom/lenovo/scg/gallery3d/app/ManageCachePage$4;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/app/ManageCachePage$4;-><init>(Lcom/lenovo/scg/gallery3d/app/ManageCachePage;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->setListener(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Listener;)V

    .line 331
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->addComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 332
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->initializeFooterViews()V

    .line 333
    return-void
.end method

.method private onDown(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mSelectionDrawer:Lcom/lenovo/scg/gallery3d/ui/ManageCacheDrawer;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/ManageCacheDrawer;->setPressedIndex(I)V

    .line 165
    return-void
.end method

.method private onUp()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mSelectionDrawer:Lcom/lenovo/scg/gallery3d/ui/ManageCacheDrawer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/ManageCacheDrawer;->setPressedIndex(I)V

    .line 169
    return-void
.end method

.method private refreshCacheStorageInfo()V
    .locals 18

    .prologue
    .line 379
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mFooterContent:Landroid/view/View;

    const v15, 0x7f1003af

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .line 380
    .local v8, "progressBar":Landroid/widget/ProgressBar;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mFooterContent:Landroid/view/View;

    const v15, 0x7f100664

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 381
    .local v9, "status":Landroid/widget/TextView;
    const/16 v14, 0x2710

    invoke-virtual {v8, v14}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 382
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mCacheStorageInfo:Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;

    invoke-virtual {v14}, Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;->getTotalBytes()J

    move-result-wide v10

    .line 383
    .local v10, "totalBytes":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mCacheStorageInfo:Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;

    invoke-virtual {v14}, Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;->getUsedBytes()J

    move-result-wide v12

    .line 384
    .local v12, "usedBytes":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mCacheStorageInfo:Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;

    invoke-virtual {v14}, Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;->getExpectedUsedBytes()J

    move-result-wide v4

    .line 385
    .local v4, "expectedBytes":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mCacheStorageInfo:Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;

    invoke-virtual {v14}, Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;->getFreeBytes()J

    move-result-wide v6

    .line 387
    .local v6, "freeBytes":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 388
    .local v2, "activity":Landroid/app/Activity;
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-nez v14, :cond_0

    .line 389
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 390
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 393
    const v14, 0x7f0f06ac

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "-"

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, "label":Ljava/lang/String;
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    :goto_0
    return-void

    .line 396
    .end local v3    # "label":Ljava/lang/String;
    :cond_0
    const-wide/16 v14, 0x2710

    mul-long/2addr v14, v12

    div-long/2addr v14, v10

    long-to-int v14, v14

    invoke-virtual {v8, v14}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 397
    const-wide/16 v14, 0x2710

    mul-long/2addr v14, v4

    div-long/2addr v14, v10

    long-to-int v14, v14

    invoke-virtual {v8, v14}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 398
    const v14, 0x7f0f06ac

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v2, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v2, v14, v15}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 399
    .restart local v3    # "label":Ljava/lang/String;
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showToast()V
    .locals 4

    .prologue
    .line 366
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mAlbumCountToMakeAvailableOffline:I

    if-lez v1, :cond_0

    .line 367
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 368
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110002

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mAlbumCountToMakeAvailableOffline:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 371
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method private showToastForLocalAlbum()V
    .locals 3

    .prologue
    .line 374
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 375
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f06a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 376
    return-void
.end method


# virtual methods
.method protected getActionBarListener()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getBackgroundColorId()I
    .locals 1

    .prologue
    .line 106
    const v0, 0x7f0d001c

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f100665

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->assertTrue(Z)V

    .line 348
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    .line 349
    .local v2, "root":Lcom/lenovo/scg/gallery3d/ui/GLRoot;
    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 351
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 352
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 353
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->onBackPressed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 363
    :goto_0
    return-void

    .line 356
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->showToast()V

    .line 358
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-direct {v1, v3, v4}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/SelectionManager;)V

    .line 359
    .local v1, "menuExecutor":Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;
    const v3, 0x7f100026

    const v4, 0x7f0f0673

    invoke-virtual {v1, v3, v4, p0}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->startAction(IILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    goto :goto_0

    .end local v0    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    .end local v1    # "menuExecutor":Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v3
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->initializeFooterViews()V

    .line 234
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f10065e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 235
    .local v0, "layout":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 236
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 237
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mFooterContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 239
    :cond_0
    return-void
.end method

.method public onConfirmDialogDismissed(Z)V
    .locals 0
    .param p1, "confirmed"    # Z

    .prologue
    .line 422
    return-void
.end method

.method public onConfirmDialogShown()V
    .locals 0

    .prologue
    .line 426
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "restoreState"    # Landroid/os/Bundle;

    .prologue
    .line 206
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 207
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mCacheStorageInfo:Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;

    .line 208
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->initializeViews()V

    .line 209
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->initializeData(Landroid/os/Bundle;)V

    .line 210
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/EyePosition;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/lenovo/scg/gallery3d/app/EyePosition;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/app/EyePosition$EyePositionListener;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mEyePosition:Lcom/lenovo/scg/gallery3d/app/EyePosition;

    .line 211
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage$2;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/app/ManageCachePage$2;-><init>(Lcom/lenovo/scg/gallery3d/app/ManageCachePage;Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mHandler:Landroid/os/Handler;

    .line 228
    return-void
.end method

.method public onEyePositionChanged(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLView;->lockRendering()V

    .line 156
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mX:F

    .line 157
    iput p2, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mY:F

    .line 158
    iput p3, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mZ:F

    .line 159
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLView;->unlockRendering()V

    .line 160
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/GLView;->invalidate()V

    .line 161
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 243
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onPause()V

    .line 244
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->pause()V

    .line 245
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mSelectionDrawer:Lcom/lenovo/scg/gallery3d/ui/ManageCacheDrawer;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/ManageCacheDrawer;->pause()V

    .line 246
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mEyePosition:Lcom/lenovo/scg/gallery3d/app/EyePosition;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/EyePosition;->pause()V

    .line 248
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mUpdateStorageInfo:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mUpdateStorageInfo:Lcom/lenovo/scg/gallery3d/util/Future;

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/util/Future;->cancel()V

    .line 250
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mUpdateStorageInfo:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 254
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f10065e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 255
    .local v0, "layout":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 256
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 257
    return-void
.end method

.method public onProgressComplete(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->onBackPressed()V

    .line 406
    return-void
.end method

.method public onProgressStart()V
    .locals 0

    .prologue
    .line 430
    return-void
.end method

.method public onProgressUpdate(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 410
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 273
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onResume()V

    .line 274
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->setContentPane(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 275
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->resume()V

    .line 276
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mSelectionDrawer:Lcom/lenovo/scg/gallery3d/ui/ManageCacheDrawer;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/ManageCacheDrawer;->resume()V

    .line 277
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mEyePosition:Lcom/lenovo/scg/gallery3d/app/EyePosition;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/EyePosition;->resume()V

    .line 278
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mUpdateStorageInfoJob:Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->submit(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mUpdateStorageInfo:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 279
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f10065e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 280
    .local v0, "layout":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mFooterContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 281
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 282
    return-void
.end method

.method public onSelectionChange(Lcom/lenovo/scg/gallery3d/data/Path;Z)V
    .locals 0
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "selected"    # Z

    .prologue
    .line 418
    return-void
.end method

.method public onSelectionModeChange(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 414
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 8
    .param p1, "slotIndex"    # I

    .prologue
    .line 172
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mAlbumSetDataAdapter:Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v6, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v3

    .line 173
    .local v3, "targetSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    if-nez v3, :cond_0

    .line 202
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getSupportedOperations()I

    move-result v6

    and-int/lit16 v6, v6, 0x100

    if-nez v6, :cond_1

    .line 178
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->showToastForLocalAlbum()V

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v2

    .line 183
    .local v2, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getCacheFlag()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    const/4 v0, 0x1

    .line 184
    .local v0, "isFullyCached":Z
    :goto_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v6, v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/lenovo/scg/gallery3d/data/Path;)Z

    move-result v1

    .line 186
    .local v1, "isSelected":Z
    if-nez v0, :cond_2

    .line 189
    if-eqz v1, :cond_5

    .line 190
    iget v6, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mAlbumCountToMakeAvailableOffline:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mAlbumCountToMakeAvailableOffline:I

    .line 196
    :cond_2
    :goto_2
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getCacheSize()J

    move-result-wide v4

    .line 197
    .local v4, "sizeOfTarget":J
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mCacheStorageInfo:Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;

    xor-int v7, v0, v1

    if-eqz v7, :cond_3

    neg-long v4, v4

    .end local v4    # "sizeOfTarget":J
    :cond_3
    invoke-virtual {v6, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/CacheStorageUsageInfo;->increaseTargetCacheSize(J)V

    .line 198
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->refreshCacheStorageInfo()V

    .line 200
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v6, v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->toggle(Lcom/lenovo/scg/gallery3d/data/Path;)V

    .line 201
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->invalidate()V

    goto :goto_0

    .line 183
    .end local v0    # "isFullyCached":Z
    .end local v1    # "isSelected":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 192
    .restart local v0    # "isFullyCached":Z
    .restart local v1    # "isSelected":Z
    :cond_5
    iget v6, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mAlbumCountToMakeAvailableOffline:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->mAlbumCountToMakeAvailableOffline:I

    goto :goto_2
.end method
