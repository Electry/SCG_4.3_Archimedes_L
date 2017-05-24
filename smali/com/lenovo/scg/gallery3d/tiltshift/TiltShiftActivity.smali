.class public Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;
.super Landroid/app/Activity;
.source "TiltShiftActivity.java"


# static fields
.field private static mSystemHeight:I

.field private static mSystemWidth:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field creatScallBmpCallback:Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;

.field private mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

.field private mContext:Landroid/content/Context;

.field private mFilterStackIndex:I

.field private mLoadingBar:Landroid/widget/ProgressBar;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field public mScale:F

.field public mShowView:Landroid/widget/ImageView;

.field private mTiltView:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

.field private mTiltViewHeight:I

.field private mTiltViewWidth:I

.field public mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

.field private mViewLayout:Landroid/widget/RelativeLayout;

.field public mViewStartLeft:I

.field public mViewStartTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x438

    sput v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mSystemWidth:I

    .line 55
    const/16 v0, 0x444

    sput v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mSystemHeight:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const-string v0, "TiltShiftActivity"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->TAG:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 43
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mViewLayout:Landroid/widget/RelativeLayout;

    .line 45
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 57
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mContext:Landroid/content/Context;

    .line 59
    const/16 v0, 0x438

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mTiltViewWidth:I

    .line 61
    const/16 v0, 0x5a0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mTiltViewHeight:I

    .line 63
    iput v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mViewStartLeft:I

    .line 65
    iput v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mViewStartTop:I

    .line 67
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mScale:F

    .line 69
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mMatrix:Landroid/graphics/Matrix;

    .line 71
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    .line 73
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mLoadingBar:Landroid/widget/ProgressBar;

    .line 75
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mShowView:Landroid/widget/ImageView;

    .line 77
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mTiltView:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    .line 159
    new-instance v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->creatScallBmpCallback:Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    .prologue
    .line 37
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mFilterStackIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;)Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->showInitView()V

    return-void
.end method

.method private adjustedViewSize()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 207
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mClearBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 208
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mClearBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, v3, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mInitMapWidth:I

    .line 209
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mClearBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, v3, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mInitMapHeight:I

    .line 211
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0903ca

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mTiltViewWidth:I

    .line 212
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0903c9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 213
    .local v0, "barHeight":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0903cb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 214
    .local v2, "startTop":I
    sget v3, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mSystemHeight:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mTiltViewHeight:I

    .line 215
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->getScale()F

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mScale:F

    .line 217
    iget v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mTiltViewWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mInitMapWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mScale:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mViewStartLeft:I

    .line 218
    iget v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mTiltViewHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mInitMapHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mScale:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    iput v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mViewStartTop:I

    .line 220
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mShowView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mClearBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 222
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mScale:F

    iget v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mScale:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 223
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mViewStartLeft:I

    int-to-float v4, v4

    iget v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mViewStartTop:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 224
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mShowView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 226
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mInitMapWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mShowViewWidth:I

    .line 227
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mInitMapHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mShowViewHeight:I

    .line 228
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04018b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mTiltView:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    .line 229
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 231
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mTiltView:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    .end local v0    # "barHeight":I
    .end local v1    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "startTop":I
    :cond_0
    return-void
.end method

.method private cleanViews()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mTiltView:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mTiltView:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->reset()V

    .line 321
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 323
    :cond_0
    return-void
.end method

