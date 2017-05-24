.class public Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;
.super Landroid/app/Activity;
.source "BackgroundBlurEffectActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;
    }
.end annotation


# static fields
.field private static final DRAG:I = 0x1

.field private static final EXIT:I = 0x3

.field private static final IMAGE_SIZE:I = 0x280

.field private static final MASK_DELAY_TIME:I = 0x0

.field private static final MASK_DELAY_TIME_SHORT:I = 0x0

.field private static final NONE:I = 0x0

.field private static final SHOW_DIALOG:I = 0x4

.field private static final TAG:Ljava/lang/String; = "GlobalBlurEffect"

.field private static final UPDATE_UI:I = 0x0

.field private static final ZOOM:I = 0x2


# instance fields
.field private clearPaint:Landroid/graphics/Paint;

.field creatScallBmpCallback:Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;

.field private grayPaint:Landroid/graphics/Paint;

.field private mAngle:D

.field private mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

.field private mBlurBitmap:Landroid/graphics/Bitmap;

.field private mBlurType:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;

.field private mCircleTextView:Landroid/widget/TextView;

.field private mCircleView:Landroid/widget/ImageView;

.field private mControlLayout:Landroid/widget/RelativeLayout;

.field private mFilterStackIndex:I

.field private mGroundImageView:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mImageCancel:Landroid/widget/ImageView;

.field private mImageSave:Landroid/widget/ImageView;

.field public mInitMapHeight:I

.field public mInitMapWidth:I

.field private mLastEventPosition:Landroid/graphics/PointF;

.field private mLineTextView:Landroid/widget/TextView;

.field private mLineView:Landroid/widget/ImageView;

.field private mMaskBitmap:Landroid/graphics/Bitmap;

.field private mMaskImageView:Landroid/widget/ImageView;

.field private mMax:I

.field private mMin:I

.field private mMode:I

.field private mOldDist:F

.field private mOriginBitmap:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaint2:Landroid/graphics/Paint;

.field private mScale:F

.field private mSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

.field private mSolidRadius:I

.field private mSystemHeight:I

.field private mSystemWidth:I

.field private mTextColorHi:I

.field private mTextColorNormal:I

.field private mTiltViewHeight:I

.field private mTiltViewWidth:I

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private mTwoFingerAngle:D

.field private mTypeCircle:Landroid/widget/LinearLayout;

.field private mTypeLine:Landroid/widget/LinearLayout;

.field private mUnfoldView:Landroid/widget/ImageView;

.field public mViewStartLeft:I

.field public mViewStartTop:I

.field private mWidth:I

.field private mX:I

.field private mY:I

.field private mfoldView:Landroid/widget/ImageView;

.field private skipOneFrame:Z

