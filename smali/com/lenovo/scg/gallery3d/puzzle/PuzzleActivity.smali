.class public Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;
.super Landroid/app/Activity;
.source "PuzzleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$PuzzleModifyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$13;
    }
.end annotation


# static fields
.field public static final MSG_SHOW_BAD_IMAGE_INFO:I = 0x9

.field public static mAllBitmapSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field public static mFreedomBg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final MSG_LOW_STORAGE:I

.field private final MSG_SAVE_IMAGE_FILE:I

.field private final MSG_SELECT_MOSAIC:I

.field private final MSG_SELECT_MOSAIC_FEEDOM_UPDATE_UI:I

.field private final MSG_SELECT_MOSAIC_JOINT_UPDATE_UI:I

.field private final MSG_SELECT_MOSAIC_TEMPLATE_UPDATE_UI:I

.field private final MSG_SVAE_IMAGE_FAILED:I

.field private final MSG_TO_JOINT_MOSAIC:I

.field private final MSG_TO_REEDOM_MOSAIC:I

.field private final MSG_TO_TEMPLATE_MOSAIC:I

.field private final REQUEST_REPLACE_IMAGE:I

.field private final REQUEST_SELECT_FRAME_ACTIVITY:I

.field private final REQUEST_SELECT_PHOTO_ACTIVITY:I

.field private mAddOrDeleteBtn:Landroid/widget/TextView;

.field private mBackgroundTabLayout:Landroid/widget/RelativeLayout;

.field private mBackgroundTabLine:Landroid/view/View;

.field private mCloseMenuBtn:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCurrentMosaicMode:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

.field private mFrameThumbnailView:Landroid/widget/HorizontalScrollView;

.field private mFreedomMosaicBtn:Landroid/widget/TextView;

.field private mFreedomMosaicLayout:Landroid/widget/RelativeLayout;

.field private mFreedomTabLine:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mJointMosaicBtn:Landroid/widget/TextView;

.field private mJointMosaicLayout:Landroid/widget/ScrollView;

.field private mJointTabLine:Landroid/view/View;

.field private mMainPageBtn:Landroid/widget/ImageView;

.field private mMosaicPreference:Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;

.field private mMosaicRootLayout:Landroid/widget/RelativeLayout;

.field private mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReplaceImageBtn:Landroid/widget/ImageView;

.field private mSaveShareText:Landroid/widget/ImageView;

.field private mSavedFile:Ljava/io/File;

.field private mSelectFrameBtn:Landroid/widget/TextView;

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

.field private mShowFinishDialog:Z

.field private mTemplateBackgroundDivider:Landroid/view/View;

.field private mTemplateBackgroundDivider2:Landroid/view/View;

.field private mTemplateBtn:Landroid/widget/TextView;

.field private mTemplateMosaicBtn:Landroid/widget/TextView;

.field private mTemplateMosaicLayout:Landroid/widget/RelativeLayout;

.field private mTemplateTabLayout:Landroid/widget/RelativeLayout;

.field private mTemplateTabLine:Landroid/view/View;

.field private mTemplateThumbnailTabLine:Landroid/view/View;

