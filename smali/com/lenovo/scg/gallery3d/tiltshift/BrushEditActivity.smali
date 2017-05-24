.class public Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;
.super Landroid/app/Activity;
.source "BrushEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$MainHandler;
    }
.end annotation


# static fields
.field private static final EXIT:I = 0x3

.field private static final PHOTO_PATH:Ljava/lang/String; = "PHOTO_PATH"

.field private static final SHOW_DIALOG:I = 0x4


# instance fields
.field creatScallBmpCallback:Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;

.field private mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

.field private mBitmapHeight:F

.field private mBitmapWidth:F

.field private mBrashName:Landroid/widget/TextView;

.field private mBrushSelectBtn:Landroid/widget/ImageView;

.field private mBtnSave:Landroid/widget/ImageView;

.field private mCancelView:Landroid/widget/ImageView;

.field private mEraserLayout:Landroid/widget/LinearLayout;

.field private mEraserName:Landroid/widget/TextView;

.field private mEraserSelectBtn:Landroid/widget/ImageView;

.field private mFilterStackIndex:I

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mInkView:Lcn/jingling/sdkdemo/widgets/InkCanvas;

.field private mIsShowOriginalBitmap:Z

.field private mIsUpdatedCancelOkButtonBg:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMosaicLayout:Landroid/widget/LinearLayout;

.field private mNewMatrix:Landroid/graphics/Matrix;

.field private mOriginalBitmap:Landroid/graphics/Bitmap;

.field private mOriginalText:Landroid/widget/TextView;

.field private mOriginalView:Landroid/widget/ImageView;

.field private mPenWidthSeeker:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

.field private mPreparedBitmap:Landroid/graphics/Bitmap;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRotateView:Landroid/widget/ImageView;

.field private mScale:F

.field private mScaledBitmap:Landroid/graphics/Bitmap;

.field private mScreenWidth:F

.field private mSeekBarl:Landroid/widget/LinearLayout;

.field private mSeekbarDown:Landroid/widget/ImageView;

.field private mSeekbarUp:Landroid/widget/ImageView;

.field private mSoureViewHeight:F

.field private mTouchX:I

.field private mTouchY:I

.field private rotateDegree:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    new-instance v0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$MainHandler;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mHandler:Landroid/os/Handler;

    .line 68
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mMatrix:Landroid/graphics/Matrix;

    .line 72
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mIsUpdatedCancelOkButtonBg:Z

    .line 76
    iput v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->rotateDegree:I

    .line 149
    new-instance v0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->creatScallBmpCallback:Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;

    .line 460
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mFilterStackIndex:I

    return v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mBrushSelectBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mEraserSelectBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mBrashName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mEraserName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mPenWidthSeeker:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mNewMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;
    .param p1, "x1"    # Landroid/graphics/Matrix;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mNewMatrix:Landroid/graphics/Matrix;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->getScaleValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->rotateDegree:I

    return v0
.end method

