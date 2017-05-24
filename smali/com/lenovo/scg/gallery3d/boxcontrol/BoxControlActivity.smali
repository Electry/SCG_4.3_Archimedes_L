.class public Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;
.super Landroid/app/Activity;
.source "BoxControlActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final LOW_STORAGE_THRESHOLD:J = 0x200000L

.field public static final SELECT_PHOTO_KEY:Ljava/lang/String; = "photos"

.field private static final TAG:Ljava/lang/String; = "BoxControlActivity"

.field private static final THUMB_SIZE:I = 0x8e

.field public static mDenty:F


# instance fields
.field private isFromGoldBox:Z

.field private volatile mAbort:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mAlbumListAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/CataloguePicListAdapter;

.field private mAllItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBackView:Landroid/widget/ImageView;

.field private mBlueColor:I

.field private mBoxControlTile:Ljava/lang/String;

.field private mCameraBgIcon:Landroid/graphics/drawable/Drawable;

.field private mCancelView:Landroid/widget/TextView;

.field private mCatalogueLayout:Landroid/widget/RelativeLayout;

.field private mCataloguePicsList:Landroid/widget/ListView;

.field private mCellOutline:Landroid/graphics/drawable/Drawable;

.field private mDataClass:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;

.field private mDbObserver:Landroid/database/ContentObserver;

.field private mDividLine2:Landroid/widget/ImageView;

.field private mDividedView:Landroid/widget/ImageView;

.field private mFrameGalleryMask:Landroid/graphics/drawable/Drawable;

.field private mHandler:Landroid/os/Handler;

.field private mLastSelectImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/boxcontrol/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftPadding:I

.field private mOkView:Landroid/widget/TextView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecentPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

.field private mRecentPicList:Lcom/lenovo/scg/gallery3d/boxcontrol/ImageList;

.field private mRecentPicsGrid:Landroid/widget/GridView;

.field private mRequestType:I

.field private mScanning:Z

.field private mSelectImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/boxcontrol/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectPhotoView:Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;

.field private mSelectViewLayout:Landroid/widget/RelativeLayout;

.field private mSubPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;

.field private mSubPicsGrid:Landroid/widget/GridView;

.field private mTitleView:Landroid/widget/TextView;

.field private mTopPadding:I

.field private mTotalCountTip:Ljava/lang/String;

.field private mUnmounted:Z

.field private mWorkerThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mDenty:F

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSubPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;

    .line 64
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    .line 66
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicsGrid:Landroid/widget/GridView;

    .line 68
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSubPicsGrid:Landroid/widget/GridView;

    .line 70
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->isFromGoldBox:Z

    .line 74
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mLastSelectImages:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSelectImages:Ljava/util/ArrayList;

    .line 80
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSelectPhotoView:Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;

    .line 82
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mCataloguePicsList:Landroid/widget/ListView;

    .line 84
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mAlbumListAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/CataloguePicListAdapter;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mAllItems:Ljava/util/ArrayList;

    .line 89
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mAbort:Z

    .line 91
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mScanning:Z

    .line 93
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mUnmounted:Z

    .line 95
    iput v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mTopPadding:I

    .line 97
    iput v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mLeftPadding:I

    .line 99
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mCameraBgIcon:Landroid/graphics/drawable/Drawable;

    .line 101
    new-instance v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mHandler:Landroid/os/Handler;

    .line 137
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mWorkerThread:Ljava/lang/Thread;

    .line 143
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mFrameGalleryMask:Landroid/graphics/drawable/Drawable;

    .line 149
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mDbObserver:Landroid/database/ContentObserver;

    .line 153
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mCellOutline:Landroid/graphics/drawable/Drawable;

    .line 155
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mCatalogueLayout:Landroid/widget/RelativeLayout;

    .line 157
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSelectViewLayout:Landroid/widget/RelativeLayout;

    .line 159
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mOkView:Landroid/widget/TextView;

    .line 161
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mDividLine2:Landroid/widget/ImageView;

    .line 163
    iput v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRequestType:I

    .line 165
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mActionBar:Landroid/app/ActionBar;

    .line 167
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mBackView:Landroid/widget/ImageView;

    .line 169
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mCancelView:Landroid/widget/TextView;

    .line 171
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mTitleView:Landroid/widget/TextView;

    .line 173
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mBoxControlTile:Ljava/lang/String;

    .line 175
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mDividedView:Landroid/widget/ImageView;

    .line 177
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicList:Lcom/lenovo/scg/gallery3d/boxcontrol/ImageList;

    .line 179
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mTotalCountTip:Ljava/lang/String;

    .line 181
    iput v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mBlueColor:I

    .line 183
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mDataClass:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;

    return-void