.field private mTemplateView:Landroid/widget/HorizontalScrollView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    const/16 v0, 0x64

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->REQUEST_SELECT_FRAME_ACTIVITY:I

    .line 65
    const/16 v0, 0x65

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->REQUEST_SELECT_PHOTO_ACTIVITY:I

    .line 67
    const/16 v0, 0x66

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->REQUEST_REPLACE_IMAGE:I

    .line 103
    sget-object v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->TEMPLATE_MDOE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mCurrentMosaicMode:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    .line 105
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->MSG_TO_TEMPLATE_MOSAIC:I

    .line 107
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->MSG_TO_JOINT_MOSAIC:I

    .line 109
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->MSG_TO_REEDOM_MOSAIC:I

    .line 111
    const/4 v0, 0x4

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->MSG_SAVE_IMAGE_FILE:I

    .line 113
    const/4 v0, 0x5

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->MSG_SELECT_MOSAIC:I

    .line 115
    const/4 v0, 0x6

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->MSG_SVAE_IMAGE_FAILED:I

    .line 117
    const/4 v0, 0x7

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->MSG_SELECT_MOSAIC_TEMPLATE_UPDATE_UI:I

    .line 119
    const/16 v0, 0x8

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->MSG_SELECT_MOSAIC_JOINT_UPDATE_UI:I

    .line 121
    const/16 v0, 0xb

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->MSG_SELECT_MOSAIC_FEEDOM_UPDATE_UI:I

    .line 125
    const/16 v0, 0xa

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->MSG_LOW_STORAGE:I

    .line 153
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mShowFinishDialog:Z

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mSelectImages:Ljava/util/ArrayList;

    .line 811
    new-instance v0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$8;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mCurrentMosaicMode:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->selectMosaic(Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mJointMosaicBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomTabLine:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomMosaicBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mSavedFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->showSDCardFullDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFrameThumbnailView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateTabLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateBackgroundDivider:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateThumbnailTabLine:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mBackgroundTabLine:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateTabLine:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->showBadPictureDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    return-object v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;)Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    return-object p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mSelectImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateMosaicBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mMosaicRootLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->dissMissProgressDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mJointTabLine:Landroid/view/View;

    return-object v0
.end method

.method private dissMissProgressDialog()V
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 913
    :cond_0
    return-void
.end method

.method public static getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 708
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 710
    .local v2, "returnedBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 711
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 712
    .local v0, "bgDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 716
    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 717
    return-object v2

    .line 715
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0
.end method

.method private hideAllViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 258
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateMosaicLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomMosaicLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mJointMosaicLayout:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateTabLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomTabLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mJointTabLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateMosaicBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 265
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mJointMosaicBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 266
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomMosaicBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 267
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mBackgroundTabLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateThumbnailTabLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 269
    return-void
.end method

.method private initData(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->initSelectImages(Landroid/content/Intent;)V

    .line 210
    return-void
.end method

.method private initMosaicMode()V
    .locals 2

    .prologue
    .line 192
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mMosaicPreference:Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;

    .line 193
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mMosaicPreference:Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->getLastMosaicMode()Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    move-result-object v0

    .line 194
    .local v0, "mosaicMode":Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mCurrentMosaicMode:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    .line 195
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->showProgressDialog()V

    .line 196
    new-instance v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)V

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$1;->start()V

    .line 206
    return-void
.end method

