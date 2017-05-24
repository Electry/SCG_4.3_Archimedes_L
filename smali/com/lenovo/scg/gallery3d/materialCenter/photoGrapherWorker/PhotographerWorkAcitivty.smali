.class public Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;
.super Landroid/app/Activity;
.source "PhotographerWorkAcitivty.java"


# static fields
.field private static final HIDE_PROGRESSBAR:I = 0x5

.field private static final LOAD_PHOTO_GRAPHER_LARGE_PHOTO_DONE:I = 0x4

.field private static final LOAD_PHOTO_GRAPHER_PHOTO_DONE:I = 0x3

.field private static final LOAD_PHOTO_GRAPHER_TOP:I = 0xa

.field private static final LOAD_WEB_IMAGE_DONE:I = 0x2

.field private static final MSG_HIDE_PROGRESS:I = 0x8

.field private static final MSG_LOW_STORAGE:I = 0x9

.field private static final MSG_UPDATE_PROGRESS:I = 0x7

.field private static final TAG:Ljava/lang/String; = "PhotographerWorkActivity"

.field private static final UPDATE_ERROR:I = 0x6

.field private static final UPDATE_VIEW_INFO:I = 0x1


# instance fields
.field SearchPhotoGrapherInfoRunnable:Ljava/lang/Runnable;

.field private adjustLocalCachedRunable:Ljava/lang/Runnable;

.field private mActivityParentView:Landroid/widget/ScrollView;

.field private mAllPhotoGridView:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;",
            ">;"
        }
    .end annotation
.end field

.field private mCameramanInfo:Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;

.field private mCameramanService:Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/service/CameramanService;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mCurrentUrl:Ljava/lang/String;

.field private mDumyProgress:I

.field private mErrorView:Landroid/widget/LinearLayout;

.field private mGetTypeImageListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

.field private mGetTypeLargeImageListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

.field private mHandler:Landroid/os/Handler;

.field private mImageAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;

.field private mLoadImagePrpgressBar:Landroid/widget/ProgressBar;

.field private mPhotoGraphRefresh:Landroid/widget/ImageView;

.field private mPhotoGrapherBackView:Landroid/widget/ImageView;

.field private mPhotoGrapherDetailTextView:Landroid/widget/TextView;

.field private mPhotoGrapherDetailsLayout:Landroid/widget/RelativeLayout;

.field private mPhotoGrapherDetailsParent:Landroid/widget/LinearLayout;

.field private mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

.field private mPhotoGrapherNameView:Landroid/widget/TextView;

.field private mPhotoGrapherPhoto:Landroid/widget/ImageView;

.field private mPhotoGrapherPhotoInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;

.field private mPhotoGrapherPhotosViewParent:Landroid/widget/LinearLayout;

.field private mPhotoGrapherWebsite:Landroid/widget/TextView;

.field private mPhotoGrapherWorkerViewsParent:Landroid/widget/RelativeLayout;

.field private mPhotoGraphersInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoGraphersPhotos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotographerSortColorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPool:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

.field private mProgressRandom:Ljava/util/Random;

.field private mServerImageIdentifiers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

.field private mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/net/NetThreadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Landroid/widget/TextView;

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mAllPhotoGridView:Ljava/util/Map;

    .line 111
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPool:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mServerImageIdentifiers:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotographerSortColorMap:Ljava/util/HashMap;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mTasks:Ljava/util/ArrayList;

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mDumyProgress:I

    .line 137
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mCurrentUrl:Ljava/lang/String;

    .line 214
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$1;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->adjustLocalCachedRunable:Ljava/lang/Runnable;

    .line 479
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$2;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->SearchPhotoGrapherInfoRunnable:Ljava/lang/Runnable;

    .line 497
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$3;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;

    .line 618
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$4;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$4;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mGetTypeImageListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    .line 653
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->startTime:J

    .line 730
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$5;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$5;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mGetTypeLargeImageListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    .line 903
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$7;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$7;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mServerImageIdentifiers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->updatePhotoGrapherDetailsViews()V

    return-void
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherPhotoInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;)Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherPhotoInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    .prologue
    .line 55
    iget v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mDumyProgress:I

    return v0
.end method

