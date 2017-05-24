.class public Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;
.super Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;
.source "ViewPagerActivity.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnViewTapListener;
.implements Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$DownloadBigPicDoneListener;,
        Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$ContentResolverQueryCallback;,
        Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;
    }
.end annotation


# static fields
.field public static final ALL_IMAGE_URLS:Ljava/lang/String; = "all_image_urls"

.field public static final DATA_ITEM:Ljava/lang/String; = "data_item"

.field public static final DISABLE_DOWNLOAD_BTN:I = 0x11000

.field public static final DIS_MISS_DIALOG:I = 0x10001

.field public static final DOWNLOAD_ERROR:I = 0x10002

.field public static final ENABLE_DOWNLOAD_BTN:I = 0x11001

.field public static final IMAGE_NAME:Ljava/lang/String; = "image_name"

.field public static final IMAGE_URL:Ljava/lang/String; = "image_url"

.field private static SDCARD_PATH:Ljava/lang/String; = null

.field public static final SELECTED_ID:Ljava/lang/String; = "selected_id"

.field public static final VIEW_TAP:I = 0x10000

.field private static WEIBO_PATH:Ljava/lang/String;

.field public static screenHeight:I

.field public static screenWidth:I


# instance fields
.field allPicURLs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;",
            ">;"
        }
    .end annotation
.end field

.field private downloadBtn:Landroid/widget/ImageButton;

.field private mAllMiddleBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mBackButton:Landroid/widget/ImageButton;

.field private mCurrentPicURL:Ljava/lang/String;

.field private mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

.field private mFileManager:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

.field private mFolderName:Ljava/lang/String;

.field private mGetLargeProgressBar:Landroid/widget/ProgressBar;

.field private mGifView:Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;

.field public mHandler:Landroid/os/Handler;

.field private mImageCounter:Landroid/widget/TextView;

.field private mIntent:Landroid/content/Intent;

.field private mLargeURL:Ljava/lang/String;

.field private mMiddleURL:Ljava/lang/String;

.field private mPhotoViewAdapter:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;

.field private mPicNameString:Ljava/lang/String;

.field private mPool:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

.field private mRelativeLayout:Landroid/widget/RelativeLayout;

.field private mSingleBigBitmap:Landroid/graphics/Bitmap;

.field private mSingleMidBitmap:Landroid/graphics/Bitmap;

.field private mSingleThumbBitmap:Landroid/graphics/Bitmap;

.field private mThumbURL:Ljava/lang/String;

.field private mToast:Landroid/widget/Toast;

.field private mTopActionRL:Landroid/widget/RelativeLayout;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mWeiboPicURLs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;",
            ">;"
        }
    .end annotation
.end field

.field private saveImageButton:Landroid/widget/ImageButton;

