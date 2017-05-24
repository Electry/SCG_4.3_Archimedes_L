.class public Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;
.super Landroid/app/Activity;
.source "SpecialEffectsActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$MainHandler;
    }
.end annotation


# static fields
.field private static EFFECT_EFFECTS_TAG:Ljava/lang/String; = null

.field private static final EXIT:I = 0x3

.field private static LENS_EFFECTS_TAG:Ljava/lang/String; = null

.field private static MAGIC_EFFECTS_TAG:Ljava/lang/String; = null

.field private static final PHOTO_PATH:Ljava/lang/String; = "PHOTO_PATH"

.field private static final ROTATE_SECOND_EFFECTS_VIEWS:I = 0x2

.field private static final SCROLL_VIEW:I = 0x1

.field private static final SHOW_DIALOG:I = 0x4


# instance fields
.field callback:Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;

.field private effectEffects:Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;

.field private lensEffects:Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;

.field private mAllButtons:Landroid/widget/RelativeLayout;

.field private mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

.field private mArrowImageView:Landroid/widget/ImageView;

.field private mBitmapHeight:F

.field private mBitmapWidth:F

.field private mCancelView:Landroid/widget/ImageView;

.field private mCurrentBitmap:Landroid/graphics/Bitmap;

.field private mCurrentEffectName:Ljava/lang/String;

.field private mCurrentEffectsKind:Ljava/lang/String;

.field private mCurrentRotateDegree:I

.field private mCurrentSpecialKindButton:Landroid/widget/ImageView;

.field private mCurrentSpecialKindButtons:Landroid/widget/RelativeLayout;

.field private mCurrentSpecialKindText:Landroid/widget/TextView;

.field private mDragView:Landroid/widget/ImageView;

.field private mEffectEffectsText:Landroid/widget/TextView;

.field private mEffectEffectsView:Landroid/widget/ImageView;

.field private mEffectEffectsViews:Landroid/widget/LinearLayout;

.field private mEffectsContainer:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

.field private mFilterStackIndex:I

.field private mFirstBitmap:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field private mIsCancel:Z

.field private mIsClicked:Z

.field private mIsDragOut:Z

.field private mIsDraging:Z

.field private mIsNotfinilizePictureFileParam:Z

.field private mIsSeekBar:Z

.field private mIsShowOriginalBitmap:Z

.field private mIsUpdatedCancelOkButtonBg:Z

.field private mLensEffectsText:Landroid/widget/TextView;

.field private mLensEffectsView:Landroid/widget/ImageView;

.field private mLensEffectsViews:Landroid/widget/LinearLayout;

.field mListener:Landroid/view/View$OnClickListener;

.field private mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

.field private mMagicEffectsText:Landroid/widget/TextView;

.field private mMagicEffectsView:Landroid/widget/ImageView;

.field private mMagicEffectsViews:Landroid/widget/LinearLayout;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mNewMatrix:Landroid/graphics/Matrix;

.field private mOkView:Landroid/widget/ImageView;

.field private mOriginalText:Landroid/widget/TextView;

.field private mOriginalView:Landroid/widget/ImageView;

.field private mPreviousSourceView:Landroid/widget/ImageView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRegulateEffectSeekBar:Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;

.field private mRotateView:Landroid/widget/ImageView;

.field private mScale:F

.field private mScaledBitmap:Landroid/graphics/Bitmap;

.field private mScaledNotCutBitmap:Landroid/graphics/Bitmap;

.field private mScreenWidth:F

.field private mSecondEffectsContainer:Landroid/widget/LinearLayout;

.field private mSecondEffectsViews:Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;

.field private mSourceBitmap:Landroid/graphics/Bitmap;

.field private mSourceView:Landroid/widget/ImageView;

.field private mSoureViewHeight:F

.field private mSpecialKindButtons:Landroid/widget/RelativeLayout;

.field private mTouchX:I

.field private mTouchY:I

.field private magicEffects:Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;