.method static synthetic access$1402(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mDumyProgress:I

    return p1
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Ljava/util/Random;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mProgressRandom:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mLoadImagePrpgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mActivityParentView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->convertFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->startTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGraphersInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mCurrentUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGraphersInfos:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->isClickable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->showSinglePhotoLayout(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherBackView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->showProgressBar()V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/service/CameramanService;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mCameramanService:Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/service/CameramanService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;)Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mCameramanInfo:Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;

    return-object p1
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mErrorView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGraphRefresh:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherDetailsLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherPhotosViewParent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private addPhotoSortAndPhotosView(Ljava/lang/String;I)V
    .locals 7
    .param p1, "photoSort"    # Ljava/lang/String;
    .param p2, "marginTop"    # I

    .prologue
    .line 819
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 820
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 821
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f04011e

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 822
    .local v3, "relativeLayout":Landroid/widget/RelativeLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 823
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput p2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 824
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherPhotosViewParent:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 825
    const v5, 0x7f10073f

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 826
    .local v4, "sortView":Landroid/widget/RelativeLayout;
    const v5, 0x7f100742

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;

    .line 827
    .local v2, "photoGridView":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;
    invoke-direct {p0, p1, v4, v2}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->resetSortViewAndGridViewBySort(Ljava/lang/String;Landroid/widget/RelativeLayout;Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;)V

    .line 829
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "photoGridView":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;
    .end local v3    # "relativeLayout":Landroid/widget/RelativeLayout;
    .end local v4    # "sortView":Landroid/widget/RelativeLayout;
    :cond_0
    return-void
.end method

.method private adjustLocalCachedImage()V
    .locals 2

    .prologue
    .line 210
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->adjustLocalCachedRunable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 211
    .local v0, "adjustLocalCachedImageThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 212
    return-void
.end method

.method private convertFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "sort"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "time"    # Ljava/lang/String;

    .prologue
    .line 712
    const-string v0, ""

    .line 713
    .local v0, "filename":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 714
    const-string p1, ""

    .line 716
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 717
    const-string p3, ""

    .line 719
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 720
    const-string p2, ""

    move-object v1, v0

    .line 727
    .end local v0    # "filename":Ljava/lang/String;
    .local v1, "filename":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 723
    .end local v1    # "filename":Ljava/lang/String;
    .restart local v0    # "filename":Ljava/lang/String;
    :cond_2
    const-string v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 724
    .local v2, "filenameSplits":[Ljava/lang/String;
    if-eqz v2, :cond_3

    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 725
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object v1, v0

    .line 727
    .end local v0    # "filename":Ljava/lang/String;
    .restart local v1    # "filename":Ljava/lang/String;
    goto :goto_0
.end method

.method private fillServerImageIdentifiers(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "photoGraphersPhotos":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;>;"
    .local p2, "serverImageIdentifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGraphersPhotos:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    .line 195
    .local v6, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_1

    .line 196
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGraphersPhotos:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;

    .line 197
    .local v1, "everySortPhotos":Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;->getGallery_typeName()Ljava/lang/String;

    move-result-object v8

    .line 198
    .local v8, "sortName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;->getCameraman_Images()Ljava/util/List;

    move-result-object v0

    .line 199
    .local v0, "everySortAllImageUrls":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;

    .line 200
    .local v4, "image":Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;->getCameraman_imgUrl_medium()Ljava/lang/String;

    move-result-object v7

    .line 201
    .local v7, "mediumUrl":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;->getCameraman_imgUpdateTime()Ljava/lang/String;

    move-result-object v9

    .line 202
    .local v9, "updateTime":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;->getCameraman_imgUrl_large()Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, "largeUrl":Ljava/lang/String;
    invoke-direct {p0, v8, v7, v9}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->convertFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-direct {p0, v8, v5, v9}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->convertFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 195
    .end local v4    # "image":Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;
    .end local v5    # "largeUrl":Ljava/lang/String;
    .end local v7    # "mediumUrl":Ljava/lang/String;
    .end local v9    # "updateTime":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    .end local v0    # "everySortAllImageUrls":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;>;"
    .end local v1    # "everySortPhotos":Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v8    # "sortName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private initAllPhotoSortAndPhotosViews(Ljava/lang/String;)V
    .locals 7
    .param p1, "allPhotoSorts"    # Ljava/lang/String;

    .prologue
    .line 800
    const-string v4, "jiaxiaowei1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--initAllPhotoSortAndPhotosViews-----------allPhotoSorts:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    if-eqz p1, :cond_1

    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 802
    const-string v4, ";"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 803
    .local v3, "photoSorts":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 804
    const-string v4, "jiaxiaowei1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-----------photoSorts.length:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    aget-object v2, v3, v0

    .line 806
    .local v2, "photoSort":Ljava/lang/String;
    const-string v4, "jiaxiaowei1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "====initAllPhotoSortAndPhotosViews============photoSort:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    if-nez v0, :cond_0

    .line 808
    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->addPhotoSortAndPhotosView(Ljava/lang/String;I)V

    .line 803
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 810
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    .line 811
    .local v1, "marginTop":I
    invoke-direct {p0, v2, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->addPhotoSortAndPhotosView(Ljava/lang/String;I)V

    goto :goto_1

    .line 815
    .end local v0    # "i":I
    .end local v1    # "marginTop":I
    .end local v2    # "photoSort":Ljava/lang/String;
    .end local v3    # "photoSorts":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 256
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mProgressRandom:Ljava/util/Random;

    .line 257
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotographerSortColorMap:Ljava/util/HashMap;

    const v1, 0x7f0f07ed

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0081

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotographerSortColorMap:Ljava/util/HashMap;

    const v1, 0x7f0f07ee

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotographerSortColorMap:Ljava/util/HashMap;

    const v1, 0x7f0f07ef

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotographerSortColorMap:Ljava/util/HashMap;

    const v1, 0x7f0f07f0

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0084

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotographerSortColorMap:Ljava/util/HashMap;

    const v1, 0x7f0f07f1

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotographerSortColorMap:Ljava/util/HashMap;

    const v1, 0x7f0f07f2

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0086

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotographerSortColorMap:Ljava/util/HashMap;

    const v1, 0x7f0f07f3

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0087

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotographerSortColorMap:Ljava/util/HashMap;

    const v1, 0x7f0f07f4

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0088

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotographerSortColorMap:Ljava/util/HashMap;

    const v1, 0x7f0f07f5

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0089

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotographerSortColorMap:Ljava/util/HashMap;

    const v1, 0x7f0f07f6

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotographerSortColorMap:Ljava/util/HashMap;

    const v1, 0x7f0f07f7

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d008b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    return-void
.end method

.method private initPhotoGrapherDetailsParent(Ljava/lang/String;)V
    .locals 1
    .param p1, "photoGrapherDetails"    # Ljava/lang/String;

    .prologue
    .line 588
    if-eqz p1, :cond_0

    .line 589
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherDetailTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 271
    const v5, 0x7f100753

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mTitle:Landroid/widget/TextView;

    .line 272
    const v5, 0x7f100746

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mActivityParentView:Landroid/widget/ScrollView;

    .line 273
    const v5, 0x7f100748

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherDetailsLayout:Landroid/widget/RelativeLayout;

    .line 274
    const v5, 0x7f100751

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mErrorView:Landroid/widget/LinearLayout;

    .line 275
    const v5, 0x7f100744

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mLoadImagePrpgressBar:Landroid/widget/ProgressBar;

    .line 276
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mLoadImagePrpgressBar:Landroid/widget/ProgressBar;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 277
    const v5, 0x7f100754

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGraphRefresh:Landroid/widget/ImageView;

    .line 278
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGraphRefresh:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    const v5, 0x7f100743

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherWorkerViewsParent:Landroid/widget/RelativeLayout;

    .line 281
    const v5, 0x7f100752

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherBackView:Landroid/widget/ImageView;

    .line 282
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherBackView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    const v5, 0x7f10074d

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherWebsite:Landroid/widget/TextView;

    .line 286
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->getPhotoGrapherWebsite()Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, "photoGrapherWebsite":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 288
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherWebsite:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherWebsite:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->invalidate()V

    .line 292
    :cond_0
    const v5, 0x7f100749

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherPhoto:Landroid/widget/ImageView;

    .line 293
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->getPhotoGrapherPhotoUrl()Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "photoGrapherPhotoUrl":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 295
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, ""

    invoke-virtual {p0, v2, v5, v6, v7}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->loadPhotoGrapherPhoto(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_1
    const v5, 0x7f10074c

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherNameView:Landroid/widget/TextView;

    .line 298
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->getPhotoGrapherName()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "photoGrapherName":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 300
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherNameView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    :cond_2
    const v5, 0x7f100750

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherPhotosViewParent:Landroid/widget/LinearLayout;

    .line 304
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->getAllPhotoSorts()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->initAllPhotoSortAndPhotosViews(Ljava/lang/String;)V

    .line 306
    const v5, 0x7f10074e

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherDetailsParent:Landroid/widget/LinearLayout;

    .line 307
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherDetailsParent:Landroid/widget/LinearLayout;

    const v6, 0x7f10074f

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherDetailTextView:Landroid/widget/TextView;

    .line 308
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->getPhotoGrapherDetails()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "photoGrapherDetails":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 310
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->initPhotoGrapherDetailsParent(Ljava/lang/String;)V

    .line 313
    :cond_3
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherDetailsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 314
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherPhotosViewParent:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 315
    new-instance v5, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherWorkerViewsParent:Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0, v6}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;Landroid/view/View;)V

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    .line 317
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 318
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->showProgressBar()V

    .line 319
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherDetailsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 320
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherPhotosViewParent:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 322
    :cond_4
    new-instance v4, Ljava/lang/Thread;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->SearchPhotoGrapherInfoRunnable:Ljava/lang/Runnable;

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 323
    .local v4, "thread":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 324
    return-void
.end method

.method private isClickable()Z
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->isGone()Z

    move-result v0

    .line 949
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetSortViewAndGridViewBySort(Ljava/lang/String;Landroid/widget/RelativeLayout;Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;)V
    .locals 5
    .param p1, "photoSort"    # Ljava/lang/String;
    .param p2, "sortView"    # Landroid/widget/RelativeLayout;
    .param p3, "gridView"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;

    .prologue
    const/4 v4, 0x1

    .line 833
    const v3, 0x7f100741

    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 834
    .local v1, "sortText1":Landroid/widget/TextView;
    const v3, 0x7f100740

    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 835
    .local v2, "sortText2":Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 836
    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 837
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotographerSortColorMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 838
    .local v0, "colorId":I
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 840
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 841
    invoke-direct {p0, p1, p3}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->resetSortViewAndGridViewBySort(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;)V

    .line 842
    return-void
.end method

.method private resetSortViewAndGridViewBySort(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;)V
    .locals 10
    .param p1, "photoSort"    # Ljava/lang/String;
    .param p2, "gridView"    # Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;

    .prologue
    .line 846
    if-nez p2, :cond_0

    .line 900
    :goto_0
    return-void

    .line 848
    :cond_0
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    invoke-virtual {v7, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->getPhotoNumsBySort(Ljava/lang/String;)I

    move-result v4

    .line 849
    .local v4, "photoNum":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 850
    .local v5, "photoUrls":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 851
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;-><init>()V

    .line 852
    .local v0, "info":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->getMinPhotoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 853
    .local v3, "minPhotoUrl":Ljava/lang/String;
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->getLargePhotoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 854
    .local v2, "largePhotoUrl":Ljava/lang/String;
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->getUpdateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 855
    .local v6, "updateTime":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setPhotoGrapherPhoto(Z)V

    .line 856
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setSort(Ljava/lang/String;)V

    .line 857
    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setPhotoUrl(Ljava/lang/String;)V

    .line 858
    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setLargePhotoUrl(Ljava/lang/String;)V

    .line 859
    invoke-virtual {v0, v6}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setUpdateTime(Ljava/lang/String;)V

    .line 861
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->getLargePhotoId(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setId(J)V

    .line 863
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 865
    .end local v0    # "info":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    .end local v2    # "largePhotoUrl":Ljava/lang/String;
    .end local v3    # "minPhotoUrl":Ljava/lang/String;
    .end local v6    # "updateTime":Ljava/lang/String;
    :cond_1
    new-instance v7, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;

    invoke-direct {v7, p0, v5, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;Ljava/util/List;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mImageAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;

    .line 866
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mImageAdapter:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;

    invoke-virtual {p2, v7}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 867
    invoke-virtual {p2, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;->setTag(Ljava/lang/Object;)V

    .line 868
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mAllPhotoGridView:Ljava/util/Map;

    invoke-interface {v7, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    new-instance v7, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$6;

    invoke-direct {v7, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty$6;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;)V

    invoke-virtual {p2, v7}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 899
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method private setSinglePhotoUri(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 940
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->setPhotoUri(Ljava/lang/String;)V

    .line 943
    :cond_0
    return-void
.end method

.method private showProgressBar()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 705
    iput v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mDumyProgress:I

    .line 706
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mLoadImagePrpgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 707
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mLoadImagePrpgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mDumyProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 708
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 709
    return-void
.end method

.method private showSinglePhotoLayout(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 927
    if-nez p1, :cond_1

    .line 937
    :cond_0
    :goto_0
    return-void

    .line 930
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->show()V

    .line 932
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->setPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 933
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->isNetworkAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->showProgressBar()V

    goto :goto_0
.end method

.method private updatePhotoGrapherDetailsViews()V
    .locals 28

    .prologue
    .line 327
    const/4 v14, 0x0

    .line 328
    .local v14, "isRefreshGrid":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mCameramanInfo:Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;

    move-object/from16 v25, v0

    if-eqz v25, :cond_13

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->getPhotoGrapherName()Ljava/lang/String;

    move-result-object v19

    .line 331
    .local v19, "photoGrapherName":Ljava/lang/String;
    if-eqz v19, :cond_0

    const-string v25, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mCameramanInfo:Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 332
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mCameramanInfo:Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;->getName()Ljava/lang/String;

    move-result-object v19

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherNameView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->setPhotoGrapherName(Ljava/lang/String;)V

    .line 336
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->getPhotoGrapherDetails()Ljava/lang/String;

    move-result-object v18

    .line 337
    .local v18, "photoGrapherDetails":Ljava/lang/String;
    if-eqz v18, :cond_2

    const-string v25, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mCameramanInfo:Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;->getContent()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 338
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mCameramanInfo:Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;->getContent()Ljava/lang/String;

    move-result-object v18

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->setPhotoGrapherDetails(Ljava/lang/String;)V

    .line 341
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->initPhotoGrapherDetailsParent(Ljava/lang/String;)V

    .line 344
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->getPhotoGrapherWebsite()Ljava/lang/String;

    move-result-object v21

    .line 345
    .local v21, "photoGrapherWebsite":Ljava/lang/String;
    const-string v25, "jiaxiaowei1"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "photoGrapherWebsite:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    if-eqz v21, :cond_4

    const-string v25, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mCameramanInfo:Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;->getProperty1()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_5

    .line 347
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mCameramanInfo:Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;->getProperty1()Ljava/lang/String;

    move-result-object v21

    .line 348
    const-string v25, "jiaxiaowei1"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "photoGrapherWebsite:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->setPhotoGrapherWebsite(Ljava/lang/String;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherWebsite:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherWebsite:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->invalidate()V

    .line 354
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->getPhotoGrapherPhotoUrl()Ljava/lang/String;

    move-result-object v20

    .line 355
    .local v20, "photoGrapherPhotoUrl":Ljava/lang/String;
    if-eqz v20, :cond_6

    const-string v25, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mCameramanInfo:Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;->getFace_Imgs()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_7

    .line 356
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mCameramanInfo:Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;->getFace_Imgs()Ljava/lang/String;

    move-result-object v20

    .line 357
    if-eqz v20, :cond_7

    const-string v25, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_7

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->setPhotoGrapherPhotoUrl(Ljava/lang/String;)V

    .line 359
    const/16 v25, 0x1

    const/16 v26, 0x0

    const-string v27, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->loadPhotoGrapherPhoto(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mCameramanInfo:Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/CameramanInfo;->getCameraman_Gallerys()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGraphersPhotos:Ljava/util/List;

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGraphersPhotos:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mServerImageIdentifiers:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->fillServerImageIdentifiers(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mServerImageIdentifiers:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->convertFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGraphersPhotos:Ljava/util/List;

    move-object/from16 v25, v0

    if-eqz v25, :cond_13

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGraphersPhotos:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v16

    .line 367
    .local v16, "length":I
    const-string v6, ""

    .line 368
    .local v6, "allSortNames":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_12

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGraphersPhotos:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;

    .line 370
    .local v11, "everySortPhotos":Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;
    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;->getGallery_typeName()Ljava/lang/String;

    move-result-object v24

    .line 371
    .local v24, "sortName":Ljava/lang/String;
    const-string v25, "jiaxiaowei1"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "sortName:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    add-int/lit8 v25, v16, -0x1

    move/from16 v0, v25

    if-ne v12, v0, :cond_9

    .line 373
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 377
    :goto_1
    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;->getCameraman_Images()Ljava/util/List;

    move-result-object v10

    .line 378
    .local v10, "everySortAllImageUrls":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;>;"
    if-eqz v10, :cond_b

    .line 379
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v22, "photoUrls":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->getAllPhotoSorts()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_f

    .line 381
    const-string v25, "jiaxiaowei1"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mPhotoGrapherInfo.getAllPhotoSorts():"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->getAllPhotoSorts()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->getAllPhotoSorts()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    move-object/from16 v25, v0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v26

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->savePhotoNumBySort(Ljava/lang/String;I)V

    .line 385
    const-string v25, "jiaxiaowei1"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "-------------sortNum:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ",sortName:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ",everySortAllImageUrls.size:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v23

    .line 388
    .local v23, "size":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_2
    move/from16 v0, v23

    if-ge v15, v0, :cond_a

    .line 389
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;

    .line 390
    .local v7, "cameraman_Image":Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;
    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;->getCameraman_imgUrl_medium()Ljava/lang/String;

    move-result-object v9

    .line 391
    .local v9, "cameraman_imgUrl_min":Ljava/lang/String;
    const-string v25, "jiaxiaowei1"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "cameraman_imgUrl_min------:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;->getCameraman_imgUrl_large()Ljava/lang/String;

    move-result-object v8

    .line 393
    .local v8, "cameraman_imagUrl_large":Ljava/lang/String;
    new-instance v13, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;

    invoke-direct {v13}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;-><init>()V

    .line 394
    .local v13, "info":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setPhotoGrapherPhoto(Z)V

    .line 395
    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;->getGallery_typeName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setSort(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v13, v9}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setPhotoUrl(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;->getCameraman_imgUpdateTime()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setUpdateTime(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;->getId()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v13, v0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setId(J)V

    .line 399
    const-string v25, "jiaxiaowei1"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "updatePhotoGrapherDetailsViews  cameraman_imagUrl_large:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {v13, v8}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setLargePhotoUrl(Ljava/lang/String;)V

    .line 401
    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->getMinPhotoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_8

    .line 403
    const/4 v14, 0x1

    .line 388
    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 375
    .end local v7    # "cameraman_Image":Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;
    .end local v8    # "cameraman_imagUrl_large":Ljava/lang/String;
    .end local v9    # "cameraman_imgUrl_min":Ljava/lang/String;
    .end local v10    # "everySortAllImageUrls":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;>;"
    .end local v13    # "info":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    .end local v15    # "j":I
    .end local v22    # "photoUrls":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;>;"
    .end local v23    # "size":I
    :cond_9
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 406
    .restart local v10    # "everySortAllImageUrls":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;>;"
    .restart local v15    # "j":I
    .restart local v22    # "photoUrls":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;>;"
    .restart local v23    # "size":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    move-object/from16 v25, v0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v26

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->savePhotoNumBySort(Ljava/lang/String;I)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->addPhotos(Ljava/lang/String;Ljava/util/List;)V

    .line 408
    if-eqz v14, :cond_b

    .line 409
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getGridView(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->resetSortViewAndGridViewBySort(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;)V

    .line 368
    .end local v15    # "j":I
    .end local v22    # "photoUrls":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;>;"
    .end local v23    # "size":I
    :cond_b
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 416
    .restart local v22    # "photoUrls":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;>;"
    :cond_c
    const-string v25, "jiaxiaowei1"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "-------------sortNum:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ",sortName:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ",everySortAllImageUrls.size:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v23

    .line 419
    .restart local v23    # "size":I
    const/4 v15, 0x0

    .restart local v15    # "j":I
    :goto_4
    move/from16 v0, v23

    if-ge v15, v0, :cond_d

    .line 420
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;

    .line 421
    .restart local v7    # "cameraman_Image":Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;
    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;->getCameraman_imgUrl_medium()Ljava/lang/String;

    move-result-object v9

    .line 422
    .restart local v9    # "cameraman_imgUrl_min":Ljava/lang/String;
    const-string v25, "jiaxiaowei1"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "cameraman_imgUrl_min------:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;->getCameraman_imgUrl_large()Ljava/lang/String;

    move-result-object v8

    .line 424
    .restart local v8    # "cameraman_imagUrl_large":Ljava/lang/String;
    new-instance v13, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;

    invoke-direct {v13}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;-><init>()V

    .line 425
    .restart local v13    # "info":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setPhotoGrapherPhoto(Z)V

    .line 426
    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;->getGallery_typeName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setSort(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v13, v9}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setPhotoUrl(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;->getId()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v13, v0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setId(J)V

    .line 429
    const-string v25, "jiaxiaowei1"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "updatePhotoGrapherDetailsViews  cameraman_imagUrl_large:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {v13, v8}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setLargePhotoUrl(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;->getCameraman_imgUpdateTime()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setUpdateTime(Ljava/lang/String;)V

    .line 432
    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 434
    .end local v7    # "cameraman_Image":Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;
    .end local v8    # "cameraman_imagUrl_large":Ljava/lang/String;
    .end local v9    # "cameraman_imgUrl_min":Ljava/lang/String;
    .end local v13    # "info":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    move-object/from16 v25, v0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v26

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->savePhotoNumBySort(Ljava/lang/String;I)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->addPhotos(Ljava/lang/String;Ljava/util/List;)V

    .line 436
    if-nez v12, :cond_e

    .line 437
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->addPhotoSortAndPhotosView(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 439
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0901b2

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v17, v0

    .line 440
    .local v17, "marginTop":I
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->addPhotoSortAndPhotosView(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 444
    .end local v15    # "j":I
    .end local v17    # "marginTop":I
    .end local v23    # "size":I
    :cond_f
    const-string v25, "jiaxiaowei1"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "-------------sortNum:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ",sortName:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ",everySortAllImageUrls.size:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v23

    .line 447
    .restart local v23    # "size":I
    const/4 v15, 0x0

    .restart local v15    # "j":I
    :goto_5
    move/from16 v0, v23

    if-ge v15, v0, :cond_10

    .line 448
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;

    .line 449
    .restart local v7    # "cameraman_Image":Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;
    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;->getCameraman_imgUrl_medium()Ljava/lang/String;

    move-result-object v9

    .line 450
    .restart local v9    # "cameraman_imgUrl_min":Ljava/lang/String;
    const-string v25, "jiaxiaowei1"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "cameraman_imgUrl_min------:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;->getCameraman_imgUrl_large()Ljava/lang/String;

    move-result-object v8

    .line 452
    .restart local v8    # "cameraman_imagUrl_large":Ljava/lang/String;
    new-instance v13, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;

    invoke-direct {v13}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;-><init>()V

    .line 453
    .restart local v13    # "info":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setPhotoGrapherPhoto(Z)V

    .line 454
    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;->getGallery_typeName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setSort(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v13, v9}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setPhotoUrl(Ljava/lang/String;)V

    .line 456
    const-string v25, "jiaxiaowei1"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "updatePhotoGrapherDetailsViews  cameraman_imagUrl_large:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {v13, v8}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setLargePhotoUrl(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;->getCameraman_imgUpdateTime()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setUpdateTime(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;->getId()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v13, v0, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setId(J)V

    .line 460
    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 462
    .end local v7    # "cameraman_Image":Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;
    .end local v8    # "cameraman_imagUrl_large":Ljava/lang/String;
    .end local v9    # "cameraman_imgUrl_min":Ljava/lang/String;
    .end local v13    # "info":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    move-object/from16 v25, v0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v26

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->savePhotoNumBySort(Ljava/lang/String;I)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->addPhotos(Ljava/lang/String;Ljava/util/List;)V

    .line 464
    if-nez v12, :cond_11

    .line 465
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->addPhotoSortAndPhotosView(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 467
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0901b2

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v17, v0

    .line 468
    .restart local v17    # "marginTop":I
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->addPhotoSortAndPhotosView(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 473
    .end local v10    # "everySortAllImageUrls":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Image;>;"
    .end local v11    # "everySortPhotos":Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/model/Cameraman_Gallery;
    .end local v15    # "j":I
    .end local v17    # "marginTop":I
    .end local v22    # "photoUrls":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;>;"
    .end local v23    # "size":I
    .end local v24    # "sortName":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;->setAllPhotoSort(Ljava/lang/String;)V

    .line 476
    .end local v6    # "allSortNames":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v16    # "length":I
    .end local v18    # "photoGrapherDetails":Ljava/lang/String;
    .end local v19    # "photoGrapherName":Ljava/lang/String;
    .end local v20    # "photoGrapherPhotoUrl":Ljava/lang/String;
    .end local v21    # "photoGrapherWebsite":Ljava/lang/String;
    :cond_13
    return-void
.end method


# virtual methods
.method public cancelTopTask()V
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 613
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mTasks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mTasks:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->cancelTask()V

    .line 616
    :cond_0
    return-void
.end method

.method public getGridView(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;
    .locals 6
    .param p1, "sort"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 783
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move-object v3, v4

    .line 796
    :goto_0
    return-object v3

    .line 786
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mAllPhotoGridView:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 787
    .local v1, "iter":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 789
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 790
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 791
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;

    .line 792
    .local v3, "photoGridView":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "photoGridView":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;
    :cond_3
    move-object v3, v4

    .line 796
    goto :goto_0
.end method

.method public loadPhotoGrapherLargePhoto(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isPhotoGrapherPhoto"    # Z
    .param p3, "sort"    # Ljava/lang/String;
    .param p4, "updateTime"    # Ljava/lang/String;
    .param p5, "id"    # J

    .prologue
    .line 659
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    new-instance v2, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;

    invoke-direct {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;-><init>()V

    .line 661
    .local v2, "info":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setLargePhotoUrl(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v2, p2}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setPhotoGrapherPhoto(Z)V

    .line 663
    invoke-virtual {v2, p3}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setSort(Ljava/lang/String;)V

    .line 664
    invoke-virtual {v2, p4}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setUpdateTime(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v2, p5, p6}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setId(J)V

    .line 666
    invoke-static {p1, p3, p4}, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;->getPhotoUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 667
    .local v1, "fiilePath":Ljava/lang/String;
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mCurrentUrl:Ljava/lang/String;

    .line 668
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 669
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;->ioToByte(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/scg/common/utils/file/FileBitmapUtils;->Bytes2Bimap([B)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setOriBitmap(Landroid/graphics/Bitmap;)V

    .line 670
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 671
    .local v3, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 672
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "info"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 673
    const-string/jumbo v5, "save"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 674
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 675
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mCurrentUrl:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getLargePhotoUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 676
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 677
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    if-eqz v5, :cond_0

    .line 678
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    invoke-virtual {v5, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->setPhotoUri(Ljava/lang/String;)V

    .line 679
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    invoke-virtual {v5, p5, p6}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->setPhotoId(J)V

    .line 691
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPool:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    sget-object v6, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_PHOTO_GRPAHER:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_GET:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    invoke-virtual {v5, v6, v7}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getTask(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;)Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    move-result-object v4

    .line 685
    .local v4, "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    sget-object v5, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_BYTES:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    const/4 v6, 0x2

    invoke-virtual {v4, v5, p1, v6}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->setTaskPara(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 686
    const-string v5, "download"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "url     "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->startTime:J

    .line 688
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPool:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mGetTypeLargeImageListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    invoke-virtual {v5, v4, v6, v2}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->runTask(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V

    .line 689
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public loadPhotoGrapherPhoto(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isPhotoGrapherPhoto"    # Z
    .param p3, "sort"    # Ljava/lang/String;
    .param p4, "updateTime"    # Ljava/lang/String;

    .prologue
    .line 599
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;-><init>()V

    .line 600
    .local v0, "info":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setPhotoUrl(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setPhotoGrapherPhoto(Z)V

    .line 602
    invoke-virtual {v0, p3}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setSort(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v0, p4}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->setUpdateTime(Ljava/lang/String;)V

    .line 604
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPool:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    sget-object v3, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_PHOTO_GRPAHER:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    sget-object v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_GET:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getTask(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;)Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    move-result-object v1

    .line 605
    .local v1, "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    sget-object v2, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_BYTES:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, p1, v3}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->setTaskPara(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 606
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mCurrentUrl:Ljava/lang/String;

    .line 607
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPool:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mGetTypeImageListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    invoke-virtual {v2, v1, v3, v0}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->runTask(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V

    .line 608
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->isGone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->hide()V

    .line 959
    :goto_0
    return-void

    .line 958
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    sget-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;->POOL_TYPE_MATERIAL:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getInstance(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;)Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPool:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    .line 144
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPool:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->setContext(Landroid/content/Context;I)V

    .line 145
    const v0, 0x7f04011f

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->setContentView(I)V

    .line 146
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/service/impl/CameramanServiceImpl;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/service/impl/CameramanServiceImpl;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mCameramanService:Lcom/lenovo/scg/gallery3d/materialCenter/cameramangallery/service/CameramanService;

    .line 147
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherInfo;

    .line 148
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->initData()V

    .line 149
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->initViews()V

    .line 150
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 151
    return-void
.end method

.method protected onDestroy()V
    .locals 9

    .prologue
    .line 156
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 159
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 161
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 162
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 163
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 164
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 165
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherPhotoInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;

    if-eqz v7, :cond_0

    .line 166
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPhotoGrapherPhotoInfo:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGrapherWorkPhotoInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 167
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 168
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 172
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mTasks:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 173
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    .line 174
    .local v6, "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->cancelTask()V

    .line 175
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->isInterrupted()Z

    goto :goto_0

    .line 178
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    :cond_1
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 179
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mPool:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->releaseInstance()V

    .line 181
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mAllPhotoGridView:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 182
    .local v5, "sorts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 183
    .local v4, "sort":Ljava/lang/String;
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mAllPhotoGridView:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;

    .line 184
    .local v1, "gridView":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;

    .line 185
    .local v3, "imageAdapter":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;->releaseResource()V

    goto :goto_1

    .line 187
    .end local v1    # "gridView":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotoGridView;
    .end local v3    # "imageAdapter":Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/ImageAdapter;
    .end local v4    # "sort":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mAllPhotoGridView:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 189
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->adjustLocalCachedImage()V

    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 191
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 696
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mSinglePhotoLayout:Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/SinglePhotoLayout;->hide()V

    .line 698
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f075c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    const/4 v0, 0x1

    .line 701
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 252
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 253
    return-void
.end method