.method private createFirstBlurView()V
    .locals 5

    .prologue
    .line 246
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mClearBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 253
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mInitMapWidth:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v3, v3, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mInitMapHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mClearBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->bitmapToByte(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 279
    .local v0, "data":[B
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mTiltView:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    if-eqz v1, :cond_2

    .line 280
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mTiltView:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->updateBitmap([B)V

    .line 284
    .end local v0    # "data":[B
    :cond_2
    return-void
.end method

.method public static getHeight()I
    .locals 1

    .prologue
    .line 142
    sget v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mSystemHeight:I

    return v0
.end method

.method private getScale()F
    .locals 4

    .prologue
    .line 236
    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mTiltViewWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v3, v3, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mInitMapWidth:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 237
    .local v1, "widthScale":F
    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mTiltViewHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget v3, v3, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mInitMapHeight:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 238
    .local v0, "heightScale":F
    cmpl-float v2, v1, v0

    if-ltz v2, :cond_0

    .line 241
    .end local v0    # "heightScale":F
    :goto_0
    return v0

    .restart local v0    # "heightScale":F
    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getSystemSize()V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 132
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 133
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mSystemWidth:I

    .line 134
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mSystemHeight:I

    .line 135
    return-void
.end method

.method public static getWidth()I
    .locals 1

    .prologue
    .line 138
    sget v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mSystemWidth:I

    return v0
.end method

.method private openPhoto(Landroid/net/Uri;)V
    .locals 3
    .param p1, "sourceUri"    # Landroid/net/Uri;

    .prologue
    .line 153
    new-instance v0, Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->creatScallBmpCallback:Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 154
    return-void
.end method

.method private recycleBitmaps()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 335
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mClearBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mClearBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 337
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mClearBitmap:Landroid/graphics/Bitmap;

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 341
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 343
    :cond_1
    return-void
.end method

.method private showInitView()V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mClearBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f090a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 198
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->setResult(ILandroid/content/Intent;)V

    .line 199
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->finish()V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->adjustedViewSize()V

    .line 203
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->createFirstBlurView()V

    goto :goto_0
.end method

.method private showOriginalImageIsDeletedDialog()V
    .locals 4

    .prologue
    .line 356
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 357
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0f0855

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 358
    const v2, 0x7f0f0a14

    new-instance v3, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity$2;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity$2;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 366
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 367
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 368
    .local v1, "mAlertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 369
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/app/AlertDialog;)V

    .line 370
    return-void
.end method


# virtual methods
.method public exitTiltShift()V
    .locals 5

    .prologue
    .line 289
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    check-cast v3, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;

    iget-object v2, v3, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mCurrentImagePath:Ljava/lang/String;

    .line 290
    .local v2, "mOriginalBitmapPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    const/4 v3, -0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v3, v4}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->finish()V

    .line 315
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "mOriginalBitmapPath":Ljava/lang/String;
    :goto_1
    return-void

    .line 295
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "mOriginalBitmapPath":Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_1

    :try_start_1
    const-string v3, "content"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 296
    const/4 v3, -0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v3, v4}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 302
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "mOriginalBitmapPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->showOriginalImageIsDeletedDialog()V

    .line 304
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 298
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "mOriginalBitmapPath":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->showOriginalImageIsDeletedDialog()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public getFilterStackIndex()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mFilterStackIndex:I

    return v0
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 329
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_TiltShiftActivity"

    const-string v2, "action_TiltShiftActivity_click_return_btn"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 331
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->exitTiltShift()V

    .line 332
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->requestWindowFeature(I)Z

    .line 84
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 86
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "category_TiltShiftActivity"

    const-string v4, "action_TiltShiftActivity_oncreate"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    const v2, 0x7f040019

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->setContentView(I)V

    .line 91
    new-instance v2, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    invoke-direct {v2}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    .line 93
    const v2, 0x7f1000d3

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 94
    const v2, 0x7f1000d4

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mShowView:Landroid/widget/ImageView;

    .line 95
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->getSystemSize()V

    .line 103
    iput-object p0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 105
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mMatrix:Landroid/graphics/Matrix;

    .line 108
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->FILTERSTACKINDEX:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mFilterStackIndex:I

    .line 110
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iget v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mFilterStackIndex:I

    invoke-interface {v3, v4}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getCurrentBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mClearBitmap:Landroid/graphics/Bitmap;

    .line 112
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mClearBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mUtil:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftUtil;->mClearBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "PHOTO_PATH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->finish()V

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->mLoadingBar:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->creatScallBmpCallback:Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;

    invoke-static {p0, v2, v0, v3}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->openPhoto(Landroid/app/Activity;Landroid/widget/ProgressBar;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;)Z

    move-result v1

    .line 120
    .local v1, "success":Z
    if-nez v1, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->finish()V

    .line 128
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "success":Z
    :cond_2
    :goto_0
    return-void

    .line 126
    :cond_3
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->showInitView()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 347
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 348
    const-string v0, "TiltShiftActivity"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->cleanViews()V

    .line 352
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 185
    const-string v0, "TiltShiftActivity"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->exitPictureQualityMode()V

    .line 187
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 174
    const-string v0, "TiltShiftActivity"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->enterPictureQualityMode()V

    .line 179
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 192
    const-string v0, "TiltShiftActivity"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void
.end method