.field private selected_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getWeiBoPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->WEIBO_PATH:Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSdcardPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Pictures"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->SDCARD_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;-><init>()V

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mFolderName:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mCurrentPicURL:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mLargeURL:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mMiddleURL:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mThumbURL:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mPool:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mWeiboPicURLs:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mAllMiddleBitmaps:Ljava/util/List;

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->selected_id:I

    .line 131
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mToast:Landroid/widget/Toast;

    .line 519
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$2;-><init>(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mHandler:Landroid/os/Handler;

    .line 852
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mImageCounter:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mGetLargeProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleBigBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleBigBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleMidBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleMidBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mFolderName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    .prologue
    .line 65
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->selected_id:I

    return v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->selected_id:I

    return p1
.end method

.method static synthetic access$302(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mMiddleURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mLargeURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mLargeURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mThumbURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mPhotoViewAdapter:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mTopActionRL:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->downloadBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private addGalleryViewActionBar(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;)V
    .locals 6
    .param p1, "mSamplePagerAdapter"    # Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;

    .prologue
    const/4 v5, -0x1

    .line 334
    const v2, 0x7f1007a2

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 337
    .local v1, "mLayout":Landroid/widget/RelativeLayout;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 338
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2, v5, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 340
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 343
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0401c0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 344
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f100ad0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mGetLargeProgressBar:Landroid/widget/ProgressBar;

    .line 345
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f100acc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mTopActionRL:Landroid/widget/RelativeLayout;

    .line 347
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f100acd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mImageCounter:Landroid/widget/TextView;

    .line 348
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f100acf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->downloadBtn:Landroid/widget/ImageButton;

    .line 349
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->downloadBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->isSingleImg()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mImageCounter:Landroid/widget/TextView;

    const-string v3, "1/1"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mImageCounter:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 358
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v5, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 360
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f10082a

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mBackButton:Landroid/widget/ImageButton;

    .line 361
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f100ace

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->saveImageButton:Landroid/widget/ImageButton;

    .line 362
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->saveImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->selected_id:I

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 369
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$1;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 402
    return-void

    .line 354
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mImageCounter:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->selected_id:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getPicNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private copyFileToNewPath(Ljava/io/File;Ljava/io/File;)Z
    .locals 10
    .param p1, "oldFile"    # Ljava/io/File;
    .param p2, "newFile"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x0

    .line 736
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 737
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 739
    .local v1, "byteReadCount":I
    const/4 v4, 0x0

    .line 740
    .local v4, "mInputStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 742
    .local v6, "mOutputStream":Ljava/io/OutputStream;
    const/4 v3, 0x1

    .line 743
    .local v3, "isSuccessed":Z
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 745
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    .end local v4    # "mInputStream":Ljava/io/InputStream;
    .local v5, "mInputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 748
    .end local v6    # "mOutputStream":Ljava/io/OutputStream;
    .local v7, "mOutputStream":Ljava/io/OutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v8, -0x1

    if-eq v1, v8, :cond_1

    .line 749
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 752
    :catch_0
    move-exception v2

    move-object v6, v7

    .end local v7    # "mOutputStream":Ljava/io/OutputStream;
    .restart local v6    # "mOutputStream":Ljava/io/OutputStream;
    move-object v4, v5

    .line 754
    .end local v5    # "mInputStream":Ljava/io/InputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "mInputStream":Ljava/io/InputStream;
    :goto_1
    const/4 v3, 0x0

    .line 755
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 762
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 763
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    move v8, v3

    .line 773
    :cond_0
    return v8

    .line 762
    .end local v4    # "mInputStream":Ljava/io/InputStream;
    .end local v6    # "mOutputStream":Ljava/io/OutputStream;
    .restart local v5    # "mInputStream":Ljava/io/InputStream;
    .restart local v7    # "mOutputStream":Ljava/io/OutputStream;
    :cond_1
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 763
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v6, v7

    .end local v7    # "mOutputStream":Ljava/io/OutputStream;
    .restart local v6    # "mOutputStream":Ljava/io/OutputStream;
    move-object v4, v5

    .line 767
    .end local v5    # "mInputStream":Ljava/io/InputStream;
    .restart local v4    # "mInputStream":Ljava/io/InputStream;
    goto :goto_2

    .line 764
    .end local v4    # "mInputStream":Ljava/io/InputStream;
    .end local v6    # "mOutputStream":Ljava/io/OutputStream;
    .restart local v5    # "mInputStream":Ljava/io/InputStream;
    .restart local v7    # "mOutputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    .line 766
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .end local v7    # "mOutputStream":Ljava/io/OutputStream;
    .restart local v6    # "mOutputStream":Ljava/io/OutputStream;
    move-object v4, v5

    .line 769
    .end local v5    # "mInputStream":Ljava/io/InputStream;
    .restart local v4    # "mInputStream":Ljava/io/InputStream;
    goto :goto_2

    .line 764
    .local v2, "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 766
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 756
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 758
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3
    const/4 v3, 0x0

    .line 759
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 762
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 763
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 764
    :catch_4
    move-exception v2

    .line 766
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 761
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 762
    :goto_4
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 763
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 767
    :goto_5
    throw v8

    .line 764
    :catch_5
    move-exception v2

    .line 766
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 761
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "mInputStream":Ljava/io/InputStream;
    .restart local v5    # "mInputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "mInputStream":Ljava/io/InputStream;
    .restart local v4    # "mInputStream":Ljava/io/InputStream;
    goto :goto_4

    .end local v4    # "mInputStream":Ljava/io/InputStream;
    .end local v6    # "mOutputStream":Ljava/io/OutputStream;
    .restart local v5    # "mInputStream":Ljava/io/InputStream;
    .restart local v7    # "mOutputStream":Ljava/io/OutputStream;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "mOutputStream":Ljava/io/OutputStream;
    .restart local v6    # "mOutputStream":Ljava/io/OutputStream;
    move-object v4, v5

    .end local v5    # "mInputStream":Ljava/io/InputStream;
    .restart local v4    # "mInputStream":Ljava/io/InputStream;
    goto :goto_4

    .line 756
    .end local v4    # "mInputStream":Ljava/io/InputStream;
    .restart local v5    # "mInputStream":Ljava/io/InputStream;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5    # "mInputStream":Ljava/io/InputStream;
    .restart local v4    # "mInputStream":Ljava/io/InputStream;
    goto :goto_3

    .end local v4    # "mInputStream":Ljava/io/InputStream;
    .end local v6    # "mOutputStream":Ljava/io/OutputStream;
    .restart local v5    # "mInputStream":Ljava/io/InputStream;
    .restart local v7    # "mOutputStream":Ljava/io/OutputStream;
    :catch_7
    move-exception v2

    move-object v6, v7

    .end local v7    # "mOutputStream":Ljava/io/OutputStream;
    .restart local v6    # "mOutputStream":Ljava/io/OutputStream;
    move-object v4, v5

    .end local v5    # "mInputStream":Ljava/io/InputStream;
    .restart local v4    # "mInputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 752
    :catch_8
    move-exception v2

    goto :goto_1

    .end local v4    # "mInputStream":Ljava/io/InputStream;
    .restart local v5    # "mInputStream":Ljava/io/InputStream;
    :catch_9
    move-exception v2

    move-object v4, v5

    .end local v5    # "mInputStream":Ljava/io/InputStream;
    .restart local v4    # "mInputStream":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private fileTypeIsGIF(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "fileFolder"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 329
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/mnt/sdcard/.SCG/weibocache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, "mFile":Ljava/lang/String;
    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private getFileNameFromURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "splitStrings":[Ljava/lang/String;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method private insertContent(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "saveFileName"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "mUri"    # Landroid/net/Uri;

    .prologue
    .line 778
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 780
    .local v0, "now":J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 781
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const-string v4, "_display_name"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const-string v4, "gif"

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 784
    const-string/jumbo v4, "mime_type"

    const-string v5, "image/gif"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :goto_0
    const-string v4, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 790
    const-string v4, "date_modified"

    const-wide/16 v6, 0x3e8

    div-long v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 791
    const-string v4, "date_added"

    const-wide/16 v6, 0x3e8

    div-long v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 792
    const-string/jumbo v4, "orientation"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 793
    const-string v4, "_data"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const-string v4, "_size"

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 796
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleBigBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleBigBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 797
    const-string/jumbo v4, "width"

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleBigBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 798
    const-string v4, "height"

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleBigBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 804
    :cond_0
    :goto_1
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "datetaken"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "latitude"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "longitude"

    aput-object v5, v2, v4

    .line 805
    .local v2, "projection":[Ljava/lang/String;
    new-instance v4, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$3;

    invoke-direct {v4, p0, v3}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$3;-><init>(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;Landroid/content/ContentValues;)V

    invoke-direct {p0, v2, v4, p3, p4}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->querySource([Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$ContentResolverQueryCallback;Landroid/content/Context;Landroid/net/Uri;)V

    .line 821
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    return-object v4

    .line 786
    .end local v2    # "projection":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "mime_type"

    const-string v5, "image/jpeg"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 799
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleMidBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleMidBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 800
    const-string/jumbo v4, "width"

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleMidBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 801
    const-string v4, "height"

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleMidBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method private querySource([Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$ContentResolverQueryCallback;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 7
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "callback"    # Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$ContentResolverQueryCallback;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "sourceUri"    # Landroid/net/Uri;

    .prologue
    .line 830
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 831
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 833
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p4

    move-object v2, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 834
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 835
    invoke-interface {p2, v6}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$ContentResolverQueryCallback;->onCursorResult(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    :cond_0
    if-eqz v6, :cond_1

    .line 841
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 844
    :cond_1
    :goto_0
    return-void

    .line 837
    :catch_0
    move-exception v1

    .line 840
    if-eqz v6, :cond_1

    .line 841
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 840
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 841
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method


# virtual methods
.method public fileTypeIsGIF(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 299
    if-nez p1, :cond_0

    .line 300
    const/4 v0, 0x0

    .line 302
    :goto_0
    return v0

    :cond_0
    const-string v0, "gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fileFolder"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 286
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/mnt/sdcard/.SCG/weibocache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 287
    .local v0, "mFile":Ljava/lang/String;
    return-object v0
.end method

.method public getLargeFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 926
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 927
    .local v0, "mFile":Ljava/io/File;
    return-object v0
.end method

.method public getLargeFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->WEIBO_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mLargeURL:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMiddleFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 933
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 934
    .local v0, "mFile":Ljava/io/File;
    return-object v0
.end method

.method public getMiddleFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->WEIBO_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mMiddleURL:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmallFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 940
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 941
    .local v0, "mFile":Ljava/io/File;
    return-object v0
.end method

.method public getSmallFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->WEIBO_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mThumbURL:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 21
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 582
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 584
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mTopActionRL:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mTopActionRL:Landroid/widget/RelativeLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v16

    const/16 v18, 0x8

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    const/16 v16, 0x0

    :goto_1
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v16, 0x8

    goto :goto_1

    .line 589
    :sswitch_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v16

    const-string v17, "category_weibo_sina_singleimage2"

    const-string v18, "action_weibo_sina_singleimage2_click_org_btn"

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v16 .. v20}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 597
    invoke-static/range {p0 .. p0}, Lcom/lenovo/scg/common/utils/SCGUtils;->checkNetWorkIsAvaliable(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mGetLargeProgressBar:Landroid/widget/ProgressBar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v16

    if-eqz v16, :cond_0

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mGetLargeProgressBar:Landroid/widget/ProgressBar;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->updateProgressBar(Landroid/widget/ProgressBar;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mPool:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    move-object/from16 v16, v0

    sget-object v17, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    sget-object v18, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_GET:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    invoke-virtual/range {v16 .. v18}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getTask(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;)Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    move-result-object v12

    .line 605
    .local v12, "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    sget-object v16, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_BYTES:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mLargeURL:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v12, v0, v1, v2}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->setTaskPara(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 606
    const-string/jumbo v16, "wangdiyuan"

    const-string v17, "getbutton clicked start download"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mPool:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    move-object/from16 v16, v0

    new-instance v17, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$DownloadBigPicDoneListener;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$DownloadBigPicDoneListener;-><init>(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$1;)V

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v12, v1, v2}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->runTask(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 616
    .end local v12    # "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    :sswitch_2
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v16

    const-string v17, "category_weibo_sina_singleimage2"

    const-string v18, "action_weibo_sina_singleimage2_click_return_btn"

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v16 .. v20}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleMidBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleMidBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v16

    if-nez v16, :cond_2

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleMidBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 626
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleBigBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleBigBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v16

    if-nez v16, :cond_3

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleBigBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 629
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mAllMiddleBitmaps:Ljava/util/List;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mAllMiddleBitmaps:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    .line 630
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mAllMiddleBitmaps:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v4, v0, :cond_5

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mAllMiddleBitmaps:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Bitmap;

    .line 632
    .local v10, "needRecycled":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v16

    if-nez v16, :cond_4

    .line 633
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 630
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 638
    .end local v4    # "i":I
    .end local v10    # "needRecycled":Landroid/graphics/Bitmap;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->finish()V

    goto/16 :goto_0

    .line 643
    :sswitch_3
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v16

    const-string v17, "category_weibo_sina_singleimage2"

    const-string v18, "action_weibo_sina_singleimage2_click_save_btn"

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v16 .. v20}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 649
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->WEIBO_PATH:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mFolderName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mLargeURL:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 651
    .local v5, "largeCacheFile":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->WEIBO_PATH:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mFolderName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mMiddleURL:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 653
    .local v8, "middleCacheFile":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->WEIBO_PATH:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mFolderName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mThumbURL:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 655
    .local v13, "thumbCacheFile":Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "WeiboGallery"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 656
    .local v15, "weiboGallery":Ljava/io/File;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->isFileExists(Ljava/io/File;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 657
    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v16

    if-nez v16, :cond_6

    .line 658
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 664
    :cond_6
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->getLargeFilePath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->getLargeFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 666
    .local v6, "largeFile":Ljava/io/File;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->getMiddleFilePath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->getMiddleFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 668
    .local v9, "middleFile":Ljava/io/File;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->getSmallFilePath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->getSmallFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 670
    .local v14, "thumbFile":Ljava/io/File;
    const/4 v11, 0x0

    .line 672
    .local v11, "srcFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 674
    .local v3, "dstFile":Ljava/io/File;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->isFileExists(Ljava/io/File;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 676
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "supergallery_large_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mLargeURL:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->getFileNameFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mPicNameString:Ljava/lang/String;

    .line 677
    move-object v11, v6

    .line 692
    :cond_7
    :goto_4
    new-instance v3, Ljava/io/File;

    .end local v3    # "dstFile":Ljava/io/File;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "WeiboGallery/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mPicNameString:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 694
    .restart local v3    # "dstFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_b

    .line 695
    new-instance v7, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask;-><init>(Landroid/content/Context;)V

    .line 696
    .local v7, "mSaveCopyTask":Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mPicNameString:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask;->setSaveFileName(Ljava/lang/String;)V

    .line 697
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/io/File;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v11, v16, v17

    const/16 v17, 0x1

    aput-object v3, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 661
    .end local v3    # "dstFile":Ljava/io/File;
    .end local v6    # "largeFile":Ljava/io/File;
    .end local v7    # "mSaveCopyTask":Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask;
    .end local v9    # "middleFile":Ljava/io/File;
    .end local v11    # "srcFile":Ljava/io/File;
    .end local v14    # "thumbFile":Ljava/io/File;
    :cond_8
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    goto/16 :goto_3

    .line 679
    .restart local v3    # "dstFile":Ljava/io/File;
    .restart local v6    # "largeFile":Ljava/io/File;
    .restart local v9    # "middleFile":Ljava/io/File;
    .restart local v11    # "srcFile":Ljava/io/File;
    .restart local v14    # "thumbFile":Ljava/io/File;
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->isFileExists(Ljava/io/File;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 681
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "supergallery_middle_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mMiddleURL:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->getFileNameFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mPicNameString:Ljava/lang/String;

    .line 682
    move-object v11, v9

    goto/16 :goto_4

    .line 684
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->isFileExists(Ljava/io/File;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 686
    move-object v11, v14

    .line 687
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "supergallery_small_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mThumbURL:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->getFileNameFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mPicNameString:Ljava/lang/String;

    goto/16 :goto_4

    .line 699
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mToast:Landroid/widget/Toast;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 582
    :sswitch_data_0
    .sparse-switch
        0x7f10082a -> :sswitch_2
        0x7f100ac0 -> :sswitch_0
        0x7f100ace -> :sswitch_3
        0x7f100acf -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 135
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/SCGUtils;->initSCGTypeface(Landroid/content/Context;)V

    .line 138
    new-instance v6, Lcom/lenovo/scg/gallery3d/weibo/views/HackyViewPager;

    invoke-direct {v6, p0}, Lcom/lenovo/scg/gallery3d/weibo/views/HackyViewPager;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 140
    new-instance v6, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;

    invoke-direct {v6, p0}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;-><init>(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)V

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mPhotoViewAdapter:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;

    .line 142
    const v6, 0x7f0401bc

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->setContentView(I)V

    .line 147
    const v6, 0x7f100ac0

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mGifView:Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;

    .line 149
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mGifView:Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;

    invoke-virtual {v6, p0}, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    sget-object v6, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;->POOL_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getInstance(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;)Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mPool:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    .line 152
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mIntent:Landroid/content/Intent;

    .line 153
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "image_name"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mFolderName:Ljava/lang/String;

    .line 154
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "image_url"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mCurrentPicURL:Ljava/lang/String;

    .line 155
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "selected_id"

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->selected_id:I

    .line 157
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mIntent:Landroid/content/Intent;

    const-string v7, "data_item"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 159
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicOriginal()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mLargeURL:Ljava/lang/String;

    .line 160
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicMid()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mMiddleURL:Ljava/lang/String;

    .line 161
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicThumbnail()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mThumbURL:Ljava/lang/String;

    .line 163
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmPicURLs()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmPicURLs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 165
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mWeiboPicURLs:Ljava/util/List;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmPicURLs()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    .end local v0    # "i":I
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mIntent:Landroid/content/Intent;

    const-string v7, "all_image_urls"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->allPicURLs:Ljava/util/List;

    .line 171
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mCurrentPicURL:Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 173
    .local v5, "splitStrings":[Ljava/lang/String;
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v5, v6

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mPicNameString:Ljava/lang/String;

    .line 175
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mFileManager:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    .line 178
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->isSingleImg()Z

    move-result v6

    if-nez v6, :cond_6

    .line 179
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->allPicURLs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 180
    const-string/jumbo v7, "wangdiyuan getAllPics"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->allPicURLs:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getLarge()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v4, ""

    .line 183
    .local v4, "picurl":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getDEFAULT_PIC_MOD()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 184
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->allPicURLs:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getLarge()Ljava/lang/String;

    move-result-object v4

    .line 191
    :goto_2
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mFileManager:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mFolderName:Ljava/lang/String;

    invoke-virtual {v6, v7, v4}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->readPictureFromFile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 192
    .local v2, "mSingleBitmap":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mAllMiddleBitmaps:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 185
    .end local v2    # "mSingleBitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getDEFAULT_PIC_MOD()I

    move-result v6

    if-ne v6, v10, :cond_2

    .line 186
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->allPicURLs:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getBmiddle()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 188
    :cond_2
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->allPicURLs:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getThumbnail()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 195
    .end local v4    # "picurl":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mPhotoViewAdapter:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mAllMiddleBitmaps:Ljava/util/List;

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;->setBitmapData(Ljava/util/List;)V

    .line 196
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mPhotoViewAdapter:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;

    invoke-direct {p0, v6}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->addGalleryViewActionBar(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;)V

    .line 198
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->allPicURLs:Ljava/util/List;

    iget v7, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->selected_id:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getBmiddle()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mMiddleURL:Ljava/lang/String;

    .line 199
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->allPicURLs:Ljava/util/List;

    iget v7, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->selected_id:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getLarge()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mLargeURL:Ljava/lang/String;

    .line 200
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->allPicURLs:Ljava/util/List;

    iget v7, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->selected_id:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getThumbnail()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mThumbURL:Ljava/lang/String;

    .line 261
    .end local v0    # "i":I
    :cond_4
    :goto_3
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->isSingleImg()Z

    move-result v6

    if-nez v6, :cond_5

    .line 262
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mFolderName:Ljava/lang/String;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mLargeURL:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    .local v1, "large":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 264
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mHandler:Landroid/os/Handler;

    const v7, 0x11000

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 269
    .end local v1    # "large":Ljava/io/File;
    :cond_5
    const v6, 0x7f0f08bf

    invoke-static {p0, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mToast:Landroid/widget/Toast;

    .line 270
    return-void

    .line 207
    :cond_6
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mFileManager:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mFolderName:Ljava/lang/String;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mLargeURL:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->readPictureFromFile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleBigBitmap:Landroid/graphics/Bitmap;

    .line 209
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mFileManager:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mFolderName:Ljava/lang/String;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mMiddleURL:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->readPictureFromFile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleMidBitmap:Landroid/graphics/Bitmap;

    .line 211
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mFileManager:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mFolderName:Ljava/lang/String;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mThumbURL:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->readPictureFromFile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleThumbBitmap:Landroid/graphics/Bitmap;

    .line 216
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleBigBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleBigBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_7

    .line 217
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mPhotoViewAdapter:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleBigBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;->setBitmapData(Landroid/graphics/Bitmap;)V

    .line 229
    :cond_7
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleBigBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleMidBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleMidBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_8

    .line 230
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mPhotoViewAdapter:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleMidBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;->setBitmapData(Landroid/graphics/Bitmap;)V

    .line 233
    :cond_8
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleMidBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleBigBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_9

    .line 234
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_9

    .line 235
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mPhotoViewAdapter:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mSingleMidBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;->setBitmapData(Landroid/graphics/Bitmap;)V

    .line 239
    :cond_9
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mPhotoViewAdapter:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;

    invoke-direct {p0, v6}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->addGalleryViewActionBar(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;)V

    .line 242
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mFolderName:Ljava/lang/String;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mMiddleURL:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->fileTypeIsGIF(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 244
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->getMiddleFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->getMiddleFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 246
    .local v3, "middle":Ljava/io/File;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->getLargeFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->getLargeFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 248
    .restart local v1    # "large":Ljava/io/File;
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->isFileExists(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 249
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mGifView:Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mFolderName:Ljava/lang/String;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mLargeURL:Ljava/lang/String;

    invoke-virtual {p0, v7, v8}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->setGifPath(Ljava/lang/String;)Z

    .line 254
    :cond_a
    :goto_4
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mGifView:Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;

    invoke-virtual {v6, v9}, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->setVisibility(I)V

    .line 256
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    goto/16 :goto_3

    .line 250
    :cond_b
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 251
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mGifView:Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mFolderName:Ljava/lang/String;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mMiddleURL:Ljava/lang/String;

    invoke-virtual {p0, v7, v8}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->setGifPath(Ljava/lang/String;)Z

    goto :goto_4
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 308
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->onResume()V

    .line 309
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->isSingleImg()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->getLargeFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->getLargeFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 311
    .local v0, "largeFile":Ljava/io/File;
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->isFileExists(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->downloadBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->disableView(Landroid/view/View;)V

    .line 315
    .end local v0    # "largeFile":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "resultType"    # Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;
    .param p2, "objData"    # Ljava/lang/Object;
    .param p3, "userContext"    # Ljava/lang/Object;

    .prologue
    .line 850
    return-void
.end method

.method public onViewTap(Landroid/view/View;FF)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 576
    const-string/jumbo v0, "wangdiyuan"

    const-string v1, "11111111111111111111111111111111111111"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return-void
.end method