.method static synthetic access$1702(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->rotateDegree:I

    return p1
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mScale:F

    return v0
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mBitmapHeight:F

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mScreenWidth:F

    return v0
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mSoureViewHeight:F

    return v0
.end method

.method static synthetic access$2200(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mBitmapWidth:F

    return v0
.end method

.method static synthetic access$2300(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->rotateOriginalView(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mSeekbarUp:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mSeekBarl:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mSeekbarDown:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->showExitDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->initSourceView(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mCancelView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mPreparedBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$702(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mPreparedBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Lcn/jingling/sdkdemo/widgets/InkCanvas;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mInkView:Lcn/jingling/sdkdemo/widgets/InkCanvas;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->showOriginalImageIsDeletedDialog()V

    return-void
.end method

.method private getScale(Landroid/graphics/Bitmap;)F
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 210
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 218
    :cond_0
    :goto_0
    return v0

    .line 211
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mBitmapWidth:F

    .line 212
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mBitmapHeight:F

    .line 213
    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mScreenWidth:F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mBitmapWidth:F

    div-float v1, v2, v3

    .line 214
    .local v1, "widthScale":F
    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mSoureViewHeight:F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mBitmapHeight:F

    div-float v0, v2, v3

    .line 215
    .local v0, "heightScale":F
    cmpl-float v2, v1, v0

    if-gez v2, :cond_0

    move v0, v1

    .line 218
    goto :goto_0
.end method

.method private getScaleValue()F
    .locals 4

    .prologue
    .line 400
    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mSoureViewHeight:F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mBitmapWidth:F

    div-float v0, v2, v3

    .line 401
    .local v0, "scale1":F
    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mScreenWidth:F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mBitmapHeight:F

    div-float v1, v2, v3

    .line 402
    .local v1, "scale2":F
    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    .line 405
    .end local v1    # "scale2":F
    :goto_0
    return v1

    .restart local v1    # "scale2":F
    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method private initSourceView(Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 182
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v1, v6

    .line 183
    .local v1, "bitmapWidth":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v0, v6

    .line 185
    .local v0, "bitmapHeight":F
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090196

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    iput v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mScreenWidth:F

    .line 186
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090195

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    iput v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mSoureViewHeight:F

    .line 187
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 188
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mMatrix:Landroid/graphics/Matrix;

    .line 189
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->getScale(Landroid/graphics/Bitmap;)F

    move-result v6

    iput v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mScale:F

    .line 190
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mMatrix:Landroid/graphics/Matrix;

    iget v7, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mScale:F

    iget v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mScale:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 191
    iget v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mScreenWidth:F

    iget v7, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mScale:F

    mul-float/2addr v7, v1

    sub-float/2addr v6, v7

    div-float v5, v6, v9

    .line 192
    .local v5, "transWidth":F
    iget v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mSoureViewHeight:F

    iget v7, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mScale:F

    mul-float/2addr v7, v0

    sub-float/2addr v6, v7

    div-float v4, v6, v9

    .line 193
    .local v4, "transHeight":F
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 194
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mImageView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 195
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->invalidate()V

    .line 196
    const-string v6, "dongyu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initSourceView"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090192

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    .line 199
    .local v3, "mScaledWidth":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090193

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 200
    .local v2, "mScaledHeight":I
    new-instance v6, Lcom/lenovo/scg/gallery3d/edit/EditUtils;

    invoke-direct {v6}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;-><init>()V

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v3, v2, v8}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->createScaleBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mScaledBitmap:Landroid/graphics/Bitmap;

    .line 201
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mOriginalView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 203
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->refreshBrushViews()V

    .line 204
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->initViews()V

    .line 206
    return-void
.end method

.method private initViews()V
    .locals 3

    .prologue
    const/16 v2, 0x1e

    .line 241
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mPenWidthSeeker:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->setMax(I)V

    .line 242
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mPenWidthSeeker:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->setProgress(I)V

    .line 243
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mInkView:Lcn/jingling/sdkdemo/widgets/InkCanvas;

    invoke-virtual {v0}, Lcn/jingling/sdkdemo/widgets/InkCanvas;->setCanvasIsDrawn()V

    .line 244
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mInkView:Lcn/jingling/sdkdemo/widgets/InkCanvas;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcn/jingling/sdkdemo/widgets/InkCanvas;->setPenState(I)V

    .line 245
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mInkView:Lcn/jingling/sdkdemo/widgets/InkCanvas;

    invoke-virtual {v0, v2}, Lcn/jingling/sdkdemo/widgets/InkCanvas;->setPenWidth(I)V

    .line 247
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mBtnSave:Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$3;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mMosaicLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$4;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$4;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mEraserLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$5;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$5;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mPenWidthSeeker:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    new-instance v1, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$6;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$6;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 330
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mCancelView:Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$7;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$7;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mRotateView:Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mSeekbarUp:Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$9;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$9;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mSeekbarDown:Landroid/widget/ImageView;

    new-instance v1, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$10;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$10;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    return-void
.end method

.method private refreshBrushViews()V
    .locals 3

    .prologue
    .line 451
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 457
    :goto_0
    return-void

    .line 454
    :cond_0
    const-string v0, "dongyu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshBrushViews(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mInkView:Lcn/jingling/sdkdemo/widgets/InkCanvas;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p0, v1, v2, p0}, Lcn/jingling/sdkdemo/widgets/InkCanvas;->init(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)V

    .line 456
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mInkView:Lcn/jingling/sdkdemo/widgets/InkCanvas;

    invoke-virtual {v0}, Lcn/jingling/sdkdemo/widgets/InkCanvas;->invalidate()V

    goto :goto_0
.end method

.method private rotateOriginalView(I)V
    .locals 5
    .param p1, "rotateDegree"    # I

    .prologue
    .line 423
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 424
    .local v0, "matrix2":Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mOriginalView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mScaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 425
    .local v1, "scale2":F
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mNewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 426
    int-to-float v2, p1

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mOriginalView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mOriginalView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 427
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mOriginalView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 428
    return-void
.end method

.method private showExitDialog()V
    .locals 4

    .prologue
    .line 224
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 225
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0f0854

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 226
    const v2, 0x7f0f0a14

    new-instance v3, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$2;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$2;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 233
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 234
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 235
    .local v1, "mAlertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 236
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/app/AlertDialog;)V

    .line 237
    return-void
.end method

.method private showOriginalImageIsDeletedDialog()V
    .locals 4

    .prologue
    .line 433
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 434
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0f0855

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 435
    const v2, 0x7f0f0a14

    new-instance v3, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$11;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$11;-><init>(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 443
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 444
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 445
    .local v1, "mAlertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 446
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/app/AlertDialog;)V

    .line 447
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x400

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->requestWindowFeature(I)Z

    .line 91
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 92
    const v3, 0x7f040016

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->setContentView(I)V

    .line 94
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 95
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    sget-object v4, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->FILTERSTACKINDEX:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mFilterStackIndex:I

    .line 96
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iget v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mFilterStackIndex:I

    invoke-interface {v3, v4}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getCurrentBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 97
    const v3, 0x7f1000b5

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mRotateView:Landroid/widget/ImageView;

    .line 98
    const v3, 0x7f1000a9

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mImageView:Landroid/widget/ImageView;

    .line 99
    const v3, 0x7f1000b8

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/jingling/sdkdemo/widgets/InkCanvas;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mInkView:Lcn/jingling/sdkdemo/widgets/InkCanvas;

    .line 100
    const v3, 0x7f1000b6

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mBtnSave:Landroid/widget/ImageView;

    .line 101
    const v3, 0x7f1000bf

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mBrushSelectBtn:Landroid/widget/ImageView;

    .line 102
    const v3, 0x7f1000be

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mMosaicLayout:Landroid/widget/LinearLayout;

    .line 103
    const v3, 0x7f1000c2

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mEraserSelectBtn:Landroid/widget/ImageView;

    .line 104
    const v3, 0x7f1000c1

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mEraserLayout:Landroid/widget/LinearLayout;

    .line 105
    const v3, 0x7f1000bc

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mPenWidthSeeker:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    .line 106
    const v3, 0x7f1000b3

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mOriginalView:Landroid/widget/ImageView;

    .line 107
    const v3, 0x7f1000b2

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mCancelView:Landroid/widget/ImageView;

    .line 109
    const v3, 0x7f1000b4

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mOriginalText:Landroid/widget/TextView;

    .line 110
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mOriginalText:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 112
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "zh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mOriginalText:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    :cond_0
    const v3, 0x7f1000c0

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mBrashName:Landroid/widget/TextView;

    .line 117
    const v3, 0x7f1000c3

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mEraserName:Landroid/widget/TextView;

    .line 118
    const v3, 0x7f1000bd

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mSeekbarUp:Landroid/widget/ImageView;

    .line 119
    const v3, 0x7f1000bb

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mSeekBarl:Landroid/widget/LinearLayout;

    .line 120
    const v3, 0x7f1000ba

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mSeekbarDown:Landroid/widget/ImageView;

    .line 123
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mBrushSelectBtn:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 124
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mEraserSelectBtn:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 125
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mBrashName:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 126
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mEraserName:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 128
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "PHOTO_PATH"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "path":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->creatScallBmpCallback:Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;

    invoke-static {p0, v3, v1, v4}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->openPhoto(Landroid/app/Activity;Landroid/widget/ProgressBar;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;)Z

    move-result v2

    .line 132
    .local v2, "success":Z
    if-nez v2, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "success":Z
    :cond_1
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->showExitDialog()V

    goto :goto_0

    .line 142
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->initSourceView(Landroid/graphics/Bitmap;)V

    .line 143
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 144
    const-string v3, "dongyu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOriginalBitmap is not null ,it is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 495
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 531
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 497
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mTouchX:I

    .line 498
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mTouchY:I

    .line 499
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 501
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mOriginalText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getHitRect(Landroid/graphics/Rect;)V

    .line 503
    iget v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mTouchX:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mTouchY:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mIsShowOriginalBitmap:Z

    .line 505
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mOriginalText:Landroid/widget/TextView;

    const v2, 0x7f020787

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 510
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mInkView:Lcn/jingling/sdkdemo/widgets/InkCanvas;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcn/jingling/sdkdemo/widgets/InkCanvas;->setVisibility(I)V

    goto :goto_0

    .line 514
    .end local v0    # "rect":Landroid/graphics/Rect;
    :pswitch_1
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mIsShowOriginalBitmap:Z

    if-eqz v1, :cond_0

    .line 515
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mIsShowOriginalBitmap:Z

    .line 516
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mPreparedBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 517
    const-string v1, "dongyu"

    const-string v2, "mPreparedBitmap == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mPreparedBitmap:Landroid/graphics/Bitmap;

    .line 525
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mInkView:Lcn/jingling/sdkdemo/widgets/InkCanvas;

    invoke-virtual {v1, v3}, Lcn/jingling/sdkdemo/widgets/InkCanvas;->setVisibility(I)V

    .line 526
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mOriginalText:Landroid/widget/TextView;

    const v2, 0x7f020786

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 495
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateCancelOkButtonBg()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 480
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mIsUpdatedCancelOkButtonBg:Z

    if-nez v0, :cond_0

    .line 481
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mIsUpdatedCancelOkButtonBg:Z

    .line 482
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mBtnSave:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 483
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mCancelView:Landroid/widget/ImageView;

    const v1, 0x7f02060c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 484
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mBtnSave:Landroid/widget/ImageView;

    const v1, 0x7f02061b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 486
    :cond_0
    return-void
.end method