.end method

.method private abortWorker()V
    .locals 4

    .prologue
    .line 816
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mWorkerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 817
    invoke-static {}, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->instance()Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->cancelThreadDecoding(Ljava/lang/Thread;Landroid/content/ContentResolver;)V

    .line 818
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mAbort:Z

    .line 820
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mWorkerThread:Ljava/lang/Thread;

    .line 828
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 831
    :cond_0
    return-void

    .line 821
    :catch_0
    move-exception v0

    .line 822
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string v1, "BoxControlActivity"

    const-string v2, "join interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    .prologue
    .line 60
    iget v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRequestType:I

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicsGrid:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mCatalogueLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSubPicsGrid:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mCancelView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mDividLine2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSelectPhotoView:Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSubPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mAllItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSelectImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->subPicPageBack()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mOkView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->workerRun()V

    return-void
.end method

.method static synthetic access$2200(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mDividedView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->dissMissProgressDialog()V

    return-void
.end method

.method static synthetic access$2400(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->checkLowStorageFinished()V

    return-void
.end method

.method static synthetic access$2500(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->checkScanningFinished(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mCameraBgIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    .prologue
    .line 60
    iget v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mLeftPadding:I

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    .prologue
    .line 60
    iget v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mTopPadding:I

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Lcom/lenovo/scg/gallery3d/boxcontrol/CataloguePicListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mAlbumListAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/CataloguePicListAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mCataloguePicsList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->onReceiveMediaBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->rebake(ZZ)V

    return-void
.end method

.method private addRecentPic(Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;I)V
    .locals 2
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;
    .param p2, "i"    # I

    .prologue
    .line 972
    iget-object v1, p1, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mImageList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    invoke-interface {v1, p2}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->getImageAt(I)Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 973
    .local v0, "img":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    if-eqz v0, :cond_0

    .line 974
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->setmIselected(Z)V

    .line 975
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->addImagesList(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;)V

    .line 978
    :cond_0
    return-void
.end method

.method private checkBucketIds(Ljava/util/ArrayList;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 866
    .local p1, "allItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mScanning:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mUnmounted:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 867
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;->ALL:Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    invoke-static/range {v18 .. v22}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;IILjava/lang/String;)Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    move-result-object v4

    .line 873
    .local v4, "allImages":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRequestType:I

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 874
    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->createImageList(ILjava/lang/String;Landroid/content/ContentResolver;)Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    move-result-object v14

    .line 875
    .local v14, "list":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    const-string v18, "BoxControlActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "list.getCount() = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v14}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->getCount()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    .end local v14    # "list":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mAbort:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 879
    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->close()V

    .line 969
    :cond_1
    :goto_1
    return-void

    .line 870
    .end local v4    # "allImages":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->makeEmptyImageList()Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    move-result-object v4

    .restart local v4    # "allImages":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    goto :goto_0

    .line 882
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->createImagesList()V

    .line 886
    :cond_4
    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->getBucketIds()Ljava/util/HashMap;

    move-result-object v7

    .line 888
    .local v7, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->close()V

    .line 890
    const-string v18, "Camera"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v18

    sput-boolean v18, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mIsContainCameraCatalogue:Z

    .line 892
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mAbort:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 896
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 897
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 898
    .local v13, "key":Ljava/lang/String;
    if-eqz v13, :cond_5

    .line 902
    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v13, v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->createImageList(ILjava/lang/String;Landroid/content/ContentResolver;)Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    move-result-object v14

    .line 904
    .restart local v14    # "list":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mAbort:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 907
    new-instance v11, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;

    const/16 v19, 0x5

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v11, v0, v13, v1, v14}, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;)V

    .line 908
    .local v11, "item":Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    const-string v19, "BoxControlActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "entry.getValue() = "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRequestType:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    iget-object v0, v11, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mImageList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    move-object/from16 v18, v0

    if-nez v18, :cond_6

    .line 914
    const/16 v18, 0x1

    sput-boolean v18, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mIsShowDividedView:Z

    .line 916
    :cond_6
    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_7

    .line 917
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v16

    .line 918
    .local v16, "nameLength":I
    const-string v18, "continuous_"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v10

    .line 919
    .local v10, "inclusionLen":I
    const/16 v17, 0x0

    .local v17, "t":I
    :goto_3
    sub-int v18, v16, v10

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 920
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    const/16 v19, 0x0

    const-string v20, "continuous_"

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 921
    const-string v19, "BoxControlActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "continuous entry.getValue() = "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    move-object/from16 v19, v0

    iget-object v0, v11, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mImageList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->getImageAt(I)Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    move-result-object v18

    check-cast v18, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->addImagesList(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;)V

    .line 923
    const/16 v18, 0x1

    sput-boolean v18, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mIsContinuousCatalogue:Z

    .line 929
    .end local v10    # "inclusionLen":I
    .end local v16    # "nameLength":I
    .end local v17    # "t":I
    :cond_7
    if-eqz v5, :cond_b

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_b

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    const-string v19, "Camera"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 930
    const-string v19, "BoxControlActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "camera entry.getValue() = "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget-object v0, v11, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mImageList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    .line 933
    iget-object v0, v11, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mImageList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->getCount()I

    move-result v12

    .line 934
    .local v12, "itemListCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->getImagesListCount()I

    move-result v6

    .line 936
    .local v6, "hasCounts":I
    if-nez v6, :cond_a

    .line 937
    const/16 v18, 0x8

    move/from16 v0, v18

    if-gt v12, v0, :cond_9

    .line 938
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    if-ge v8, v12, :cond_b

    .line 939
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->addRecentPic(Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;I)V

    .line 938
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 919
    .end local v6    # "hasCounts":I
    .end local v8    # "i":I
    .end local v12    # "itemListCount":I
    .restart local v10    # "inclusionLen":I
    .restart local v16    # "nameLength":I
    .restart local v17    # "t":I
    :cond_8
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    .line 942
    .end local v10    # "inclusionLen":I
    .end local v16    # "nameLength":I
    .end local v17    # "t":I
    .restart local v6    # "hasCounts":I
    .restart local v12    # "itemListCount":I
    :cond_9
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_5
    const/16 v18, 0x8

    move/from16 v0, v18

    if-ge v8, v0, :cond_b

    .line 943
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->addRecentPic(Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;I)V

    .line 942
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 947
    .end local v8    # "i":I
    :cond_a
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_6
    rsub-int/lit8 v18, v6, 0x9

    move/from16 v0, v18

    if-ge v8, v0, :cond_b

    .line 948
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->addRecentPic(Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;I)V

    .line 947
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 955
    .end local v6    # "hasCounts":I
    .end local v8    # "i":I
    .end local v12    # "itemListCount":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    new-instance v19, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$16;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$16;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)V

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 964
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "item":Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "list":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->initImagesListState()V

    .line 965
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 966
    .local v15, "msg":Landroid/os/Message;
    const/16 v18, 0xfa

    move/from16 v0, v18

    iput v0, v15, Landroid/os/Message;->what:I

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1
.end method

.method private checkLowStorage()V
    .locals 8

    .prologue
    .line 753
    invoke-static {}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->hasStorage()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 754
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 755
    .local v3, "storageDirectory":Ljava/lang/String;
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 756
    .local v2, "stat":Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long v0, v4, v6

    .line 757
    .local v0, "remaining":J
    const-wide/32 v4, 0x200000

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 758
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$14;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$14;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 768
    .end local v0    # "remaining":J
    .end local v2    # "stat":Landroid/os/StatFs;
    .end local v3    # "storageDirectory":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkLowStorageFinished()V
    .locals 0

    .prologue
    .line 773
    return-void
.end method

.method private checkScanning()V
    .locals 4

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 836
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->isMediaScannerScanning(Landroid/content/ContentResolver;)Z

    move-result v1

    .line 837
    .local v1, "scanning":Z
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$15;

    invoke-direct {v3, p0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$15;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 845
    return-void
.end method

.method private checkScanningFinished(Z)V
    .locals 0
    .param p1, "scanning"    # Z

    .prologue
    .line 850
    return-void
.end method

.method private checkThumbBitmap(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "allItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;>;"
    const/16 v6, 0x8e

    .line 987
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;

    .line 988
    .local v3, "item":Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;
    iget-object v4, v3, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mImageList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    invoke-direct {p0, v6, v6, v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->makeMiniThumbBitmap(IILcom/lenovo/scg/gallery3d/boxcontrol/IImageList;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 989
    .local v0, "b":Landroid/graphics/Bitmap;
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mAbort:Z

    if-eqz v4, :cond_1

    .line 990
    if-eqz v0, :cond_0

    .line 991
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1006
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v3    # "item":Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;
    :cond_0
    return-void

    .line 996
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    .restart local v3    # "item":Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;
    :cond_1
    move-object v1, v3

    .line 997
    .local v1, "finalItem":Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$17;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$17;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1004
    invoke-virtual {v3, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->setThumbBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private createImageList(ILjava/lang/String;Landroid/content/ContentResolver;)Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    .locals 3
    .param p1, "mediaTypes"    # I
    .param p2, "bucketId"    # Ljava/lang/String;
    .param p3, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 981
    sget-object v1, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;->ALL:Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;

    const/4 v2, 0x2

    invoke-static {p3, v1, p1, v2, p2}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager$DataLocation;IILjava/lang/String;)Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    move-result-object v0

    .line 982
    .local v0, "list":Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    return-object v0
.end method

.method private createVariables()V
    .locals 5

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_from_goldbox"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->isFromGoldBox:Z

    .line 594
    new-instance v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mDataClass:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;

    .line 595
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "photos"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mLastSelectImages:Ljava/util/ArrayList;

    .line 596
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mLastSelectImages:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 597
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mLastSelectImages:Ljava/util/ArrayList;

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSelectImages:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mLastSelectImages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 601
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mActionBar:Landroid/app/ActionBar;

    .line 602
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 603
    new-instance v0, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageList;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicList:Lcom/lenovo/scg/gallery3d/boxcontrol/ImageList;

    .line 604
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f08cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mTotalCountTip:Ljava/lang/String;

    .line 605
    return-void
.end method

.method private dealwithViewEvent()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mCataloguePicsList:Landroid/widget/ListView;

    new-instance v1, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$4;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$4;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 303
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSubPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;

    new-instance v1, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$5;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$5;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->setmOnPhotoSelectedChangeListener(Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$OnPhotoSelectedChangeListener;)V

    .line 340
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    new-instance v1, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$6;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$6;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->setmOnPhotoSelectedChangeListener(Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$OnPhotoSelectedChangeListener;)V

    .line 372
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mOkView:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$7;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$7;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mBackView:Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$8;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$8;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mCancelView:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$9;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$9;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSubPicsGrid:Landroid/widget/GridView;

    new-instance v1, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$10;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$10;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 433
    return-void
.end method

.method private dissMissProgressDialog()V
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 743
    :cond_0
    return-void
.end method

.method private findViewsNeedId()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 614
    const v0, 0x7f10012d

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mCatalogueLayout:Landroid/widget/RelativeLayout;

    .line 615
    const v0, 0x7f10012e

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicsGrid:Landroid/widget/GridView;

    .line 616
    const v0, 0x7f100133

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSelectPhotoView:Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;

    .line 617
    const v0, 0x7f100130

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mCataloguePicsList:Landroid/widget/ListView;

    .line 618
    const v0, 0x7f100131

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSubPicsGrid:Landroid/widget/GridView;

    .line 619
    const v0, 0x7f100134

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mOkView:Landroid/widget/TextView;

    .line 620
    const v0, 0x7f100132

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSelectViewLayout:Landroid/widget/RelativeLayout;

    .line 621
    const v0, 0x7f100127

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mBackView:Landroid/widget/ImageView;

    .line 622
    const v0, 0x7f10012a

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mDividLine2:Landroid/widget/ImageView;

    .line 623
    const v0, 0x7f10012b

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mCancelView:Landroid/widget/TextView;

    .line 624
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mCancelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 625
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mDividLine2:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mDividLine2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 629
    :cond_0
    const v0, 0x7f100129

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mTitleView:Landroid/widget/TextView;

    .line 630
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f08c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mBoxControlTile:Ljava/lang/String;

    .line 631
    const v0, 0x7f10012f

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mDividedView:Landroid/widget/ImageView;

    .line 632
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mTitleView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 633
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mCancelView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 634
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mOkView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 636
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mBlueColor:I

    .line 637
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09047b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mTopPadding:I

    .line 638
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09047a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mLeftPadding:I

    .line 639
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mCameraBgIcon:Landroid/graphics/drawable/Drawable;

    .line 640
    return-void
.end method

.method private getArrivedIntentParam()V
    .locals 3

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 268
    .local v0, "arrivedInent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 269
    const-string/jumbo v1, "request_pics_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRequestType:I

    .line 271
    :cond_0
    return-void
.end method

.method private getSystemSize()V
    .locals 2

    .prologue
    .line 608
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 609
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 610
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mDenty:F

    .line 611
    return-void
.end method

.method private judgeSingleOrMulti()V
    .locals 2

    .prologue
    .line 208
    iget v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRequestType:I

    if-nez v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSelectViewLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRequestType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSelectViewLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private loadDrawableIfNeeded()V
    .locals 2

    .prologue
    .line 1104
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mFrameGalleryMask:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1110
    :goto_0
    return-void

    .line 1107
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1108
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f020894

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mFrameGalleryMask:Landroid/graphics/drawable/Drawable;

    .line 1109
    const v1, 0x108001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mCellOutline:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private makeMiniThumbBitmap(IILcom/lenovo/scg/gallery3d/boxcontrol/IImageList;)Landroid/graphics/Bitmap;
    .locals 29
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "images"    # Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    .prologue
    .line 1010
    invoke-interface/range {p3 .. p3}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->getCount()I

    move-result v24

    .line 1016
    .local v24, "count":I
    const/16 v27, 0x1

    .line 1017
    .local v27, "padding":I
    move/from16 v10, p1

    .line 1018
    .local v10, "imageWidth":I
    move/from16 v11, p2

    .line 1019
    .local v11, "imageHeight":I
    const/16 v19, 0x0

    .line 1020
    .local v19, "offsetWidth":I
    const/16 v20, 0x0

    .line 1022
    .local v20, "offsetHeight":I
    new-instance v26, Landroid/graphics/Paint;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Paint;-><init>()V

    .line 1023
    .local v26, "p":Landroid/graphics/Paint;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 1024
    .local v22, "b":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1025
    .local v2, "c":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 1028
    .local v8, "m":Landroid/graphics/Matrix;
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1029
    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 1032
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->loadDrawableIfNeeded()V

    .line 1035
    const/4 v3, -0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1036
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mFrameGalleryMask:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mFrameGalleryMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1039
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 1040
    .local v7, "pdpaint":Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1041
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1042
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1044
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1045
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p1

    int-to-float v5, v0

    move/from16 v0, p2

    int-to-float v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1047
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    const/4 v3, 0x1

    move/from16 v0, v21

    if-ge v0, v3, :cond_0

    .line 1048
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mAbort:Z

    if-eqz v3, :cond_1

    .line 1049
    const/16 v22, 0x0

    .line 1089
    .end local v22    # "b":Landroid/graphics/Bitmap;
    :cond_0
    :goto_1
    return-object v22

    .line 1052
    .restart local v22    # "b":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v9, 0x0

    .line 1053
    .local v9, "temp":Landroid/graphics/Bitmap;
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->getImageAt(I)Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    move-result-object v25

    .line 1055
    .local v25, "image":Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;
    :goto_2
    move-object/from16 v0, v25

    instance-of v3, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    if-eqz v3, :cond_3

    move-object/from16 v3, v25

    .line 1057
    check-cast v3, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->thumbBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 1058
    .local v23, "bm":Landroid/graphics/Bitmap;
    if-nez v23, :cond_3

    .line 1059
    const/16 v22, 0x0

    goto :goto_1

    .line 1053
    .end local v23    # "bm":Landroid/graphics/Bitmap;
    .end local v25    # "image":Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;
    :cond_2
    const/16 v25, 0x0

    goto :goto_2

    .line 1064
    .restart local v25    # "image":Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;
    :cond_3
    if-eqz v25, :cond_4

    .line 1065
    invoke-interface/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1068
    :cond_4
    if-eqz v9, :cond_5

    .line 1069
    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-static/range {v8 .. v13}, Lcom/lenovo/scg/common/utils/bitmap/BoxCtrolUtil;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1072
    :cond_5
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 1073
    .local v12, "thumb":Landroid/graphics/Bitmap;
    new-instance v28, Landroid/graphics/Canvas;

    move-object/from16 v0, v28

    invoke-direct {v0, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1074
    .local v28, "tempCanvas":Landroid/graphics/Canvas;
    if-eqz v9, :cond_6

    .line 1075
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v9, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1080
    :cond_6
    const/16 v16, 0x1

    const/16 v18, 0x1

    move-object v13, v2

    move-object v14, v7

    move v15, v10

    move/from16 v17, v11

    invoke-static/range {v12 .. v21}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->placeImage(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIIII)V

    .line 1082
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 1084
    if-eqz v9, :cond_7

    .line 1085
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 1047
    :cond_7
    add-int/lit8 v21, v21, 0x1

    goto :goto_0
.end method

.method private onReceiveMediaBroadcast(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 777
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 783
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mUnmounted:Z

    .line 784
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mScanning:Z

    .line 785
    invoke-direct {p0, v3, v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->rebake(ZZ)V

    goto :goto_0

    .line 786
    :cond_2
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 787
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mUnmounted:Z

    .line 788
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mScanning:Z

    .line 789
    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->rebake(ZZ)V

    goto :goto_0

    .line 790
    :cond_3
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 791
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mUnmounted:Z

    .line 792
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mScanning:Z

    .line 793
    invoke-direct {p0, v2, v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->rebake(ZZ)V

    goto :goto_0

    .line 794
    :cond_4
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 795
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mUnmounted:Z

    .line 796
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mScanning:Z

    .line 797
    invoke-direct {p0, v3, v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->rebake(ZZ)V

    goto :goto_0
.end method

.method private static placeImage(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIIII)V
    .locals 6
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "imageWidth"    # I
    .param p4, "widthPadding"    # I
    .param p5, "imageHeight"    # I
    .param p6, "heightPadding"    # I
    .param p7, "offsetX"    # I
    .param p8, "offsetY"    # I
    .param p9, "pos"    # I

    .prologue
    .line 1094
    div-int/lit8 v1, p9, 0x2

    .line 1095
    .local v1, "row":I
    mul-int/lit8 v4, v1, 0x2

    sub-int v0, p9, v4

    .line 1097
    .local v0, "col":I
    add-int v4, p3, p4

    mul-int/2addr v4, v0

    sub-int v2, v4, p7

    .line 1098
    .local v2, "xPos":I
    add-int v4, p5, p6

    mul-int/2addr v4, v1

    sub-int v3, v4, p8

    .line 1100
    .local v3, "yPos":I
    int-to-float v4, v2

    int-to-float v5, v3

    invoke-virtual {p1, p0, v4, v5, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1101
    return-void
.end method

.method private rebake(ZZ)V
    .locals 1
    .param p1, "unmounted"    # Z
    .param p2, "scanning"    # Z

    .prologue
    .line 803
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mUnmounted:Z

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mScanning:Z

    if-ne p2, v0, :cond_1

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->abortWorker()V

    .line 807
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mUnmounted:Z

    .line 808
    iput-boolean p2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mScanning:Z

    .line 809
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mScanning:Z

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->updateScanningDialog(Z)V

    .line 810
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mUnmounted:Z

    if-nez v0, :cond_0

    .line 811
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->startWorker()V

    goto :goto_0
.end method

.method private setData()V
    .locals 2

    .prologue
    .line 216
    new-instance v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$2;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 223
    new-instance v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$3;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$3;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mDbObserver:Landroid/database/ContentObserver;

    .line 230
    invoke-static {}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->ensureOSXCompatibleFolder()V

    .line 231
    return-void
.end method

.method private setViewData()V
    .locals 2

    .prologue
    .line 643
    new-instance v0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSubPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;

    .line 644
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSubPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSubPicsGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->setAdapterView(Landroid/view/View;)V

    .line 645
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSubPicsGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSubPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 647
    new-instance v0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    .line 649
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicsGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->setAdapterView(Landroid/view/View;)V

    .line 650
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRequestType:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->setRequestType(I)V

    .line 653
    new-instance v0, Lcom/lenovo/scg/gallery3d/boxcontrol/CataloguePicListAdapter;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/CataloguePicListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mAlbumListAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/CataloguePicListAdapter;

    .line 654
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mCataloguePicsList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mAlbumListAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/CataloguePicListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 656
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSelectPhotoView:Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSubPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->setmOnDeleteListener(Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView$OnDeleteListener;)V

    .line 657
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSelectPhotoView:Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;

    new-instance v1, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$11;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$11;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->setmOnDeleteListener(Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView$OnDeleteListener;)V

    .line 674
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSelectPhotoView:Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSelectImages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->notifyDataChange(Ljava/util/ArrayList;)V

    .line 675
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSubPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSelectPhotoView:Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->setmSelectPhotoView(Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;)V

    .line 676
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSelectPhotoView:Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->setmOnDeleteListener(Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView$OnDeleteListener;)V

    .line 677
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSelectPhotoView:Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->setmSelectPhotoView(Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;)V

    .line 678
    return-void
.end method

.method private startWorker()V
    .locals 2

    .prologue
    .line 682
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mAbort:Z

    .line 683
    new-instance v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$12;

    const-string v1, "Puzle_GalleryPicker Worker"

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$12;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mWorkerThread:Ljava/lang/Thread;

    .line 690
    invoke-static {}, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->instance()Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->allowThreadDecoding(Ljava/lang/Thread;)V

    .line 691
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 692
    return-void
.end method

.method private subPicPageBack()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 571
    sput-boolean v1, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mIsContainCameraCatalogue:Z

    .line 572
    sput-boolean v1, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mIsContinuousCatalogue:Z

    .line 573
    sput-boolean v1, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mIsShowDividedView:Z

    .line 574
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mCatalogueLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 575
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mCatalogueLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 577
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSubPicsGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 578
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mCancelView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 579
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mDividLine2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 580
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mBoxControlTile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->release()V

    .line 588
    :goto_0
    return-void

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->clearImagesList()V

    .line 586
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->finish()V

    goto :goto_0
.end method

.method private unloadDrawable()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 746
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mFrameGalleryMask:Landroid/graphics/drawable/Drawable;

    .line 747
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mCellOutline:Landroid/graphics/drawable/Drawable;

    .line 748
    return-void
.end method

.method private workerRun()V
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mAllItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 706
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->checkScanning()V

    .line 707
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mAbort:Z

    if-eqz v0, :cond_2

    .line 737
    :cond_1
    :goto_0
    return-void

    .line 714
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mAllItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->checkBucketIds(Ljava/util/ArrayList;)V

    .line 715
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mAbort:Z

    if-nez v0, :cond_1

    .line 718
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mAllItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->checkThumbBitmap(Ljava/util/ArrayList;)V

    .line 719
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mAbort:Z

    if-nez v0, :cond_1

    .line 722
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->checkLowStorage()V

    .line 723
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$13;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$13;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 531
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 532
    packed-switch p1, :pswitch_data_0

    .line 560
    :goto_0
    return-void

    .line 536
    :pswitch_0
    iget v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRequestType:I

    if-nez v2, :cond_2

    .line 537
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mDataClass:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mIsCameraBack:Z

    .line 538
    sget-object v2, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mSDPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 539
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mSDPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 541
    .local v1, "picFile":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 543
    .local v0, "carmeraPicUri":Landroid/net/Uri;
    const-string v2, "BoxControlActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "carmeraPicUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 546
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->returnRequestSinglePic(Landroid/net/Uri;)V

    goto :goto_0

    .line 548
    :cond_0
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->setResult(I)V

    goto :goto_0

    .line 551
    .end local v0    # "carmeraPicUri":Landroid/net/Uri;
    .end local v1    # "picFile":Ljava/io/File;
    :cond_1
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->setResult(I)V

    goto :goto_0

    .line 555
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->finish()V

    goto :goto_0

    .line 532
    :pswitch_data_0
    .packed-switch 0xf0
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 564
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_BoxControlActivity"

    const-string v2, "action_BoxControlActivity_click_back_btn"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 567
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->subPicPageBack()V

    .line 568
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 188
    const-string v0, "BoxControlActivity"

    const-string v1, "-------onCreate()---------- "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_BoxControlActivity"

    const-string v2, "action_BoxControlActivity_oncreate"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 193
    const v0, 0x7f040029

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->setContentView(I)V

    .line 194
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->createVariables()V

    .line 195
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->getSystemSize()V

    .line 197
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->getArrivedIntentParam()V

    .line 200
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->findViewsNeedId()V

    .line 201
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->setViewData()V

    .line 202
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->setData()V

    .line 203
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->dealwithViewEvent()V

    .line 204
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->judgeSingleOrMulti()V

    .line 205
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1120
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1125
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 500
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 501
    const-string v0, "BoxControlActivity"

    const-string v1, "-------onResume()---------- "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    .line 479
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 480
    const-string v1, "BoxControlActivity"

    const-string v2, "-------onStart()---------- "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 482
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 486
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 487
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 489
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 491
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mDbObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 493
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mUnmounted:Z

    if-nez v1, :cond_0

    .line 494
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->startWorker()V

    .line 496
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 506
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 507
    const-string v0, "BoxControlActivity"

    const-string v1, "-------onStop()---------- "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->abortWorker()V

    .line 511
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mDataClass:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mIsCameraBack:Z

    if-nez v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mDbObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 517
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mDbObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    if-eqz v0, :cond_2

    .line 522
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRecentPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->clearImagesList()V

    .line 526
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->unloadDrawable()V

    .line 527
    return-void
.end method

.method protected returnMultiRequestPic()V
    .locals 5

    .prologue
    .line 463
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v3, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSelectPhotoView:Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->getmSelectList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 465
    .local v1, "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    if-eqz v1, :cond_0

    .line 466
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getmUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 470
    .end local v1    # "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 471
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "return_multi_pics_key"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 473
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->setResult(ILandroid/content/Intent;)V

    .line 474
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->finish()V

    .line 475
    return-void
.end method

.method protected returnRequestSinglePic(Landroid/net/Uri;)V
    .locals 6
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 238
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 240
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "return_single_pic_key"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->isFromGoldBox:Z

    if-eqz v2, :cond_0

    .line 247
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    .local v1, "startFacePrettyIntent":Landroid/content/Intent;
    const-string v2, "PHOTO_PATH"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string v2, "is_from_goldbox"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 254
    const-string v2, "START_TIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BoxControlActivity returnRequestSinglePic \uff1a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->startActivity(Landroid/content/Intent;)V

    .line 263
    .end local v1    # "startFacePrettyIntent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->finish()V

    .line 264
    return-void

    .line 259
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected returnSelectPic(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;)V
    .locals 4
    .param p1, "image"    # Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .prologue
    .line 447
    iget v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRequestType:I

    if-nez v1, :cond_1

    .line 449
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getmUri()Landroid/net/Uri;

    move-result-object v0

    .line 451
    .local v0, "imageUri":Landroid/net/Uri;
    const-string v1, "BoxControlActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imageUri.toString() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->returnRequestSinglePic(Landroid/net/Uri;)V

    .line 460
    .end local v0    # "imageUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    iget v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRequestType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 458
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSelectPhotoView:Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSelectImages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->notifyDataChange(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected updateOkBtn()V
    .locals 5

    .prologue
    .line 436
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSelectImages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSelectImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mOkView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mTotalCountTip:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSelectImages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mOkView:Landroid/widget/TextView;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mBlueColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mOkView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f08c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateScanningDialog(Z)V
    .locals 0
    .param p1, "scanning"    # Z

    .prologue
    .line 860
    return-void
.end method