.field private whitePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x438

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mOriginBitmap:Landroid/graphics/Bitmap;

    .line 88
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 90
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 102
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTwoFingerAngle:D

    .line 103
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mAngle:D

    .line 108
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mLastEventPosition:Landroid/graphics/PointF;

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mOldDist:F

    .line 112
    sget-object v0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;->ByCircle:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mBlurType:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;

    .line 120
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->skipOneFrame:Z

    .line 123
    iput v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMode:I

    .line 137
    iput v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mInitMapWidth:I

    .line 138
    iput v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mInitMapHeight:I

    .line 139
    iput v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTiltViewWidth:I

    .line 140
    const/16 v0, 0x5a0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTiltViewHeight:I

    .line 142
    iput v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSystemWidth:I

    .line 143
    const/16 v0, 0x444

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSystemHeight:I

    .line 144
    iput v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mViewStartLeft:I

    .line 145
    iput v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mViewStartTop:I

    .line 151
    new-instance v0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHandler:Landroid/os/Handler;

    .line 310
    new-instance v0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$3;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->creatScallBmpCallback:Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->updateBitmap()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->showExitDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mBlurType:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->changeBlurType(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->changeCircleIcon()V

    return-void
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->changeLineIcon()V

    return-void
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->exitTiltShift()V

    return-void
.end method

.method static synthetic access$1502(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSolidRadius:I

    return p1
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    .prologue
    .line 63
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMin:I

    return v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    .prologue
    .line 63
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMax:I

    return v0
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;III)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->getValueFromDegree(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->updateMask()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMode:I

    return p1
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mUnfoldView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mControlLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->showTopBar()V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)Ljava/util/TimerTask;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTimerTask:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    .prologue
    .line 63
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mFilterStackIndex:I

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mOriginBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$702(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mOriginBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->updateImageView1(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->save()V

    return-void
.end method

.method private changeBlurType(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;)V
    .locals 1
    .param p1, "blurType"    # Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;

    .prologue
    .line 799
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 803
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 805
    :cond_1
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mBlurType:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;

    .line 807
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->updateMask()V

    .line 808
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->updateBitmapDelay(Z)V

    .line 809
    return-void
.end method

.method private changeCircleIcon()V
    .locals 3

    .prologue
    .line 981
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mLineView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02097a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 982
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mLineTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTextColorNormal:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 983
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mCircleView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020973

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 984
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mCircleTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTextColorHi:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 985
    return-void
.end method

.method private changeLineIcon()V
    .locals 3

    .prologue
    .line 988
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mCircleView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020972

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 989
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mCircleTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTextColorNormal:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 990
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mLineView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02097b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 991
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mLineTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTextColorHi:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 992
    return-void
.end method

.method private drawLine(Landroid/graphics/Canvas;FFFF)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cos"    # F
    .param p3, "sin"    # F
    .param p4, "c"    # F
    .param p5, "d"    # F

    .prologue
    .line 691
    add-float/2addr p4, p5

    .line 693
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v6, v0

    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v6, v8

    if-gez v0, :cond_0

    .line 694
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mX:I

    int-to-float v0, v0

    sub-float v1, v0, p5

    .line 695
    .local v1, "x0":F
    const/4 v2, 0x0

    .line 697
    .local v2, "y0":F
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mX:I

    int-to-float v0, v0

    sub-float v3, v0, p5

    .line 698
    .local v3, "x1":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    .line 707
    .local v4, "y1":F
    :goto_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 708
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mPaint2:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 709
    return-void

    .line 700
    .end local v1    # "x0":F
    .end local v2    # "y0":F
    .end local v3    # "x1":F
    .end local v4    # "y1":F
    :cond_0
    const/4 v1, 0x0

    .line 701
    .restart local v1    # "x0":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    .line 703
    .restart local v3    # "x1":F
    div-float v2, p4, p2

    .line 704
    .restart local v2    # "y0":F
    mul-float v0, v3, p3

    add-float/2addr v0, p4

    div-float v4, v0, p2

    .restart local v4    # "y1":F
    goto :goto_0
.end method

.method private drawRect(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cos"    # F
    .param p3, "sin"    # F
    .param p4, "c"    # F
    .param p5, "d"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 713
    add-float v2, p4, p5

    .line 714
    .local v2, "c1":F
    sub-float v3, p4, p5

    .line 715
    .local v3, "c2":F
    const/4 v7, 0x0

    .local v7, "x2":F
    const/4 v11, 0x0

    .local v11, "y2":F
    const/4 v8, 0x0

    .local v8, "x3":F
    const/4 v12, 0x0

    .line 716
    .local v12, "y3":F
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v14, v13

    const-wide v16, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v13, v14, v16

    if-gez v13, :cond_0

    .line 717
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mX:I

    int-to-float v13, v13

    sub-float v5, v13, p5

    .line 718
    .local v5, "x0":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mX:I

    int-to-float v13, v13

    add-float v6, v13, p5

    .line 719
    .local v6, "x1":F
    const/4 v9, 0x0

    .line 720
    .local v9, "y0":F
    const/4 v10, 0x0

    .line 722
    .local v10, "y1":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mX:I

    int-to-float v13, v13

    add-float v7, v13, p5

    .line 723
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mX:I

    int-to-float v13, v13

    sub-float v8, v13, p5

    .line 724
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v13

    int-to-float v11, v13

    .line 725
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v13

    int-to-float v12, v13

    .line 737
    :goto_0
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 738
    .local v4, "mPath":Landroid/graphics/Path;
    invoke-virtual {v4, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 739
    invoke-virtual {v4, v6, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 740
    invoke-virtual {v4, v7, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 741
    invoke-virtual {v4, v8, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 742
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 743
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 744
    return-void

    .line 727
    .end local v4    # "mPath":Landroid/graphics/Path;
    .end local v5    # "x0":F
    .end local v6    # "x1":F
    .end local v9    # "y0":F
    .end local v10    # "y1":F
    :cond_0
    const/4 v5, 0x0

    .line 728
    .restart local v5    # "x0":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v13

    int-to-float v6, v13

    .line 729
    .restart local v6    # "x1":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v13

    int-to-float v7, v13

    .line 730
    const/4 v8, 0x0

    .line 732
    div-float v9, v3, p2

    .line 733
    .restart local v9    # "y0":F
    mul-float v13, v6, p3

    add-float/2addr v13, v3

    div-float v10, v13, p2

    .line 734
    .restart local v10    # "y1":F
    mul-float v13, v6, p3

    add-float/2addr v13, v2

    div-float v11, v13, p2

    .line 735
    div-float v12, v2, p2

    goto :goto_0
.end method

.method private exitTiltShift()V
    .locals 5

    .prologue
    .line 933
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    check-cast v3, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;

    iget-object v2, v3, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mCurrentImagePath:Ljava/lang/String;

    .line 934
    .local v2, "mOriginalBitmapPath":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 935
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 936
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 937
    const/4 v3, -0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v3, v4}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->finish()V

    .line 953
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "mOriginalBitmapPath":Ljava/lang/String;
    :goto_1
    return-void

    .line 940
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "mOriginalBitmapPath":Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_1

    :try_start_1
    const-string v3, "content"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 941
    const/4 v3, -0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v3, v4}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 947
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "mOriginalBitmapPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 948
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->showOriginalImageIsDeletedDialog()V

    .line 949
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 943
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "mOriginalBitmapPath":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->showOriginalImageIsDeletedDialog()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private getDegreeFromValue(III)I
    .locals 2
    .param p1, "value"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    .line 441
    sub-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x64

    sub-int v1, p3, p2

    div-int/2addr v0, v1

    return v0
.end method

.method private getGradualSize(III)I
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "r"    # I

    .prologue
    .line 767
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 768
    .local v1, "m":I
    div-int/lit8 v2, v1, 0x2

    sub-int/2addr v2, p3

    div-int/lit8 v0, v2, 0x2

    .line 769
    .local v0, "gradualSize":I
    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method private getScale()F
    .locals 4

    .prologue
    .line 995
    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTiltViewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mInitMapWidth:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 996
    .local v1, "widthScale":F
    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTiltViewHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mInitMapHeight:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 997
    .local v0, "heightScale":F
    cmpl-float v2, v1, v0

    if-ltz v2, :cond_0

    .line 1000
    .end local v0    # "heightScale":F
    :goto_0
    return v0

    .restart local v0    # "heightScale":F
    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getValueFromDegree(III)I
    .locals 1
    .param p1, "degree"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    .line 445
    sub-int v0, p3, p2

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    add-int/2addr v0, p2

    return v0
.end method

.method private initTimerTask()V
    .locals 1

    .prologue
    .line 758
    new-instance v0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$11;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$11;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTimerTask:Ljava/util/TimerTask;

    .line 764
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mImageSave:Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$4;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$4;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTypeCircle:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$5;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$5;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTypeLine:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$6;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$6;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mImageCancel:Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$7;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$7;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    new-instance v1, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$8;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$8;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 414
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mUnfoldView:Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$9;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$9;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mfoldView:Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$10;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$10;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    return-void
.end method

.method private merge()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 870
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mOriginBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 871
    :cond_0
    const/4 v2, 0x0

    .line 896
    :goto_0
    return-object v2

    .line 874
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTimer:Ljava/util/Timer;

    if-eqz v3, :cond_2

    .line 875
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 877
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v3, :cond_3

    .line 878
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v3}, Ljava/util/TimerTask;->cancel()Z

    .line 881
    :cond_3
    const/4 v3, 0x0

    iput v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMode:I

    .line 882
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->updateBitmap()V

    .line 884
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 885
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 886
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 887
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 889
    iget v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 891
    .local v2, "perform":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 893
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mOriginBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 894
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private save()V
    .locals 7

    .prologue
    .line 812
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "category_TiltShiftActivity"

    const-string v4, "action_TiltShiftActivity_click_save_btn"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 817
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->merge()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 818
    .local v1, "perform":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mFilterStackIndex:I

    invoke-interface {v2, v3}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getFilterStack(I)Lcom/lenovo/scg/gallery3d/edit/FilterStack;

    move-result-object v0

    .line 819
    .local v0, "mFilterStack":Lcom/lenovo/scg/gallery3d/edit/FilterStack;
    if-eqz v0, :cond_0

    .line 820
    new-instance v2, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$12;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$12;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)V

    invoke-virtual {v0, v2, v1}, Lcom/lenovo/scg/gallery3d/edit/FilterStack;->addCommand(Lcom/lenovo/scg/gallery3d/edit/Command;Landroid/graphics/Bitmap;)V

    .line 830
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->exitTiltShift()V

    .line 866
    return-void
.end method

.method private showExitDialog()V
    .locals 4

    .prologue
    .line 181
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 182
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0f0854

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 183
    const v2, 0x7f0f0a14

    new-instance v3, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$2;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$2;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 190
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 191
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 192
    .local v1, "mAlertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 193
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/app/AlertDialog;)V

    .line 194
    return-void
.end method

.method private showOriginalImageIsDeletedDialog()V
    .locals 4

    .prologue
    .line 956
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 957
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0f0855

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 958
    const v2, 0x7f0f0a14

    new-instance v3, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$13;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$13;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 965
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 966
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 967
    .local v1, "mAlertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 968
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/app/AlertDialog;)V

    .line 969
    return-void
.end method

.method private showTopBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 900
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mImageSave:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 901
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mImageCancel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 902
    return-void
.end method

.method private spacing(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 8
    .param p1, "event"    # Landroid/graphics/PointF;
    .param p2, "eventPointer"    # Landroid/graphics/PointF;

    .prologue
    .line 773
    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v5, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    float-to-double v0, v4

    .line 774
    .local v0, "x":D
    iget v4, p1, Landroid/graphics/PointF;->y:F

    iget v5, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    float-to-double v2, v4

    .line 775
    .local v2, "y":D
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    double-to-float v4, v4

    invoke-static {v4}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v4

    return v4
.end method

.method private updateAngle(Landroid/graphics/PointF;Landroid/graphics/PointF;)D
    .locals 20
    .param p1, "event"    # Landroid/graphics/PointF;
    .param p2, "eventPointer"    # Landroid/graphics/PointF;

    .prologue
    .line 779
    const-wide/16 v4, 0x0

    .line 781
    .local v4, "t":D
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/PointF;->x:F

    float-to-double v6, v14

    .line 782
    .local v6, "x0":D
    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/PointF;->x:F

    float-to-double v8, v14

    .line 783
    .local v8, "x1":D
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/PointF;->y:F

    float-to-double v10, v14

    .line 784
    .local v10, "y0":D
    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/PointF;->y:F

    float-to-double v12, v14

    .line 785
    .local v12, "y1":D
    sub-double v14, v6, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v14, v16

    if-gez v14, :cond_0

    .line 786
    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 791
    :goto_0
    const-string v14, "GlobalBlurEffect"

    const-string v15, "%f"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTwoFingerAngle:D

    sub-double v2, v4, v14

    .line 793
    .local v2, "diff":D
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTwoFingerAngle:D

    .line 794
    const-string v14, "GlobalBlurEffect"

    const-string v15, "%f"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTwoFingerAngle:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    return-wide v2

    .line 788
    .end local v2    # "diff":D
    :cond_0
    sub-double v14, v12, v10

    sub-double v16, v8, v6

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    goto :goto_0
.end method

.method private updateBitmap()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 657
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mBlurBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 688
    :goto_0
    return-void

    .line 660
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHeight:I

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 661
    .local v1, "blurpixels":[I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mBlurBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    iget v7, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHeight:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 663
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mBlurType:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;

    sget-object v2, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;->ByCircle:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;

    if-ne v0, v2, :cond_1

    .line 664
    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHeight:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mX:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mY:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSolidRadius:I

    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSolidRadius:I

    iget v7, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    iget v9, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHeight:I

    iget v10, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSolidRadius:I

    invoke-direct {p0, v7, v9, v10}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->getGradualSize(III)I

    move-result v7

    add-int/2addr v7, v0

    invoke-static/range {v1 .. v7}, Lcn/jingling/lib/filters/CMTProcessor;->blurBackgroundEffectByCircle([IIIIIII)V

    .line 681
    :goto_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 683
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMaskImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 685
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMaskImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 687
    const/4 v1, 0x0

    .line 688
    goto :goto_0

    .line 668
    :cond_1
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mAngle:D

    double-to-float v8, v2

    .line 669
    .local v8, "angle":F
    const-string v0, "GlobalBlurEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "angle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHeight:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mX:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mY:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSolidRadius:I

    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSolidRadius:I

    iget v7, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    iget v9, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHeight:I

    iget v10, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSolidRadius:I

    invoke-direct {p0, v7, v9, v10}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->getGradualSize(III)I

    move-result v7

    add-int/2addr v7, v0

    invoke-static/range {v1 .. v8}, Lcn/jingling/lib/filters/CMTProcessor;->blurBackgroundEffectByLine([IIIIIIIF)V

    goto :goto_1
.end method

.method private updateImageView1(Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 459
    if-nez p1, :cond_0

    .line 487
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mGroundImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 463
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mGroundImageView:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/lenovo/scg/gallery3d/tiltshift/ImageViewMatrixHelper;->getCenterCropMatrix(Landroid/view/View;Landroid/graphics/Bitmap;)Landroid/graphics/Matrix;

    move-result-object v8

    .line 464
    .local v8, "matrix":Landroid/graphics/Matrix;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mGroundImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 465
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMaskImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 468
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mOriginBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    .line 469
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mOriginBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHeight:I

    .line 470
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHeight:I

    if-le v0, v3, :cond_1

    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    :goto_1
    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMax:I

    .line 471
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMax:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMin:I

    .line 472
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHeight:I

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 473
    .local v1, "pixels":[I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mOriginBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    iget v7, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHeight:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 474
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHeight:I

    const/16 v3, 0x14

    invoke-static {v1, v0, v2, v3}, Lcn/jingling/lib/filters/CMTProcessor;->fastAverageBlur([IIII)V

    .line 476
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 479
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSolidRadius:I

    .line 480
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSolidRadius:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMin:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMax:I

    div-int/lit8 v4, v4, 0x2

    invoke-direct {p0, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->getDegreeFromValue(III)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->setProgress(I)V

    .line 483
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mX:I

    .line 484
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mY:I

    .line 486
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->updateMask()V

    goto/16 :goto_0

    .line 470
    .end local v1    # "pixels":[I
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHeight:I

    goto :goto_1
.end method

.method private updateImageView2(Landroid/graphics/Bitmap;)V
    .locals 11
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 489
    if-nez p1, :cond_0

    .line 531
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mGroundImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 497
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mOriginBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mInitMapWidth:I

    .line 498
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mOriginBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mInitMapHeight:I

    .line 499
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0903ca

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTiltViewWidth:I

    .line 500
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0903c9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v8, v0

    .line 501
    .local v8, "barHeight":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0903cb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v10, v0

    .line 502
    .local v10, "startTop":I
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSystemHeight:I

    sub-int/2addr v0, v8

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTiltViewHeight:I

    .line 503
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->getScale()F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mScale:F

    .line 504
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTiltViewWidth:I

    int-to-float v0, v0

    iget v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mInitMapWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v0, v3

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mViewStartLeft:I

    .line 505
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTiltViewHeight:I

    int-to-float v0, v0

    iget v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mInitMapHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v0, v3

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v10

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mViewStartTop:I

    .line 506
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 507
    .local v9, "mMatrix":Landroid/graphics/Matrix;
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mScale:F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mScale:F

    invoke-virtual {v9, v0, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 508
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mViewStartLeft:I

    int-to-float v0, v0

    iget v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mViewStartTop:I

    int-to-float v3, v3

    invoke-virtual {v9, v0, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 509
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mGroundImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 510
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMaskImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 512
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mOriginBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    .line 513
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mOriginBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHeight:I

    .line 514
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHeight:I

    if-le v0, v3, :cond_1

    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    :goto_1
    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMax:I

    .line 515
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMax:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMin:I

    .line 516
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHeight:I

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 517
    .local v1, "pixels":[I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mOriginBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    iget v7, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHeight:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 518
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHeight:I

    const/16 v3, 0x14

    invoke-static {v1, v0, v2, v3}, Lcn/jingling/lib/filters/CMTProcessor;->fastAverageBlur([IIII)V

    .line 520
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 523
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSolidRadius:I

    .line 524
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSolidRadius:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMin:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMax:I

    div-int/lit8 v4, v4, 0x2

    invoke-direct {p0, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->getDegreeFromValue(III)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->setProgress(I)V

    .line 527
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mX:I

    .line 528
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mY:I

    .line 530
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->updateMask()V

    goto/16 :goto_0

    .line 514
    .end local v1    # "pixels":[I
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHeight:I

    goto :goto_1
.end method

.method private updateMask()V
    .locals 8

    .prologue
    .line 627
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMaskImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mBlurBitmap:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 632
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 633
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 634
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mBlurType:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;

    sget-object v5, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;->ByCircle:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;

    if-ne v0, v5, :cond_2

    .line 635
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mX:I

    int-to-float v0, v0

    iget v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mY:I

    int-to-float v5, v5

    iget v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSolidRadius:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 636
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mX:I

    int-to-float v0, v0

    iget v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mY:I

    int-to-float v5, v5

    iget v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSolidRadius:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->grayPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 637
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mX:I

    int-to-float v0, v0

    iget v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mY:I

    int-to-float v5, v5

    iget v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSolidRadius:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 638
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mX:I

    int-to-float v0, v0

    iget v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mY:I

    int-to-float v5, v5

    iget v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSolidRadius:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 650
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMaskImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 652
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMaskImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0

    .line 640
    :cond_2
    iget-wide v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mAngle:D

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v2, v6

    .line 641
    .local v2, "cos":F
    iget-wide v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mAngle:D

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v3, v6

    .line 642
    .local v3, "sin":F
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mY:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mX:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float v4, v0, v5

    .line 644
    .local v4, "c":F
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSolidRadius:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->grayPaint:Landroid/graphics/Paint;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->drawRect(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 645
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSolidRadius:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->clearPaint:Landroid/graphics/Paint;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->drawRect(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 647
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSolidRadius:I

    int-to-float v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->drawLine(Landroid/graphics/Canvas;FFFF)V

    .line 648
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSolidRadius:I

    neg-int v0, v0

    int-to-float v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->drawLine(Landroid/graphics/Canvas;FFFF)V

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 451
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 455
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 973
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_TiltShiftActivity"

    const-string v2, "action_TiltShiftActivity_click_return_btn"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 977
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->exitTiltShift()V

    .line 978
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 199
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->requestWindowFeature(I)Z

    .line 200
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x400

    const/16 v10, 0x400

    invoke-virtual {v8, v9, v10}, Landroid/view/Window;->setFlags(II)V

    .line 202
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v8

    const-string v9, "category_TiltShiftActivity"

    const-string v10, "action_TiltShiftActivity_oncreate"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 205
    const v8, 0x7f040015

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->setContentView(I)V

    .line 206
    const v8, 0x7f1000a9

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mGroundImageView:Landroid/widget/ImageView;

    .line 207
    const v8, 0x7f1000aa

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMaskImageView:Landroid/widget/ImageView;

    .line 208
    const v8, 0x7f1000a1

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mImageSave:Landroid/widget/ImageView;

    .line 210
    const v8, 0x7f1000a3

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTypeCircle:Landroid/widget/LinearLayout;

    .line 211
    const v8, 0x7f1000a6

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTypeLine:Landroid/widget/LinearLayout;

    .line 212
    const v8, 0x7f10009f

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mImageCancel:Landroid/widget/ImageView;

    .line 213
    const v8, 0x7f1000af

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    .line 214
    const v8, 0x7f1000ab

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mUnfoldView:Landroid/widget/ImageView;

    .line 215
    const v8, 0x7f1000b0

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mfoldView:Landroid/widget/ImageView;

    .line 216
    const v8, 0x7f1000ac

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mControlLayout:Landroid/widget/RelativeLayout;

    .line 217
    const v8, 0x7f1000a4

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mCircleView:Landroid/widget/ImageView;

    .line 218
    const v8, 0x7f1000a7

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mLineView:Landroid/widget/ImageView;

    .line 220
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMaskImageView:Landroid/widget/ImageView;

    invoke-virtual {v8, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 221
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->initViews()V

    .line 223
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mPaint:Landroid/graphics/Paint;

    .line 224
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 225
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mPaint:Landroid/graphics/Paint;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mPaint:Landroid/graphics/Paint;

    const/16 v9, 0x50

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 227
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 228
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mPaint:Landroid/graphics/Paint;

    const/high16 v9, 0x40400000    # 3.0f

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 229
    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v8, 0x4

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    const/4 v9, 0x0

    invoke-direct {v1, v8, v9}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 230
    .local v1, "mEffects":Landroid/graphics/PathEffect;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 232
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mPaint2:Landroid/graphics/Paint;

    .line 233
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mPaint2:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 234
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mPaint2:Landroid/graphics/Paint;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mPaint2:Landroid/graphics/Paint;

    const/16 v9, 0x50

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 236
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mPaint2:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 237
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mPaint2:Landroid/graphics/Paint;

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 238
    new-instance v2, Landroid/graphics/DashPathEffect;

    const/4 v8, 0x4

    new-array v8, v8, [F

    fill-array-data v8, :array_1

    const/high16 v9, 0x41200000    # 10.0f

    invoke-direct {v2, v8, v9}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 240
    .local v2, "mEffects2":Landroid/graphics/PathEffect;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 242
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->clearPaint:Landroid/graphics/Paint;

    .line 243
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->clearPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 244
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->clearPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 246
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->whitePaint:Landroid/graphics/Paint;

    .line 247
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->whitePaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 248
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->whitePaint:Landroid/graphics/Paint;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->whitePaint:Landroid/graphics/Paint;

    const/16 v9, 0x4b

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 250
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->whitePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 252
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->grayPaint:Landroid/graphics/Paint;

    .line 253
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->grayPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 254
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->grayPaint:Landroid/graphics/Paint;

    const v9, -0x777778

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 255
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->grayPaint:Landroid/graphics/Paint;

    const/16 v9, 0x32

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 256
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->grayPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 258
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMaskImageView:Landroid/widget/ImageView;

    invoke-virtual {v8, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 259
    const/4 v8, 0x1

    iput v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMode:I

    .line 261
    const v8, 0x7f1000a0

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 262
    .local v7, "titleNameView":Landroid/widget/TextView;
    const v8, 0x7f1000a5

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mCircleTextView:Landroid/widget/TextView;

    .line 263
    const v8, 0x7f1000a8

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mLineTextView:Landroid/widget/TextView;

    .line 264
    const v8, 0x7f10097a

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 266
    .local v4, "scaleTextView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0098

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTextColorHi:I

    .line 267
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0207e9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTextColorNormal:I

    .line 269
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v8, "zh"

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v5, v8, Landroid/util/DisplayMetrics;->density:F

    .line 274
    .local v5, "scaleVal":F
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mCircleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09036d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    const v10, 0x3f4ccccd    # 0.8f

    mul-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 275
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mLineTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09036d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    const v10, 0x3f4ccccd    # 0.8f

    mul-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 280
    .end local v5    # "scaleVal":F
    :cond_0
    invoke-static {v7}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 281
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mCircleTextView:Landroid/widget/TextView;

    invoke-static {v8}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 282
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mLineTextView:Landroid/widget/TextView;

    invoke-static {v8}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 283
    invoke-static {v4}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 285
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->changeCircleIcon()V

    .line 287
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 288
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    sget-object v9, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->FILTERSTACKINDEX:Ljava/lang/String;

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mFilterStackIndex:I

    .line 289
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iget v9, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mFilterStackIndex:I

    invoke-interface {v8, v9}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getCurrentBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mOriginBitmap:Landroid/graphics/Bitmap;

    .line 291
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mOriginBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_2

    .line 292
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mOriginBitmap:Landroid/graphics/Bitmap;

    iget v10, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mFilterStackIndex:I

    invoke-interface {v8, v9, v10}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->setScaleBitmap(Landroid/graphics/Bitmap;I)V

    .line 293
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mOriginBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v8}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->updateImageView2(Landroid/graphics/Bitmap;)V

    .line 305
    :cond_1
    :goto_0
    return-void

    .line 295
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "PHOTO_PATH"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "path":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 297
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->finish()V

    .line 299
    :cond_3
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->creatScallBmpCallback:Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;

    invoke-static {p0, v8, v3, v9}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->openPhoto(Landroid/app/Activity;Landroid/widget/ProgressBar;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;)Z

    move-result v6

    .line 300
    .local v6, "success":Z
    if-nez v6, :cond_1

    .line 301
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->finish()V

    goto :goto_0

    .line 229
    nop

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data

    .line 238
    :array_1
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 536
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTimer:Ljava/util/Timer;

    if-eqz v6, :cond_0

    .line 537
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v6}, Ljava/util/Timer;->cancel()V

    .line 539
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v6, :cond_1

    .line 540
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v6}, Ljava/util/TimerTask;->cancel()Z

    .line 544
    :cond_1
    new-instance v6, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMaskImageView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lenovo/scg/gallery3d/tiltshift/DualPoint;->mapPointBmToView(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    .line 545
    .local v3, "mEventPosition":Landroid/graphics/PointF;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    packed-switch v6, :pswitch_data_0

    .line 620
    :goto_0
    :pswitch_0
    return v10

    .line 547
    :pswitch_1
    const-string v6, "BLUR"

    const-string v7, "action down"

    invoke-static {v6, v7}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mLastEventPosition:Landroid/graphics/PointF;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget v8, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 549
    iput v10, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMode:I

    .line 550
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->updateMask()V

    goto :goto_0

    .line 553
    :pswitch_2
    const-string v6, "BLUR"

    const-string v7, "action up"

    invoke-static {v6, v7}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iput v9, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMode:I

    .line 555
    invoke-virtual {p0, v10}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->updateBitmapDelay(Z)V

    goto :goto_0

    .line 558
    :pswitch_3
    const-string v6, "BLUR"

    const-string v7, "action pointer down"

    invoke-static {v6, v7}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    new-instance v6, Landroid/graphics/PointF;

    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMaskImageView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lenovo/scg/gallery3d/tiltshift/DualPoint;->mapPointBmToView(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v2

    .line 560
    .local v2, "mEventPointer":Landroid/graphics/PointF;
    invoke-direct {p0, v3, v2}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->spacing(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v6

    iput v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mOldDist:F

    .line 561
    invoke-direct {p0, v3, v2}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->updateAngle(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    .line 562
    iput v11, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMode:I

    goto :goto_0

    .line 565
    .end local v2    # "mEventPointer":Landroid/graphics/PointF;
    :pswitch_4
    const-string v6, "BLUR"

    const-string v7, "action pointer up"

    invoke-static {v6, v7}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iput v10, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMode:I

    .line 567
    iput-boolean v10, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->skipOneFrame:Z

    goto :goto_0

    .line 570
    :pswitch_5
    const-string v6, "BLUR"

    const-string v7, "action move"

    invoke-static {v6, v7}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMode:I

    if-ne v6, v10, :cond_8

    .line 572
    iget-boolean v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->skipOneFrame:Z

    if-eqz v6, :cond_3

    .line 573
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mLastEventPosition:Landroid/graphics/PointF;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget v8, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 574
    iput-boolean v9, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->skipOneFrame:Z

    .line 617
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->updateMask()V

    goto :goto_0

    .line 576
    :cond_3
    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mLastEventPosition:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    float-to-int v0, v6

    .line 577
    .local v0, "dx":I
    iget v6, v3, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mLastEventPosition:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    float-to-int v1, v6

    .line 578
    .local v1, "dy":I
    iget v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mX:I

    div-int/lit8 v7, v0, 0x2

    add-int/2addr v6, v7

    iput v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mX:I

    .line 579
    iget v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mY:I

    div-int/lit8 v7, v1, 0x2

    add-int/2addr v6, v7

    iput v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mY:I

    .line 581
    iget v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mX:I

    if-gez v6, :cond_4

    .line 582
    iput v9, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mX:I

    .line 584
    :cond_4
    iget v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mY:I

    if-gez v6, :cond_5

    .line 585
    iput v9, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mY:I

    .line 588
    :cond_5
    iget v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mX:I

    iget v7, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    if-le v6, v7, :cond_6

    .line 589
    iget v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mWidth:I

    iput v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mX:I

    .line 591
    :cond_6
    iget v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mY:I

    iget v7, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHeight:I

    if-le v6, v7, :cond_7

    .line 592
    iget v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mHeight:I

    iput v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mY:I

    .line 595
    :cond_7
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mLastEventPosition:Landroid/graphics/PointF;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget v8, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_1

    .line 597
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    :cond_8
    iget v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMode:I

    if-ne v6, v11, :cond_2

    .line 598
    new-instance v6, Landroid/graphics/PointF;

    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMaskImageView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lenovo/scg/gallery3d/tiltshift/DualPoint;->mapPointBmToView(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v4

    .line 601
    .local v4, "mPointer":Landroid/graphics/PointF;
    invoke-direct {p0, v3, v4}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->spacing(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v5

    .line 603
    .local v5, "newDis":F
    iget v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSolidRadius:I

    int-to-float v6, v6

    iget v7, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mOldDist:F

    sub-float v7, v5, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSolidRadius:I

    .line 604
    iget v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSolidRadius:I

    iget v7, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMax:I

    div-int/lit8 v7, v7, 0x2

    if-le v6, v7, :cond_9

    .line 605
    iget v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMax:I

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSolidRadius:I

    .line 607
    :cond_9
    iget v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSolidRadius:I

    iget v7, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMin:I

    div-int/lit8 v7, v7, 0x2

    if-ge v6, v7, :cond_a

    .line 608
    iget v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMin:I

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSolidRadius:I

    .line 610
    :cond_a
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    iget v7, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mSolidRadius:I

    iget v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMin:I

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mMax:I

    div-int/lit8 v9, v9, 0x2

    invoke-direct {p0, v7, v8, v9}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->getDegreeFromValue(III)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->setProgress(I)V

    .line 613
    iput v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mOldDist:F

    .line 615
    iget-wide v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mAngle:D

    invoke-direct {p0, v3, v4}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->updateAngle(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v8

    add-double/2addr v6, v8

    iput-wide v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mAngle:D

    goto/16 :goto_1

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public updateBitmapDelay(Z)V
    .locals 4
    .param p1, "isShort"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 748
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTimer:Ljava/util/Timer;

    .line 749
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->initTimerTask()V

    .line 750
    if-eqz p1, :cond_0

    .line 751
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 755
    :goto_0
    return-void

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method