.method private initSelectImages(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 289
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mSelectImages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 290
    const-string/jumbo v1, "photos"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 292
    .local v0, "images":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/boxcontrol/Image;>;"
    if-eqz v0, :cond_0

    .line 293
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mSelectImages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 294
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 213
    const v0, 0x7f1007e4

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateBackgroundDivider:Landroid/view/View;

    .line 214
    const v0, 0x7f1007e8

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateBackgroundDivider2:Landroid/view/View;

    .line 215
    const v0, 0x7f1007e1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateTabLayout:Landroid/widget/RelativeLayout;

    .line 216
    const v0, 0x7f1007e5

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mBackgroundTabLayout:Landroid/widget/RelativeLayout;

    .line 217
    const v0, 0x7f1007e3

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateThumbnailTabLine:Landroid/view/View;

    .line 218
    const v0, 0x7f1007e7

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mBackgroundTabLine:Landroid/view/View;

    .line 219
    const v0, 0x7f1007da

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateTabLine:Landroid/view/View;

    .line 220
    const v0, 0x7f1007de

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mJointTabLine:Landroid/view/View;

    .line 221
    const v0, 0x7f1007dc

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomTabLine:Landroid/view/View;

    .line 222
    const v0, 0x7f1007ea

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateView:Landroid/widget/HorizontalScrollView;

    .line 223
    const v0, 0x7f1007f5

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFrameThumbnailView:Landroid/widget/HorizontalScrollView;

    .line 224
    const v0, 0x7f1007e2

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateBtn:Landroid/widget/TextView;

    .line 225
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    const v0, 0x7f1007d5

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mMainPageBtn:Landroid/widget/ImageView;

    .line 227
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mMainPageBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    const v0, 0x7f1007e6

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mSelectFrameBtn:Landroid/widget/TextView;

    .line 229
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mSelectFrameBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    const v0, 0x7f1007e9

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAddOrDeleteBtn:Landroid/widget/TextView;

    .line 231
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAddOrDeleteBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    const v0, 0x7f1007dd

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mJointMosaicBtn:Landroid/widget/TextView;

    .line 233
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mJointMosaicBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    const v0, 0x7f1007d9

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateMosaicBtn:Landroid/widget/TextView;

    .line 235
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateMosaicBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    const v0, 0x7f1007db

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomMosaicBtn:Landroid/widget/TextView;

    .line 237
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomMosaicBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    const v0, 0x7f1007d7

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mSaveShareText:Landroid/widget/ImageView;

    .line 239
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mSaveShareText:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    const v0, 0x7f100801

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mCloseMenuBtn:Landroid/widget/ImageView;

    .line 246
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mCloseMenuBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    const v0, 0x7f100802

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mReplaceImageBtn:Landroid/widget/ImageView;

    .line 248
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mReplaceImageBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    const v0, 0x7f1007d3

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mMosaicRootLayout:Landroid/widget/RelativeLayout;

    .line 250
    const v0, 0x7f100814

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateMosaicLayout:Landroid/widget/RelativeLayout;

    .line 251
    const v0, 0x7f100813

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomMosaicLayout:Landroid/widget/RelativeLayout;

    .line 252
    const v0, 0x7f100808

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mJointMosaicLayout:Landroid/widget/ScrollView;

    .line 254
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->hideAllViews()V

    .line 255
    return-void
.end method

.method private recycleBitmap(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p1, "mBitmap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    if-eqz p1, :cond_2

    .line 404
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 405
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 406
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 410
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 411
    const/4 p1, 0x0

    .line 413
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private recycleFreedomBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 481
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 483
    const/4 p1, 0x0

    .line 485
    :cond_0
    return-void
.end method

.method private releaseAllBitmapSet()V
    .locals 3

    .prologue
    .line 417
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAllBitmapSet:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAllBitmapSet:Ljava/util/HashMap;

    sget-object v2, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->TEMPLATE_MDOE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAllBitmapSet:Ljava/util/HashMap;

    sget-object v2, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->TEMPLATE_MDOE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 420
    .local v0, "mBitmaplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->recycleBitmap(Ljava/util/ArrayList;)V

    .line 422
    .end local v0    # "mBitmaplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    :cond_0
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAllBitmapSet:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAllBitmapSet:Ljava/util/HashMap;

    sget-object v2, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->FREEDOM_MODE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 424
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAllBitmapSet:Ljava/util/HashMap;

    sget-object v2, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->FREEDOM_MODE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 425
    .restart local v0    # "mBitmaplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->recycleBitmap(Ljava/util/ArrayList;)V

    .line 427
    .end local v0    # "mBitmaplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    :cond_1
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAllBitmapSet:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAllBitmapSet:Ljava/util/HashMap;

    sget-object v2, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->JOINT_MODE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 429
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAllBitmapSet:Ljava/util/HashMap;

    sget-object v2, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->JOINT_MODE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 430
    .restart local v0    # "mBitmaplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->recycleBitmap(Ljava/util/ArrayList;)V

    .line 432
    .end local v0    # "mBitmaplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    :cond_2
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAllBitmapSet:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 434
    return-void
.end method

.method private releaseFreedomBgSet()V
    .locals 8

    .prologue
    const v7, 0x7f020862

    const v6, 0x7f020861

    const v5, 0x7f020860

    const v4, 0x7f02085f

    const/16 v3, 0x22b8

    .line 442
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 445
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->recycleFreedomBitmap(Landroid/graphics/Bitmap;)V

    .line 447
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 450
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->recycleFreedomBitmap(Landroid/graphics/Bitmap;)V

    .line 452
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 454
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 455
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->recycleFreedomBitmap(Landroid/graphics/Bitmap;)V

    .line 457
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 459
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 460
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->recycleFreedomBitmap(Landroid/graphics/Bitmap;)V

    .line 462
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    const v2, 0x7f020863

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 464
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    const v2, 0x7f020863

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 465
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->recycleFreedomBitmap(Landroid/graphics/Bitmap;)V

    .line 467
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    const v2, 0x7f02089a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 469
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    const v2, 0x7f02089a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 470
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->recycleFreedomBitmap(Landroid/graphics/Bitmap;)V

    .line 472
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 473
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 474
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->recycleFreedomBitmap(Landroid/graphics/Bitmap;)V

    .line 476
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 477
    const/4 v1, 0x0

    sput-object v1, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    .line 478
    return-void
.end method

.method private saveMosaicImage()V
    .locals 8

    .prologue
    .line 681
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->obtainMosaicedPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 682
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$7;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$7;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)V

    .line 688
    .local v2, "callback":Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask$Callback;
    if-eqz v0, :cond_1

    .line 689
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    int-to-long v4, v4

    invoke-static {}, Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;->getAvailableSpace()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 691
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 704
    :goto_0
    return-void

    .line 693
    :cond_0
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;->Bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 694
    .local v1, "bitmapBytes":[B
    const-string/jumbo v4, "super"

    invoke-static {v1, v4}, Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;->saveImage([BLjava/lang/String;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mSavedFile:Ljava/io/File;

    .line 696
    new-instance v3, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mSavedFile:Ljava/io/File;

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mSavedFile:Ljava/io/File;

    invoke-direct {v3, p0, v4, v2, v5}, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask$Callback;Ljava/io/File;)V

    .line 699
    .local v3, "saveCopyTask":Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 702
    .end local v1    # "bitmapBytes":[B
    .end local v3    # "saveCopyTask":Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private selectMosaic(Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;)V
    .locals 2
    .param p1, "mosaicMode"    # Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    .prologue
    .line 929
    sget-object v0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$13;->$SwitchMap$com$lenovo$scg$gallery3d$puzzle$mosaic$PhotoMosaic$MosaicMode:[I

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 948
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mCurrentMosaicMode:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->setmCurrentMosaicMode(Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;)V

    .line 949
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->setmPuzzleModifyListener(Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$PuzzleModifyListener;)V

    .line 950
    return-void

    .line 931
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 932
    new-instance v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mSelectImages:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    .line 933
    sget-object v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->TEMPLATE_MDOE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mCurrentMosaicMode:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    goto :goto_0

    .line 936
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 937
    new-instance v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mSelectImages:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    .line 938
    sget-object v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->FREEDOM_MODE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mCurrentMosaicMode:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    goto :goto_0

    .line 941
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 942
    new-instance v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mSelectImages:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    .line 943
    sget-object v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->JOINT_MODE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mCurrentMosaicMode:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    goto :goto_0

    .line 929
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showBadPictureDialog()V
    .locals 4

    .prologue
    .line 1004
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1005
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0f07e0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1006
    const v2, 0x7f0f0a14

    new-instance v3, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$12;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$12;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1016
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1017
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1018
    .local v1, "mAlertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1019
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/app/AlertDialog;)V

    .line 1020
    return-void
.end method

.method private showFinishDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 968
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0774

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f0772

    new-instance v3, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$11;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$11;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f0773

    new-instance v3, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$10;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$10;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 987
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    move-object v1, v0

    .line 988
    check-cast v1, Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setFocusable(Z)V

    .line 990
    check-cast v0, Landroid/app/AlertDialog;

    .end local v0    # "dialog":Landroid/app/Dialog;
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setFocusable(Z)V

    .line 992
    return-void
.end method

.method private showProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 802
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 803
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 804
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0f078f

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 805
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 806
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 807
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 808
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 809
    return-void
.end method

.method private showSDCardFullDialog()V
    .locals 3

    .prologue
    .line 916
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 917
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0f0857

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 918
    const v1, 0x7f0f0a14

    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$9;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$9;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 925
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 926
    return-void
.end method

.method private showSDCardUnmountDialog()V
    .locals 4

    .prologue
    .line 361
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 362
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0f07e0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 363
    const v2, 0x7f0f07d8

    new-instance v3, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$3;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$3;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 371
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 372
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 373
    .local v1, "mAlertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 374
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/app/AlertDialog;)V

    .line 375
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 20
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 722
    packed-switch p1, :pswitch_data_0

    .line 799
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 724
    :pswitch_1
    const/16 v17, -0x1

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 725
    const-string v17, "frame_res"

    const v18, 0x7f020859

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 728
    .local v7, "frameRes":I
    const-string v17, "frame_index"

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 730
    .local v12, "mFrameIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->setFrameOrBackgroundRes(I)V

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->setFrameOrBackgroundResIndex(I)V

    goto :goto_0

    .line 736
    .end local v7    # "frameRes":I
    .end local v12    # "mFrameIndex":I
    :pswitch_2
    const/16 v17, -0x1

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 737
    const-string v17, "image"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 740
    .local v8, "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    check-cast v14, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;

    .line 741
    .local v14, "mTemplateMosaic":Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;
    invoke-virtual {v14}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->resetPosition()V

    .line 745
    invoke-virtual {v14}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->getViewIndex()I

    move-result v9

    .line 748
    .local v9, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mSelectImages:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual {v14}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->getViewIndex()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mSelectImages:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual {v14}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->getViewIndex()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 750
    invoke-virtual {v14}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->getViewIndex()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v8, v0}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->replaceImage(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;I)V

    .line 754
    sget-object v17, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAllBitmapSet:Ljava/util/HashMap;

    if-eqz v17, :cond_1

    sget-object v17, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAllBitmapSet:Ljava/util/HashMap;

    sget-object v18, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->FREEDOM_MODE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 756
    sget-object v17, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAllBitmapSet:Ljava/util/HashMap;

    sget-object v18, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->FREEDOM_MODE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 758
    .local v10, "mBitmapFreedom":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 759
    .local v15, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v17, 0x4

    move/from16 v0, v17

    iput v0, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 760
    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getDataPath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 762
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Bitmap;

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 763
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 764
    invoke-virtual {v10, v9, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 766
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "mBitmapFreedom":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    .end local v15    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    sget-object v17, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAllBitmapSet:Ljava/util/HashMap;

    if-eqz v17, :cond_0

    sget-object v17, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAllBitmapSet:Ljava/util/HashMap;

    sget-object v18, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->JOINT_MODE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 768
    sget-object v17, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAllBitmapSet:Ljava/util/HashMap;

    sget-object v18, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->JOINT_MODE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 771
    .local v11, "mBitmapJoint":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 772
    .local v6, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 773
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40a00000    # 5.0f

    iget v0, v6, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v5, v0

    .line 774
    .local v5, "desWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mSelectImages:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getDataPath()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;->readFileToBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 777
    .local v4, "bitmapBytes":[B
    const/16 v17, 0x1f4

    const/16 v18, 0x2bc

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;->compressBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 779
    .local v16, "tempbtmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mSelectImages:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getDegreesRotated()I

    move-result v13

    .line 781
    .local v13, "mOrientation":I
    move-object/from16 v0, v16

    invoke-static {v0, v13}, Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 782
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v5, v1}, Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 784
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_2

    .line 785
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 786
    const/16 v16, 0x0

    .line 789
    :cond_2
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Bitmap;

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 790
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 791
    invoke-virtual {v11, v9, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 722
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 954
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mMosaicRootLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f100800

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mMosaicRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearFocus()V

    .line 957
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    check-cast v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->switchMemu(Z)Z

    .line 965
    :goto_0
    return-void

    .line 960
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mShowFinishDialog:Z

    if-eqz v0, :cond_1

    .line 961
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->showFinishDialog()V

    goto :goto_0

    .line 963
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 492
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 494
    :sswitch_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateThumbnailTabLine:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 495
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mBackgroundTabLine:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 496
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4, v6}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 497
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFrameThumbnailView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_0

    .line 504
    :sswitch_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mBackgroundTabLine:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 505
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateThumbnailTabLine:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 506
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFrameThumbnailView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4, v6}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 507
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_0

    .line 517
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/lenovo/scg/photos/AlbumActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 518
    .local v0, "albumIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mSelectImages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 519
    .local v2, "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    invoke-virtual {v2, v7}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->setmIselected(Z)V

    goto :goto_1

    .line 521
    .end local v2    # "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    :cond_1
    const-string/jumbo v4, "photos"

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mSelectImages:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 523
    const/16 v4, 0x65

    invoke-virtual {p0, v0, v4}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 527
    .end local v0    # "albumIntent":Landroid/content/Intent;
    .end local v1    # "i$":Ljava/util/Iterator;
    :sswitch_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mJointMosaicBtn:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 528
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomMosaicBtn:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 529
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateMosaicBtn:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 530
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->hideAllViews()V

    .line 531
    iput-boolean v7, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mShowFinishDialog:Z

    .line 532
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFrameThumbnailView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 533
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4, v6}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 534
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateTabLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 535
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateBackgroundDivider:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 536
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateThumbnailTabLine:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 537
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mBackgroundTabLine:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 538
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateTabLine:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 539
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateMosaicBtn:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 540
    sget-object v4, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->TEMPLATE_MDOE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mCurrentMosaicMode:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    .line 541
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->showProgressDialog()V

    .line 542
    new-instance v4, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$4;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$4;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)V

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$4;->start()V

    goto/16 :goto_0

    .line 563
    :sswitch_4
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomMosaicBtn:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 564
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateMosaicBtn:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 565
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mJointMosaicBtn:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 566
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->hideAllViews()V

    .line 567
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    instance-of v4, v4, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;

    if-eqz v4, :cond_2

    .line 568
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    check-cast v4, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->switchMemu(Z)Z

    .line 570
    :cond_2
    iput-boolean v7, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mShowFinishDialog:Z

    .line 571
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 572
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFrameThumbnailView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4, v6}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 573
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateTabLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 574
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateBackgroundDivider:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 575
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mBackgroundTabLine:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 576
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mJointTabLine:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 577
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mJointMosaicBtn:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 578
    sget-object v4, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->JOINT_MODE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mCurrentMosaicMode:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    .line 579
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->showProgressDialog()V

    .line 580
    new-instance v4, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$5;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$5;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)V

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$5;->start()V

    goto/16 :goto_0

    .line 601
    :sswitch_5
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomMosaicBtn:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 602
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateMosaicBtn:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 603
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mJointMosaicBtn:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 604
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->hideAllViews()V

    .line 605
    iput-boolean v7, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mShowFinishDialog:Z

    .line 606
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFrameThumbnailView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 607
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4, v6}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 608
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateTabLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 609
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateBackgroundDivider:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 610
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mTemplateThumbnailTabLine:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 611
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mBackgroundTabLine:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 612
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomMosaicBtn:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 613
    sget-object v4, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->FREEDOM_MODE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mCurrentMosaicMode:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    .line 614
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->showProgressDialog()V

    .line 615
    new-instance v4, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$6;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$6;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)V

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$6;->start()V

    goto/16 :goto_0

    .line 636
    :sswitch_6
    iput-boolean v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mShowFinishDialog:Z

    .line 637
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mCurrentMosaicMode:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    sget-object v5, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->TEMPLATE_MDOE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    if-ne v4, v5, :cond_3

    .line 638
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mMosaicRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->clearFocus()V

    .line 640
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    check-cast v4, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->switchMemu(Z)Z

    .line 643
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mCurrentMosaicMode:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    sget-object v5, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->FREEDOM_MODE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    if-ne v4, v5, :cond_4

    .line 644
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    check-cast v4, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;->getmFeedomMosaicView()Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->refreshView()V

    .line 647
    :cond_4
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->saveMosaicImage()V

    goto/16 :goto_0

    .line 650
    :sswitch_7
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mShowFinishDialog:Z

    if-eqz v4, :cond_5

    .line 651
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->showFinishDialog()V

    goto/16 :goto_0

    .line 653
    :cond_5
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->finish()V

    goto/16 :goto_0

    .line 657
    :sswitch_8
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mMosaicRootLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f100800

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 659
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mMosaicRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->clearFocus()V

    .line 660
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    check-cast v4, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->switchMemu(Z)Z

    goto/16 :goto_0

    .line 664
    :sswitch_9
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/lenovo/scg/photos/AlbumActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 666
    .local v3, "replaceImageInt":Landroid/content/Intent;
    const-string/jumbo v4, "replace"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 667
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mSelectImages:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    check-cast v4, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;->getViewIndex()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->setmIselected(Z)V

    .line 669
    const-string/jumbo v4, "photos"

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mSelectImages:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 672
    const-string/jumbo v4, "not_show_start"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 674
    const/16 v4, 0x66

    invoke-virtual {p0, v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 492
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1007d5 -> :sswitch_7
        0x7f1007d7 -> :sswitch_6
        0x7f1007d9 -> :sswitch_3
        0x7f1007db -> :sswitch_5
        0x7f1007dd -> :sswitch_4
        0x7f1007e2 -> :sswitch_0
        0x7f1007e6 -> :sswitch_1
        0x7f1007e9 -> :sswitch_2
        0x7f100801 -> :sswitch_8
        0x7f100802 -> :sswitch_9
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 172
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->requestWindowFeature(I)Z

    .line 173
    const v0, 0x7f040133

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->setContentView(I)V

    .line 174
    iput-object p0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mContext:Landroid/content/Context;

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAllBitmapSet:Ljava/util/HashMap;

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    .line 185
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->initView()V

    .line 186
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->initData(Landroid/content/Intent;)V

    .line 187
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->initMosaicMode()V

    .line 188
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 189
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 379
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 380
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mMosaicPreference:Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mCurrentMosaicMode:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->setLastMosaicMode(I)V

    .line 383
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->releaseAllBitmapSet()V

    .line 384
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->releaseFreedomBgSet()V

    .line 390
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mSelectImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 391
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mSelectImages:Ljava/util/ArrayList;

    .line 394
    sput-object v2, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mAllBitmapSet:Ljava/util/HashMap;

    .line 397
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 398
    return-void
.end method

.method public onModify(Z)V
    .locals 0
    .param p1, "modified"    # Z

    .prologue
    .line 996
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mShowFinishDialog:Z

    .line 997
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->initData(Landroid/content/Intent;)V

    .line 274
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->hideAllViews()V

    .line 275
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->showProgressDialog()V

    .line 276
    new-instance v0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$2;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)V

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$2;->start()V

    .line 286
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 356
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->exitPictureQualityMode()V

    .line 357
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 358
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 298
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->enterPictureQualityMode()V

    .line 299
    invoke-static {}, Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;->checkSDCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->showSDCardUnmountDialog()V

    .line 304
    :cond_0
    sget-boolean v0, Lcom/lenovo/scg/photos/AlbumActivity;->isAddOrDelete:Z

    if-eqz v0, :cond_1

    .line 305
    const-string v0, "lnliu"

    const-string/jumbo v1, "releasebitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->releaseAllBitmapSet()V

    .line 307
    sget-object v0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$13;->$SwitchMap$com$lenovo$scg$gallery3d$puzzle$mosaic$PhotoMosaic$MosaicMode:[I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mCurrentMosaicMode:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 333
    :goto_0
    sput-boolean v2, Lcom/lenovo/scg/photos/AlbumActivity;->isAddOrDelete:Z

    .line 351
    :goto_1
    :pswitch_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 352
    return-void

    .line 312
    :pswitch_1
    new-instance v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mSelectImages:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/TemplateMosaic;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    .line 313
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->setmPuzzleModifyListener(Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$PuzzleModifyListener;)V

    .line 314
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 317
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomTabLine:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 318
    new-instance v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mSelectImages:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/FreedomMosaic;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    .line 320
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->setmPuzzleModifyListener(Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$PuzzleModifyListener;)V

    .line 321
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 326
    :pswitch_3
    new-instance v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mSelectImages:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/JointMosaic;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    .line 327
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mPhotoMosaic:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic;->setmPuzzleModifyListener(Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$PuzzleModifyListener;)V

    .line 328
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 335
    :cond_1
    const-string v0, "lnliu"

    const-string/jumbo v1, "not releasebitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    sget-object v0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$13;->$SwitchMap$com$lenovo$scg$gallery3d$puzzle$mosaic$PhotoMosaic$MosaicMode:[I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mCurrentMosaicMode:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 336
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