.field private rotateDegree:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    const-string/jumbo v0, "magic_effects"

    sput-object v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->MAGIC_EFFECTS_TAG:Ljava/lang/String;

    .line 117
    const-string v0, "lens_effects"

    sput-object v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->LENS_EFFECTS_TAG:Ljava/lang/String;

    .line 119
    const-string v0, "effect_effects"

    sput-object v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->EFFECT_EFFECTS_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 131
    new-instance v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$MainHandler;-><init>(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mHandler:Landroid/os/Handler;

    .line 145
    iput v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->rotateDegree:I

    .line 186
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsCancel:Z

    .line 311
    new-instance v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->callback:Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;

    .line 442
    new-instance v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$2;-><init>(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFilterStackIndex:I

    return v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->EFFECT_EFFECTS_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mEffectsContainer:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentRotateDegree:I

    return v0
.end method

.method static synthetic access$1302(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentRotateDegree:I

    return p1
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->effectEffects:Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->MAGIC_EFFECTS_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->magicEffects:Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;

    return-object v0
.end method

.method static synthetic access$1700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->LENS_EFFECTS_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->lensEffects:Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsViews:Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->showExitDialog()V

    return-void
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsClicked:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsClicked:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mOkView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCancelView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->startPhotoPageAcitivity()V

    return-void
.end method

.method static synthetic access$2502(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsCancel:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mMagicEffectsViews:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentSpecialKindButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentSpecialKindText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSpecialKindButtons:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLensEffectsViews:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mEffectEffectsViews:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mRotateView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mNewMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;
    .param p1, "x1"    # Landroid/graphics/Matrix;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mNewMatrix:Landroid/graphics/Matrix;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getScaleValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->rotateDegree:I

    return v0
.end method

.method static synthetic access$3502(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->rotateDegree:I

    return p1
.end method

.method static synthetic access$3600(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScale:F

    return v0
.end method

.method static synthetic access$3700(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mBitmapHeight:F

    return v0
.end method

.method static synthetic access$3800(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScreenWidth:F

    return v0
.end method

.method static synthetic access$3900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSoureViewHeight:F

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mBitmapWidth:F

    return v0
.end method

.method static synthetic access$4100(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mPreviousSourceView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->rotateOriginalView(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentSpecialKindButtons:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->updateSpecialKindButtons()V

    return-void
.end method

.method static synthetic access$4600(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->resetSecondEffectsContainerLayout()V

    return-void
.end method

.method static synthetic access$4700(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mDragView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsDragOut:Z

    return p1
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->updateArrowImageView()V

    return-void
.end method

.method static synthetic access$502(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->initSourceView(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScaledBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$702(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScaledBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mOriginalView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectsKind:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectsKind:Ljava/lang/String;

    return-object p1
.end method

.method private getScale(Landroid/graphics/Bitmap;)F
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 848
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 856
    :cond_0
    :goto_0
    return v0

    .line 849
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mBitmapWidth:F

    .line 850
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mBitmapHeight:F

    .line 851
    iget v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScreenWidth:F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mBitmapWidth:F

    div-float v1, v2, v3

    .line 852
    .local v1, "widthScale":F
    iget v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSoureViewHeight:F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mBitmapHeight:F

    div-float v0, v2, v3

    .line 853
    .local v0, "heightScale":F
    cmpl-float v2, v1, v0

    if-gez v2, :cond_0

    move v0, v1

    .line 856
    goto :goto_0
.end method

.method private getScaleValue()F
    .locals 4

    .prologue
    .line 696
    iget v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSoureViewHeight:F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mBitmapWidth:F

    div-float v0, v2, v3

    .line 697
    .local v0, "scale1":F
    iget v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScreenWidth:F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mBitmapHeight:F

    div-float v1, v2, v3

    .line 698
    .local v1, "scale2":F
    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    .line 701
    .end local v1    # "scale2":F
    :goto_0
    return v1

    .restart local v1    # "scale2":F
    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method private initEffectNames(Ljava/lang/String;)I
    .locals 2
    .param p1, "mEffect"    # Ljava/lang/String;

    .prologue
    .line 1130
    const/4 v0, -0x1

    .line 1131
    .local v0, "effectName":I
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NOSTALGY:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1132
    const/4 v0, 0x0

    .line 1148
    :cond_0
    :goto_0
    return v0

    .line 1133
    :cond_1
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->COLORFILTER:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1134
    const/4 v0, 0x0

    goto :goto_0

    .line 1135
    :cond_2
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->POSTER:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1136
    const/4 v0, 0x0

    goto :goto_0

    .line 1137
    :cond_3
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->COMIC:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1138
    const/4 v0, 0x0

    goto :goto_0

    .line 1139
    :cond_4
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->KALEIDOSCOPE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1140
    const/4 v0, 0x0

    goto :goto_0

    .line 1141
    :cond_5
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->GLASS:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1142
    const/4 v0, 0x0

    goto :goto_0

    .line 1143
    :cond_6
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->PENCIL:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1144
    const/4 v0, 0x0

    goto :goto_0

    .line 1145
    :cond_7
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NEGATIVE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1146
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initSourceView(Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 829
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v1, v4

    .line 830
    .local v1, "bitmapWidth":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v0, v4

    .line 831
    .local v0, "bitmapHeight":F
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090196

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScreenWidth:F

    .line 832
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090195

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSoureViewHeight:F

    .line 834
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceView:Landroid/widget/ImageView;

    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 835
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mMatrix:Landroid/graphics/Matrix;

    .line 836
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getScale(Landroid/graphics/Bitmap;)F

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScale:F

    .line 837
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mMatrix:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScale:F

    iget v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScale:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 838
    iget v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScreenWidth:F

    iget v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScale:F

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    div-float v3, v4, v7

    .line 839
    .local v3, "transWidth":F
    iget v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSoureViewHeight:F

    iget v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScale:F

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    div-float v2, v4, v7

    .line 840
    .local v2, "transHeight":F
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 841
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 842
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mPreviousSourceView:Landroid/widget/ImageView;

    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 843
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mPreviousSourceView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 844
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->invalidate()V

    .line 845
    return-void
.end method

.method private initViews()V
    .locals 4

    .prologue
    .line 261
    const v1, 0x7f10095c

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 262
    const v1, 0x7f10094e

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentSpecialKindButton:Landroid/widget/ImageView;

    .line 263
    const v1, 0x7f100952

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSpecialKindButtons:Landroid/widget/RelativeLayout;

    .line 264
    const v1, 0x7f100956

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mMagicEffectsViews:Landroid/widget/LinearLayout;

    .line 265
    const v1, 0x7f100959

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLensEffectsViews:Landroid/widget/LinearLayout;

    .line 266
    const v1, 0x7f100953

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mEffectEffectsViews:Landroid/widget/LinearLayout;

    .line 267
    const v1, 0x7f10094c

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mEffectsContainer:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

    .line 268
    const v1, 0x7f100947

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mRotateView:Landroid/widget/ImageView;

    .line 269
    const v1, 0x7f100945

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mOriginalView:Landroid/widget/ImageView;

    .line 270
    const v1, 0x7f100946

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mOriginalText:Landroid/widget/TextView;

    .line 271
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mOriginalText:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 272
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mOriginalText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    :cond_0
    const v1, 0x7f10094b

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsContainer:Landroid/widget/LinearLayout;

    .line 276
    const v1, 0x7f10094f

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentSpecialKindText:Landroid/widget/TextView;

    .line 277
    const v1, 0x7f10094d

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentSpecialKindButtons:Landroid/widget/RelativeLayout;

    .line 278
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentSpecialKindText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentSpecialKindText:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 281
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 282
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 283
    .local v0, "scaleVal":F
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentSpecialKindText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentSpecialKindText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    div-float/2addr v2, v0

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 287
    .end local v0    # "scaleVal":F
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentSpecialKindButtons:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mMagicEffectsViews:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLensEffectsViews:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mEffectEffectsViews:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mRotateView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    const v1, 0x7f100944

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mAllButtons:Landroid/widget/RelativeLayout;

    .line 295
    const v1, 0x7f100954

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mEffectEffectsView:Landroid/widget/ImageView;

    .line 296
    const v1, 0x7f100957

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mMagicEffectsView:Landroid/widget/ImageView;

    .line 297
    const v1, 0x7f10095a

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLensEffectsView:Landroid/widget/ImageView;

    .line 299
    const v1, 0x7f100955

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mEffectEffectsText:Landroid/widget/TextView;

    .line 300
    const v1, 0x7f100958

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mMagicEffectsText:Landroid/widget/TextView;

    .line 301
    const v1, 0x7f10095b

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLensEffectsText:Landroid/widget/TextView;

    .line 302
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mEffectEffectsText:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 303
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mMagicEffectsText:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 304
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLensEffectsText:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 306
    const v1, 0x7f100950

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mArrowImageView:Landroid/widget/ImageView;

    .line 309
    return-void
.end method

.method private resetEffectsKindViewDrawable()V
    .locals 4

    .prologue
    const v3, 0x7f0207e9

    .line 1086
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mEffectEffectsView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020623

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1087
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mEffectEffectsText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1089
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mMagicEffectsView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020627

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1090
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mMagicEffectsText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1092
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLensEffectsView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020625

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1093
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLensEffectsText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1094
    return-void
.end method

.method private resetSecondEffectsContainerLayout()V
    .locals 4

    .prologue
    .line 803
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mEffectsContainer:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;->getHeight()I

    move-result v0

    .line 804
    .local v0, "effectsContainerHeight":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 806
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x0

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 807
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 809
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 810
    .local v2, "secondEffectContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 811
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 812
    return-void
.end method

.method private rotateOriginalView(I)V
    .locals 5
    .param p1, "rotateDegree"    # I

    .prologue
    .line 1097
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1098
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mOriginalView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 1099
    .local v1, "scale":F
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mNewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1100
    iget v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentRotateDegree:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mOriginalView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mOriginalView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1101
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mOriginalView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1102
    return-void
.end method

.method private showExitDialog()V
    .locals 4

    .prologue
    .line 1105
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1106
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0f0854

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1107
    const v2, 0x7f0f0a14

    new-instance v3, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$4;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$4;-><init>(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1114
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1115
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1116
    .local v1, "mAlertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1117
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/app/AlertDialog;)V

    .line 1118
    return-void
.end method

.method private showOriginalImageIsDeletedDialog()V
    .locals 4

    .prologue
    .line 1152
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1153
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0f0855

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1154
    const v2, 0x7f0f0a14

    new-instance v3, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$5;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$5;-><init>(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1162
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1163
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1164
    .local v1, "mAlertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1165
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/app/AlertDialog;)V

    .line 1166
    return-void
.end method

.method private startPhotoPageAcitivity()V
    .locals 7

    .prologue
    .line 610
    new-instance v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectCommand;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectCommand;-><init>()V

    .line 612
    .local v0, "command":Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectCommand;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 613
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentBitmap:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceBitmap:Landroid/graphics/Bitmap;

    .line 615
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    if-eq v5, v6, :cond_2

    .line 616
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iget v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFilterStackIndex:I

    invoke-interface {v5, v6}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getFilterStack(I)Lcom/lenovo/scg/gallery3d/edit/FilterStack;

    move-result-object v3

    .line 617
    .local v3, "mFilterStack":Lcom/lenovo/scg/gallery3d/edit/FilterStack;
    if-eqz v3, :cond_1

    .line 618
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v0, v5}, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->addCommand(Lcom/lenovo/scg/gallery3d/edit/Command;Landroid/graphics/Bitmap;)V

    .line 627
    .end local v3    # "mFilterStack":Lcom/lenovo/scg/gallery3d/edit/FilterStack;
    :cond_1
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    check-cast v5, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;

    iget-object v4, v5, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mCurrentImagePath:Ljava/lang/String;

    .line 628
    .local v4, "mOriginalBitmapPath":Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 629
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 630
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 631
    const/4 v5, -0x1

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v5, v6}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->finish()V

    .line 647
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "mOriginalBitmapPath":Ljava/lang/String;
    :goto_2
    return-void

    .line 622
    :cond_2
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iget v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFilterStackIndex:I

    invoke-interface {v5, v6}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getFilterStack(I)Lcom/lenovo/scg/gallery3d/edit/FilterStack;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->addCommand(Lcom/lenovo/scg/gallery3d/edit/Command;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 634
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "mOriginalBitmapPath":Ljava/lang/String;
    :cond_3
    if-eqz v4, :cond_4

    :try_start_1
    const-string v5, "content"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 635
    const/4 v5, -0x1

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v5, v6}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 641
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "mOriginalBitmapPath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 642
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->showOriginalImageIsDeletedDialog()V

    .line 643
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 637
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "mOriginalBitmapPath":Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->showOriginalImageIsDeletedDialog()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method private updateArrowImageView()V
    .locals 3

    .prologue
    .line 599
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSpecialKindButtons:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mArrowImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSpecialKindButtons:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02061d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 603
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02061e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateSecondViewsContainerParams()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 909
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090197

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 910
    .local v3, "secondEffectsContainerHeight":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090198

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    .line 911
    .local v1, "marginTop":I
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsSeekBar:Z

    if-eqz v4, :cond_1

    .line 912
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020950

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 916
    :goto_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 917
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsDragOut:Z

    if-eqz v4, :cond_2

    .line 918
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v4, v3

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mEffectsContainer:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v7, v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 922
    :goto_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 923
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsDragOut:Z

    if-eqz v4, :cond_0

    .line 924
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 925
    .local v0, "dragViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 926
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 928
    .end local v0    # "dragViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 914
    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02094f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 920
    .restart local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    invoke-virtual {v2, v7, v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1
.end method

.method private updateSpecialKindButtons()V
    .locals 4

    .prologue
    const v3, 0x7f02062b

    .line 1071
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectsKind:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1083
    :cond_0
    :goto_0
    return-void

    .line 1072
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->resetEffectsKindViewDrawable()V

    .line 1073
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectsKind:Ljava/lang/String;

    sget-object v1, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->EFFECT_EFFECTS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1074
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mEffectEffectsView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020624

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1075
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mEffectEffectsText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1076
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectsKind:Ljava/lang/String;

    sget-object v1, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->MAGIC_EFFECTS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1077
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mMagicEffectsView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020628

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1078
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mMagicEffectsText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1079
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectsKind:Ljava/lang/String;

    sget-object v1, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->LENS_EFFECTS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLensEffectsView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020626

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1081
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLensEffectsText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method


# virtual methods
.method public addSecondSpecialEffectsViews(Ljava/lang/String;)V
    .locals 9
    .param p1, "effect"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 872
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->initEffectNames(Ljava/lang/String;)I

    move-result v7

    .line 873
    .local v7, "currentEffectValue":I
    if-ne v7, v3, :cond_0

    .line 906
    :goto_0
    return-void

    .line 874
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->updateSecondViewsContainerParams()V

    .line 876
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, v4}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->initializePictureFileParam(Ljava/lang/String;III)V

    .line 877
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NEGATIVE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->PENCIL:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 878
    :cond_1
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->NEGATIVE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 879
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v0, v4, v5, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    .line 888
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 889
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v6}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 890
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->finilizePictureFileParam()V

    .line 895
    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->updateBitmapView(Landroid/graphics/Bitmap;)V

    .line 896
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->KALEIDOSCOPE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 897
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScaledNotCutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScaledNotCutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, v4}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->initializePictureFileParam(Ljava/lang/String;III)V

    .line 898
    new-instance v0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScaledNotCutBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsViews:Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;

    .line 904
    :goto_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    .line 905
    .local v8, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 881
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "msg":Landroid/os/Message;
    :cond_3
    sget-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->PENCIL:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 882
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v0, v4, v7, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    .line 883
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    const/16 v1, 0x75

    invoke-virtual {v0, v5, v1, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    goto :goto_1

    .line 886
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v0, v7, v3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileModeParam(II)V

    goto :goto_1

    .line 900
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, v4}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->initializePictureFileParam(Ljava/lang/String;III)V

    .line 901
    new-instance v0, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScaledBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsViews:Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;

    goto :goto_2
.end method

.method public changeEffectBitmap(II)V
    .locals 5
    .param p1, "number"    # I
    .param p2, "progress"    # I

    .prologue
    const/4 v4, -0x1

    .line 1007
    if-nez p2, :cond_0

    .line 1008
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->updateBitmapView(Landroid/graphics/Bitmap;)V

    .line 1020
    :goto_0
    return-void

    .line 1010
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v1, p1, p2, v4}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    .line 1011
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectName:Ljava/lang/String;

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->SELECTCOLOR:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1012
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    const/4 v2, 0x0

    const/16 v3, 0x5a

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    .line 1016
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1017
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->applyLiveEffectToPictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 1018
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->updateBitmapView(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1013
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectName:Ljava/lang/String;

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->SOLARIZE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1014
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    rsub-int/lit8 v2, p2, 0x73

    add-int/lit16 v2, v2, 0x8c

    invoke-virtual {v1, p1, v2, v4}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileValueParam(III)V

    goto :goto_1
.end method

.method public getLiveEffectManager()Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    return-object v0
.end method

.method public getNotCutScaledBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 1062
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScaledNotCutBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 1063
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090192

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 1064
    .local v1, "mScaledWidth":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090193

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 1065
    .local v0, "mScaledHeight":I
    new-instance v2, Lcom/lenovo/scg/gallery3d/edit/EditUtils;

    invoke-direct {v2}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;-><init>()V

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->createScaleBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScaledNotCutBitmap:Landroid/graphics/Bitmap;

    .line 1067
    .end local v0    # "mScaledHeight":I
    .end local v1    # "mScaledWidth":I
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScaledNotCutBitmap:Landroid/graphics/Bitmap;

    return-object v2
.end method

.method public getScaledBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScaledBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSourceBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public hideDragView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1057
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1058
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1059
    return-void
.end method

.method public hideProgressBar()V
    .locals 2

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1028
    return-void
.end method

.method public initEffects()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 650
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectsKind:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 681
    :goto_0
    return-void

    .line 651
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->magicEffects:Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;

    if-eqz v1, :cond_1

    .line 652
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->magicEffects:Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->recycleBitmaps()V

    .line 654
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->lensEffects:Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;

    if-eqz v1, :cond_2

    .line 655
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->lensEffects:Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->recycleBitmaps()V

    .line 657
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->effectEffects:Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;

    if-eqz v1, :cond_3

    .line 658
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->effectEffects:Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->recycleBitmaps()V

    .line 660
    :cond_3
    sget-object v1, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->MAGIC_EFFECTS_TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectsKind:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 661
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mEffectsContainer:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;->removeAllViews()V

    .line 662
    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->lensEffects:Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;

    .line 663
    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->effectEffects:Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;

    .line 664
    new-instance v1, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mEffectsContainer:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->magicEffects:Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;

    .line 665
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->magicEffects:Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;->setSpecialEffectsActivity(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)V

    .line 679
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 680
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 666
    .end local v0    # "msg":Landroid/os/Message;
    :cond_5
    sget-object v1, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->LENS_EFFECTS_TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectsKind:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 667
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mEffectsContainer:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;->removeAllViews()V

    .line 668
    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->magicEffects:Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;

    .line 669
    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->effectEffects:Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;

    .line 670
    new-instance v1, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mEffectsContainer:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->lensEffects:Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;

    .line 671
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->lensEffects:Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;->setSpecialEffectsActivity(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)V

    goto :goto_1

    .line 672
    :cond_6
    sget-object v1, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->EFFECT_EFFECTS_TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectsKind:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 673
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mEffectsContainer:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;->removeAllViews()V

    .line 674
    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->lensEffects:Lcom/lenovo/scg/gallery3d/specialEffects/LensEffects;

    .line 675
    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->magicEffects:Lcom/lenovo/scg/gallery3d/specialEffects/MagicEffects;

    .line 676
    new-instance v1, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mEffectsContainer:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->effectEffects:Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;

    .line 677
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->effectEffects:Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/gallery3d/specialEffects/ColorEffects;->setSpecialEffectsActivity(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 818
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCancelView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 819
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsCancel:Z

    .line 820
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->setResult(ILandroid/content/Intent;)V

    .line 825
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->finish()V

    .line 826
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x400

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 192
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 193
    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->requestWindowFeature(I)Z

    .line 194
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 195
    const v5, 0x7f040186

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->setContentView(I)V

    .line 197
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 199
    new-instance v5, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-direct {v5, p0, v9}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;-><init>(Landroid/content/Context;Z)V

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    .line 201
    const v5, 0x7f100948

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mOkView:Landroid/widget/ImageView;

    .line 202
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mOkView:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 203
    const v5, 0x7f1002ce

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCancelView:Landroid/widget/ImageView;

    .line 204
    const v5, 0x7f10094a

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceView:Landroid/widget/ImageView;

    .line 205
    const v5, 0x7f100949

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mPreviousSourceView:Landroid/widget/ImageView;

    .line 206
    const v5, 0x7f100951

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mDragView:Landroid/widget/ImageView;

    .line 207
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mDragView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mOkView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCancelView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    sget-object v6, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->FILTERSTACKINDEX:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFilterStackIndex:I

    .line 215
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iget v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFilterStackIndex:I

    invoke-interface {v5, v6}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getCurrentBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceBitmap:Landroid/graphics/Bitmap;

    .line 216
    const-string v5, "jiaxiaowei"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSourceBitmap:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_1

    .line 220
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->initViews()V

    .line 221
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "PHOTO_PATH"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "path":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->callback:Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;

    invoke-static {p0, v5, v3, v6}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->openPhoto(Landroid/app/Activity;Landroid/widget/ProgressBar;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;)Z

    move-result v4

    .line 229
    .local v4, "success":Z
    if-nez v4, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "success":Z
    :cond_0
    :goto_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v5

    const-string v6, "category_effect"

    const-string v7, "action_effect_oncreate"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 258
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->showExitDialog()V

    goto :goto_0

    .line 239
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->initViews()V

    .line 240
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceBitmap:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    .line 241
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090192

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    .line 242
    .local v2, "mScaledWidth":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090193

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .line 243
    .local v1, "mScaledHeight":I
    new-instance v5, Lcom/lenovo/scg/gallery3d/edit/EditUtils;

    invoke-direct {v5}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;-><init>()V

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6, v2, v1, v8}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->createScaleBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScaledBitmap:Landroid/graphics/Bitmap;

    .line 244
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectsKind:Ljava/lang/String;

    if-eqz v5, :cond_2

    const-string v5, ""

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectsKind:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 245
    :cond_2
    sget-object v5, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->EFFECT_EFFECTS_TAG:Ljava/lang/String;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectsKind:Ljava/lang/String;

    .line 247
    :cond_3
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mOriginalView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 248
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->initSourceView(Landroid/graphics/Bitmap;)V

    .line 249
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->initEffects()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 394
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    if-eqz v0, :cond_1

    .line 395
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsNotfinilizePictureFileParam:Z

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->finilizePictureFileParam()V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->clear()V

    .line 399
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScaledBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 403
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 404
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScaledBitmap:Landroid/graphics/Bitmap;

    .line 406
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScaledNotCutBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScaledNotCutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 407
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScaledNotCutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 408
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mScaledNotCutBitmap:Landroid/graphics/Bitmap;

    .line 412
    :cond_3
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsCancel:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 413
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 414
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 415
    const-string/jumbo v0, "wwf11"

    const-string v1, "mCurrentBitmap.recycle();"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_4
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 420
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 425
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 426
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 431
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 432
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 437
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 438
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 711
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 799
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    return v12

    .line 713
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mTouchX:I

    .line 714
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mTouchY:I

    .line 715
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 718
    .local v9, "rect":Landroid/graphics/Rect;
    const/4 v12, 0x2

    new-array v5, v12, [I

    .line 719
    .local v5, "location":[I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mOriginalText:Landroid/widget/TextView;

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 720
    new-instance v9, Landroid/graphics/Rect;

    .end local v9    # "rect":Landroid/graphics/Rect;
    const/4 v12, 0x0

    aget v12, v5, v12

    const/4 v13, 0x1

    aget v13, v5, v13

    const/4 v14, 0x0

    aget v14, v5, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mOriginalText:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getWidth()I

    move-result v15

    add-int/2addr v14, v15

    const/4 v15, 0x1

    aget v15, v5, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mOriginalText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getHeight()I

    move-result v16

    add-int v15, v15, v16

    invoke-direct {v9, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 722
    .restart local v9    # "rect":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 723
    .local v3, "dragViewRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v12, v3}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 724
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mTouchX:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mTouchY:I

    invoke-virtual {v9, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 725
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsShowOriginalBitmap:Z

    .line 726
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mOriginalText:Landroid/widget/TextView;

    const v13, 0x7f020787

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 727
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 728
    :cond_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mTouchX:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mTouchY:I

    invoke-virtual {v3, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getVisibility()I

    move-result v12

    if-nez v12, :cond_0

    .line 729
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsDraging:Z

    .line 730
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_2

    .line 731
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsContainer:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 732
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mDragView:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f02094a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 733
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mDragView:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f02094c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 738
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsDragOut:Z

    if-nez v12, :cond_3

    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsDragOut:Z

    .line 739
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSpecialKindButtons:Landroid/widget/RelativeLayout;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 741
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->updateArrowImageView()V

    goto/16 :goto_0

    .line 735
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mDragView:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f02094a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 736
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mDragView:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f02094b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 738
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 746
    .end local v3    # "dragViewRect":Landroid/graphics/Rect;
    .end local v5    # "location":[I
    .end local v9    # "rect":Landroid/graphics/Rect;
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsDraging:Z

    if-eqz v12, :cond_0

    .line 747
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    float-to-int v2, v12

    .line 748
    .local v2, "currentY":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mTouchY:I

    sub-int v7, v2, v12

    .line 749
    .local v7, "moveY":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 750
    .local v8, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090197

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v6, v12

    .line 751
    .local v6, "maxHeight":I
    iget v12, v8, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int v1, v12, v7

    .line 752
    .local v1, "bottomMargin":I
    if-ltz v1, :cond_4

    if-gt v1, v6, :cond_4

    .line 753
    iput v1, v8, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 754
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v12, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 755
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 756
    .local v10, "secondEffectContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v12, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int v11, v12, v7

    .line 757
    .local v11, "topMargin":I
    iput v11, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 758
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 760
    .end local v10    # "secondEffectContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v11    # "topMargin":I
    :cond_4
    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mTouchY:I

    goto/16 :goto_0

    .line 764
    .end local v1    # "bottomMargin":I
    .end local v2    # "currentY":I
    .end local v6    # "maxHeight":I
    .end local v7    # "moveY":I
    .end local v8    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsShowOriginalBitmap:Z

    if-eqz v12, :cond_6

    .line 765
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsShowOriginalBitmap:Z

    .line 766
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-nez v12, :cond_5

    .line 767
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 769
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mOriginalText:Landroid/widget/TextView;

    const v13, 0x7f020786

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 770
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 772
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsDraging:Z

    if-eqz v12, :cond_0

    .line 773
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsDraging:Z

    .line 774
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mDragView:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020949

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 775
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mEffectsContainer:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;->getHeight()I

    move-result v4

    .line 776
    .local v4, "effectsContainerHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090197

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v6, v12

    .line 777
    .restart local v6    # "maxHeight":I
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsDragOut:Z

    if-eqz v12, :cond_8

    .line 778
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 779
    .restart local v8    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v6, v8, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 780
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v12, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 782
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 783
    .restart local v10    # "secondEffectContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v12, v6

    sub-int/2addr v12, v4

    iput v12, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 784
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 785
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsViews:Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;

    if-eqz v12, :cond_7

    .line 786
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsViews:Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->rotateDegree:I

    invoke-virtual {v12, v13}, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->rotateBitmaps(I)V

    .line 788
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mDragView:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020949

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 789
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mDragView:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f02094b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 791
    .end local v8    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v10    # "secondEffectContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->resetSecondEffectsContainerLayout()V

    .line 792
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsContainer:Landroid/widget/LinearLayout;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 793
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mDragView:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020949

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 794
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mDragView:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f02094d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 711
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeAllSecondEffects()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1031
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsSeekBar:Z

    if-eqz v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->finilizePictureFileParam()V

    .line 1033
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsNotfinilizePictureFileParam:Z

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsViews:Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;

    if-eqz v0, :cond_1

    .line 1036
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsViews:Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;->recycleBitmaps()V

    .line 1038
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1039
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsViews:Lcom/lenovo/scg/gallery3d/specialEffects/SecondSpecialEffectsViews;

    .line 1041
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSpecialKindButtons:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1042
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsSeekBar:Z

    .line 1045
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->updateArrowImageView()V

    .line 1047
    return-void
.end method

.method public setCurrentEffectName(Ljava/lang/String;)V
    .locals 9
    .param p1, "currentEffectName"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x73

    const/4 v7, 0x1

    const/16 v6, 0x80

    const/16 v5, 0x100

    const/4 v4, 0x0

    .line 970
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectName:Ljava/lang/String;

    .line 971
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1004
    :cond_0
    :goto_0
    return-void

    .line 974
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->showDragView()V

    .line 975
    iput-boolean v7, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsSeekBar:Z

    .line 976
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->updateSecondViewsContainerParams()V

    .line 978
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectName:Ljava/lang/String;

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->FISHEYE1:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 979
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectName:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->initializePictureFileParam(Ljava/lang/String;III)V

    .line 980
    new-instance v0, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x3e8

    const/16 v3, 0x1f4

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mRegulateEffectSeekBar:Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;

    .line 1003
    :cond_2
    :goto_1
    iput-boolean v7, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsNotfinilizePictureFileParam:Z

    goto :goto_0

    .line 981
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectName:Ljava/lang/String;

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->LIGHTEN:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 982
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectName:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->initializePictureFileParam(Ljava/lang/String;III)V

    .line 983
    new-instance v0, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsContainer:Landroid/widget/LinearLayout;

    invoke-direct {v0, p0, v1, v5, v6}, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mRegulateEffectSeekBar:Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;

    goto :goto_1

    .line 984
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectName:Ljava/lang/String;

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->VIVID:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 985
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectName:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->initializePictureFileParam(Ljava/lang/String;III)V

    .line 986
    new-instance v0, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x200

    invoke-direct {v0, p0, v1, v2, v5}, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mRegulateEffectSeekBar:Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;

    goto :goto_1

    .line 987
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectName:Ljava/lang/String;

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->BACKLIGHT:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 988
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectName:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->initializePictureFileParam(Ljava/lang/String;III)V

    .line 989
    new-instance v0, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsContainer:Landroid/widget/LinearLayout;

    invoke-direct {v0, p0, v1, v5, v6}, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mRegulateEffectSeekBar:Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;

    goto/16 :goto_1

    .line 990
    :cond_6
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectName:Ljava/lang/String;

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->BAKE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 991
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectName:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->initializePictureFileParam(Ljava/lang/String;III)V

    .line 992
    new-instance v0, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x64

    const/16 v3, 0x32

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mRegulateEffectSeekBar:Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;

    goto/16 :goto_1

    .line 993
    :cond_7
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectName:Ljava/lang/String;

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->SOLARIZE:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 994
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectName:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->initializePictureFileParam(Ljava/lang/String;III)V

    .line 995
    new-instance v0, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsContainer:Landroid/widget/LinearLayout;

    invoke-direct {v0, p0, v1, v8, v8}, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mRegulateEffectSeekBar:Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;

    goto/16 :goto_1

    .line 996
    :cond_8
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectName:Ljava/lang/String;

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->PINFOCUS:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 997
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectName:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->initializePictureFileParam(Ljava/lang/String;III)V

    .line 998
    new-instance v0, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsContainer:Landroid/widget/LinearLayout;

    invoke-direct {v0, p0, v1, v5, v6}, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mRegulateEffectSeekBar:Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;

    goto/16 :goto_1

    .line 999
    :cond_9
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectName:Ljava/lang/String;

    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->DEFOCUS:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1000
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mLiveEffectManager:Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentEffectName:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->initializePictureFileParam(Ljava/lang/String;III)V

    .line 1001
    new-instance v0, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsContainer:Landroid/widget/LinearLayout;

    invoke-direct {v0, p0, v1, v5, v6}, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mRegulateEffectSeekBar:Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;

    goto/16 :goto_1
.end method

.method public showDragView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1050
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1051
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsDragOut:Z

    if-eqz v0, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSecondEffectsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1054
    :cond_0
    return-void
.end method

.method public showProgressBar()V
    .locals 2

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1024
    return-void
.end method

.method public startSpecialBitmapShowAnim(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 931
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 932
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 933
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 934
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 935
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 936
    new-instance v1, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$3;-><init>(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 966
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mSourceView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 967
    return-void
.end method

.method public updateBitmapView(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 687
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->startSpecialBitmapShowAnim(Landroid/graphics/Bitmap;)V

    .line 688
    return-void
.end method

.method public updateCancelOkButtonBg()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1121
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsUpdatedCancelOkButtonBg:Z

    if-nez v0, :cond_0

    .line 1122
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mIsUpdatedCancelOkButtonBg:Z

    .line 1123
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mOkView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1124
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mCancelView:Landroid/widget/ImageView;

    const v1, 0x7f02060c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1125
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mOkView:Landroid/widget/ImageView;

    const v1, 0x7f02061b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1127
    :cond_0
    return-void
.end method
