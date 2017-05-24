.class public Lcn/jingling/lib/textbubble/ImageControl;
.super Ljava/lang/Object;
.source "ImageControl.java"


# static fields
.field protected static mLayoutHeight:I

.field protected static mLayoutWidth:I

.field protected static mMarginX:I

.field protected static mMarginY:I


# instance fields
.field public bmpHeight:I

.field public bmpWidth:I

.field private mAlpha:I

.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mBottomMenuLayout:Landroid/view/ViewGroup$LayoutParams;

.field private mControlEnabled:Z

.field protected mFlagMove:Ljava/lang/Boolean;

.field protected mFlagRotate:Ljava/lang/Boolean;

.field protected mFlagZoom:Ljava/lang/Boolean;

.field protected mImageView:Landroid/widget/ImageView;

.field public mMaxOneStepScaleLimit:F

.field public mMaxScaleLimit:F

.field public mMinOneStepScaleLimit:F

.field public mMinScaleLimit:F

.field public mScale:F

.field private mTopMenuLayout:Landroid/view/ViewGroup$LayoutParams;

.field protected mTransformMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v4, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    .line 17
    iput-object v4, p0, Lcn/jingling/lib/textbubble/ImageControl;->mBitmap:Landroid/graphics/Bitmap;

    .line 18
    iput-object v4, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    .line 20
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcn/jingling/lib/textbubble/ImageControl;->mFlagMove:Ljava/lang/Boolean;

    .line 21
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcn/jingling/lib/textbubble/ImageControl;->mFlagZoom:Ljava/lang/Boolean;

    .line 22
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcn/jingling/lib/textbubble/ImageControl;->mFlagRotate:Ljava/lang/Boolean;

    .line 33
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcn/jingling/lib/textbubble/ImageControl;->mScale:F

    .line 39
    const v4, 0x3f866666    # 1.05f

    iput v4, p0, Lcn/jingling/lib/textbubble/ImageControl;->mMaxOneStepScaleLimit:F

    .line 40
    const v4, 0x3f733333    # 0.95f

    iput v4, p0, Lcn/jingling/lib/textbubble/ImageControl;->mMinOneStepScaleLimit:F

    .line 41
    const/16 v4, 0xff

    iput v4, p0, Lcn/jingling/lib/textbubble/ImageControl;->mAlpha:I

    .line 43
    iput-boolean v5, p0, Lcn/jingling/lib/textbubble/ImageControl;->mControlEnabled:Z

    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, "margin":I
    const/4 v2, 0x0

    .line 62
    .local v2, "marginTop":I
    :try_start_0
    sput v1, Lcn/jingling/lib/textbubble/ImageControl;->mMarginX:I

    .line 63
    sput v2, Lcn/jingling/lib/textbubble/ImageControl;->mMarginY:I

    .line 65
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenInfo;->getScreenHeight()I

    move-result v4

    .line 66
    iget-object v5, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTopMenuLayout:Landroid/view/ViewGroup$LayoutParams;

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 65
    sub-int/2addr v4, v5

    .line 67
    iget-object v5, p0, Lcn/jingling/lib/textbubble/ImageControl;->mBottomMenuLayout:Landroid/view/ViewGroup$LayoutParams;

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 65
    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    sput v4, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutHeight:I

    .line 70
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenInfo;->getScreenWidth()I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    sput v4, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutWidth:I

    .line 72
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    sget v4, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutWidth:I

    sget v5, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutHeight:I

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 74
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    .line 76
    iget-object v4, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v4, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    iget-object v4, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 80
    iget-object v4, p0, Lcn/jingling/lib/textbubble/ImageControl;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v4, p2, :cond_0

    .line 81
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/ImageControl;->releaseBitmap()V

    .line 83
    :cond_0
    iput-object p2, p0, Lcn/jingling/lib/textbubble/ImageControl;->mBitmap:Landroid/graphics/Bitmap;

    .line 84
    iget-object v4, p0, Lcn/jingling/lib/textbubble/ImageControl;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpWidth:I

    .line 85
    iget-object v4, p0, Lcn/jingling/lib/textbubble/ImageControl;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpHeight:I

    .line 87
    iget-object v4, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->invalidate()V

    .line 89
    invoke-virtual {p0, p3}, Lcn/jingling/lib/textbubble/ImageControl;->init(Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    .line 17
    iput-object v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mBitmap:Landroid/graphics/Bitmap;

    .line 18
    iput-object v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    .line 20
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mFlagMove:Ljava/lang/Boolean;

    .line 21
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mFlagZoom:Ljava/lang/Boolean;

    .line 22
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mFlagRotate:Ljava/lang/Boolean;

    .line 33
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mScale:F

    .line 39
    const v3, 0x3f866666    # 1.05f

    iput v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mMaxOneStepScaleLimit:F

    .line 40
    const v3, 0x3f733333    # 0.95f

    iput v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mMinOneStepScaleLimit:F

    .line 41
    const/16 v3, 0xff

    iput v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mAlpha:I

    .line 43
    iput-boolean v4, p0, Lcn/jingling/lib/textbubble/ImageControl;->mControlEnabled:Z

    .line 154
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 158
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 159
    .local v1, "margin":I
    const/4 v2, 0x0

    .line 161
    .local v2, "marginTop":I
    sput v1, Lcn/jingling/lib/textbubble/ImageControl;->mMarginX:I

    .line 162
    sput v2, Lcn/jingling/lib/textbubble/ImageControl;->mMarginY:I

    .line 168
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    sput v3, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutHeight:I

    .line 169
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    sput v3, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutWidth:I

    .line 170
    const-string v3, "imagecontrol"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "222 bitmap "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "construct mlayoutheight "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "width "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iput-object p1, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    .line 175
    iget-object v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v3, p2, :cond_0

    .line 176
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/ImageControl;->releaseBitmap()V

    .line 178
    :cond_0
    iput-object p2, p0, Lcn/jingling/lib/textbubble/ImageControl;->mBitmap:Landroid/graphics/Bitmap;

    .line 183
    iget-object v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 184
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/ImageControl;->initializeData()Z

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;II)V
    .locals 6
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    .line 17
    iput-object v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mBitmap:Landroid/graphics/Bitmap;

    .line 18
    iput-object v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    .line 20
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mFlagMove:Ljava/lang/Boolean;

    .line 21
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mFlagZoom:Ljava/lang/Boolean;

    .line 22
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mFlagRotate:Ljava/lang/Boolean;

    .line 33
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mScale:F

    .line 39
    const v3, 0x3f866666    # 1.05f

    iput v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mMaxOneStepScaleLimit:F

    .line 40
    const v3, 0x3f733333    # 0.95f

    iput v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mMinOneStepScaleLimit:F

    .line 41
    const/16 v3, 0xff

    iput v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mAlpha:I

    .line 43
    iput-boolean v4, p0, Lcn/jingling/lib/textbubble/ImageControl;->mControlEnabled:Z

    .line 112
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 116
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 117
    .local v1, "margin":I
    const/4 v2, 0x0

    .line 119
    .local v2, "marginTop":I
    sput v1, Lcn/jingling/lib/textbubble/ImageControl;->mMarginX:I

    .line 120
    sput v2, Lcn/jingling/lib/textbubble/ImageControl;->mMarginY:I

    .line 126
    sput p4, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutHeight:I

    .line 127
    sput p3, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutWidth:I

    .line 129
    const-string v3, "imagecontrol"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "111 bitmap "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "construct mlayoutheight "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "width "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iput-object p1, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    .line 134
    iget-object v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v3, p2, :cond_0

    .line 135
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/ImageControl;->releaseBitmap()V

    .line 137
    :cond_0
    iput-object p2, p0, Lcn/jingling/lib/textbubble/ImageControl;->mBitmap:Landroid/graphics/Bitmap;

    .line 142
    iget-object v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 143
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/ImageControl;->initializeData()Z

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V
    .locals 5
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "p"    # Landroid/graphics/Point;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    .line 17
    iput-object v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mBitmap:Landroid/graphics/Bitmap;

    .line 18
    iput-object v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    .line 20
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mFlagMove:Ljava/lang/Boolean;

    .line 21
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mFlagZoom:Ljava/lang/Boolean;

    .line 22
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mFlagRotate:Ljava/lang/Boolean;

    .line 33
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mScale:F

    .line 39
    const v3, 0x3f866666    # 1.05f

    iput v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mMaxOneStepScaleLimit:F

    .line 40
    const v3, 0x3f733333    # 0.95f

    iput v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mMinOneStepScaleLimit:F

    .line 41
    const/16 v3, 0xff

    iput v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mAlpha:I

    .line 43
    iput-boolean v4, p0, Lcn/jingling/lib/textbubble/ImageControl;->mControlEnabled:Z

    .line 193
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 197
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 198
    .local v1, "margin":I
    const/4 v2, 0x0

    .line 200
    .local v2, "marginTop":I
    sput v1, Lcn/jingling/lib/textbubble/ImageControl;->mMarginX:I

    .line 201
    sput v2, Lcn/jingling/lib/textbubble/ImageControl;->mMarginY:I

    .line 203
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenInfo;->getScreenHeight()I

    move-result v3

    .line 204
    iget-object v4, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTopMenuLayout:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 203
    sub-int/2addr v3, v4

    .line 205
    iget-object v4, p0, Lcn/jingling/lib/textbubble/ImageControl;->mBottomMenuLayout:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 203
    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    sput v3, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutHeight:I

    .line 208
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenInfo;->getScreenWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    sput v3, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutWidth:I

    .line 210
    iput-object p1, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    .line 211
    iget-object v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v3, p2, :cond_0

    .line 212
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/ImageControl;->releaseBitmap()V

    .line 214
    :cond_0
    iput-object p2, p0, Lcn/jingling/lib/textbubble/ImageControl;->mBitmap:Landroid/graphics/Bitmap;

    .line 219
    iget-object v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 220
    invoke-virtual {p0, p3}, Lcn/jingling/lib/textbubble/ImageControl;->initializeData(Landroid/graphics/Point;)Z

    .line 221
    return-void
.end method

.method private checkMatrix(Landroid/graphics/Matrix;)Z
    .locals 13
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 299
    const/16 v10, 0x9

    new-array v1, v10, [F

    .line 300
    .local v1, "values":[F
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 302
    const/4 v10, 0x0

    aget v10, v1, v10

    const/4 v11, 0x0

    mul-float/2addr v10, v11

    const/4 v11, 0x1

    aget v11, v1, v11

    const/4 v12, 0x0

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    const/4 v11, 0x2

    aget v11, v1, v11

    add-float v2, v10, v11

    .line 303
    .local v2, "x1":F
    const/4 v10, 0x3

    aget v10, v1, v10

    const/4 v11, 0x0

    mul-float/2addr v10, v11

    const/4 v11, 0x4

    aget v11, v1, v11

    const/4 v12, 0x0

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    const/4 v11, 0x5

    aget v11, v1, v11

    add-float v6, v10, v11

    .line 304
    .local v6, "y1":F
    const/4 v10, 0x0

    aget v10, v1, v10

    iget v11, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpWidth:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const/4 v11, 0x1

    aget v11, v1, v11

    const/4 v12, 0x0

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    const/4 v11, 0x2

    aget v11, v1, v11

    add-float v3, v10, v11

    .line 305
    .local v3, "x2":F
    const/4 v10, 0x3

    aget v10, v1, v10

    iget v11, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpWidth:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const/4 v11, 0x4

    aget v11, v1, v11

    const/4 v12, 0x0

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    const/4 v11, 0x5

    aget v11, v1, v11

    add-float v7, v10, v11

    .line 306
    .local v7, "y2":F
    const/4 v10, 0x0

    aget v10, v1, v10

    const/4 v11, 0x0

    mul-float/2addr v10, v11

    const/4 v11, 0x1

    aget v11, v1, v11

    iget v12, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpHeight:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    const/4 v11, 0x2

    aget v11, v1, v11

    add-float v4, v10, v11

    .line 307
    .local v4, "x3":F
    const/4 v10, 0x3

    aget v10, v1, v10

    const/4 v11, 0x0

    mul-float/2addr v10, v11

    const/4 v11, 0x4

    aget v11, v1, v11

    iget v12, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpHeight:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    const/4 v11, 0x5

    aget v11, v1, v11

    add-float v8, v10, v11

    .line 308
    .local v8, "y3":F
    const/4 v10, 0x0

    aget v10, v1, v10

    iget v11, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpWidth:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const/4 v11, 0x1

    aget v11, v1, v11

    iget v12, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpHeight:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    const/4 v11, 0x2

    aget v11, v1, v11

    add-float v5, v10, v11

    .line 309
    .local v5, "x4":F
    const/4 v10, 0x3

    aget v10, v1, v10

    iget v11, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpWidth:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const/4 v11, 0x4

    aget v11, v1, v11

    iget v12, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpHeight:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    const/4 v11, 0x5

    aget v11, v1, v11

    add-float v9, v10, v11

    .line 312
    .local v9, "y4":F
    const/16 v0, 0x28

    .line 313
    .local v0, "range":I
    int-to-float v10, v0

    cmpg-float v10, v2, v10

    if-gez v10, :cond_0

    int-to-float v10, v0

    cmpg-float v10, v3, v10

    if-gez v10, :cond_0

    int-to-float v10, v0

    cmpg-float v10, v4, v10

    if-gez v10, :cond_0

    int-to-float v10, v0

    cmpg-float v10, v5, v10

    if-ltz v10, :cond_3

    .line 314
    :cond_0
    sget v10, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutWidth:I

    sub-int/2addr v10, v0

    int-to-float v10, v10

    cmpl-float v10, v2, v10

    if-lez v10, :cond_1

    sget v10, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutWidth:I

    sub-int/2addr v10, v0

    int-to-float v10, v10

    cmpl-float v10, v3, v10

    if-lez v10, :cond_1

    sget v10, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutWidth:I

    sub-int/2addr v10, v0

    int-to-float v10, v10

    cmpl-float v10, v4, v10

    if-lez v10, :cond_1

    sget v10, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutWidth:I

    sub-int/2addr v10, v0

    int-to-float v10, v10

    cmpl-float v10, v5, v10

    if-gtz v10, :cond_3

    .line 315
    :cond_1
    int-to-float v10, v0

    cmpg-float v10, v6, v10

    if-gez v10, :cond_2

    int-to-float v10, v0

    cmpg-float v10, v7, v10

    if-gez v10, :cond_2

    int-to-float v10, v0

    cmpg-float v10, v8, v10

    if-gez v10, :cond_2

    int-to-float v10, v0

    cmpg-float v10, v9, v10

    if-ltz v10, :cond_3

    .line 316
    :cond_2
    sget v10, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutHeight:I

    sub-int/2addr v10, v0

    int-to-float v10, v10

    cmpl-float v10, v6, v10

    if-lez v10, :cond_4

    sget v10, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutHeight:I

    sub-int/2addr v10, v0

    int-to-float v10, v10

    cmpl-float v10, v7, v10

    if-lez v10, :cond_4

    sget v10, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutHeight:I

    sub-int/2addr v10, v0

    int-to-float v10, v10

    cmpl-float v10, v8, v10

    if-lez v10, :cond_4

    sget v10, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutHeight:I

    sub-int/2addr v10, v0

    int-to-float v10, v10

    cmpl-float v10, v9, v10

    if-lez v10, :cond_4

    .line 317
    :cond_3
    const/4 v10, 0x1

    .line 319
    :goto_0
    return v10

    :cond_4
    const/4 v10, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeImageView(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "moveMatrix"    # Landroid/graphics/Matrix;
    .param p2, "zoomMatrix"    # Landroid/graphics/Matrix;
    .param p3, "rotateMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 346
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 347
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 348
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 350
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 352
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 354
    return-void
.end method

.method public changeImageViewHasRange(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "moveMatrix"    # Landroid/graphics/Matrix;
    .param p2, "zoomMatrix"    # Landroid/graphics/Matrix;
    .param p3, "rotateMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 325
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 326
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 327
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 328
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 329
    invoke-virtual {v0, p3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 331
    invoke-direct {p0, v0}, Lcn/jingling/lib/textbubble/ImageControl;->checkMatrix(Landroid/graphics/Matrix;)Z

    move-result v1

    .line 333
    .local v1, "tempFlag":Z
    if-nez v1, :cond_0

    .line 334
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 335
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 336
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 338
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 339
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    .line 341
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcn/jingling/lib/textbubble/ImageControl;->mAlpha:I

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ImageControl;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getImageRect()Lcn/jingling/lib/textbubble/MyRect;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 517
    new-instance v0, Lcn/jingling/lib/textbubble/MyRect;

    invoke-direct {v0}, Lcn/jingling/lib/textbubble/MyRect;-><init>()V

    .line 518
    .local v0, "rect":Lcn/jingling/lib/textbubble/MyRect;
    new-instance v1, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-direct {v1, v4, v4}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(FF)V

    iput-object v1, v0, Lcn/jingling/lib/textbubble/MyRect;->p1:Lcn/jingling/lib/textbubble/MyPoint;

    .line 519
    new-instance v1, Lcn/jingling/lib/textbubble/MyPoint;

    iget v2, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpHeight:I

    int-to-float v2, v2

    invoke-direct {v1, v4, v2}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(FF)V

    iput-object v1, v0, Lcn/jingling/lib/textbubble/MyRect;->p2:Lcn/jingling/lib/textbubble/MyPoint;

    .line 520
    new-instance v1, Lcn/jingling/lib/textbubble/MyPoint;

    iget v2, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpHeight:I

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(FF)V

    iput-object v1, v0, Lcn/jingling/lib/textbubble/MyRect;->p3:Lcn/jingling/lib/textbubble/MyPoint;

    .line 521
    new-instance v1, Lcn/jingling/lib/textbubble/MyPoint;

    iget v2, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpWidth:I

    int-to-float v2, v2

    invoke-direct {v1, v2, v4}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(FF)V

    iput-object v1, v0, Lcn/jingling/lib/textbubble/MyRect;->p4:Lcn/jingling/lib/textbubble/MyPoint;

    .line 522
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcn/jingling/lib/textbubble/MyRect;->giveRectAfterTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyRect;

    move-result-object v1

    return-object v1
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getMidPoint()Lcn/jingling/lib/textbubble/MyPoint;
    .locals 3

    .prologue
    .line 358
    new-instance v0, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-direct {v0}, Lcn/jingling/lib/textbubble/MyPoint;-><init>()V

    .line 359
    .local v0, "midPoint":Lcn/jingling/lib/textbubble/MyPoint;
    iget v1, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcn/jingling/lib/textbubble/MyPoint;->set(FF)V

    .line 360
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcn/jingling/lib/textbubble/MyPoint;->givePointAfterTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v0

    .line 361
    return-object v0
.end method

.method public inValidateImageView()V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 389
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 390
    return-void
.end method

.method public init(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 100
    iput-object p1, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    .line 101
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 102
    return-void
.end method

.method public initializeData()Z
    .locals 4

    .prologue
    .line 229
    :try_start_0
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 231
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ImageControl;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpWidth:I

    .line 232
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ImageControl;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpHeight:I

    .line 233
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    .line 235
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 237
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    sget v2, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 238
    sget v2, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 240
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    const/4 v2, 0x1

    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    return v2

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 246
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public initializeData(Landroid/graphics/Point;)Z
    .locals 1
    .param p1, "p"    # Landroid/graphics/Point;

    .prologue
    .line 224
    const/4 v0, 0x1

    return v0
.end method

.method public isContainPoint(Lcn/jingling/lib/textbubble/MyPoint;I)Ljava/lang/Boolean;
    .locals 4
    .param p1, "point"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p2, "bound"    # I

    .prologue
    const/4 v3, 0x0

    .line 428
    iget-object v1, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Lcn/jingling/lib/textbubble/MyPoint;->givePointBeforTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v0

    .line 441
    .local v0, "p":Lcn/jingling/lib/textbubble/MyPoint;
    iget v1, v0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_0

    iget v1, v0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v2, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpWidth:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v1, v0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_0

    iget v1, v0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    iget v2, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpHeight:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 442
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 445
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public isControlEnabled()Z
    .locals 1

    .prologue
    .line 542
    iget-boolean v0, p0, Lcn/jingling/lib/textbubble/ImageControl;->mControlEnabled:Z

    return v0
.end method

.method public rebound()V
    .locals 14

    .prologue
    .line 456
    const/16 v5, 0x9

    new-array v4, v5, [F

    .line 457
    .local v4, "values":[F
    iget-object v5, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 459
    const/4 v5, 0x0

    aget v5, v4, v5

    float-to-double v6, v5

    .line 460
    .local v6, "xscale":D
    const/4 v5, 0x4

    aget v5, v4, v5

    float-to-double v8, v5

    .line 462
    .local v8, "yscale":D
    const/4 v5, 0x2

    aget v5, v4, v5

    float-to-double v0, v5

    .line 463
    .local v0, "dx":D
    const/4 v5, 0x5

    aget v5, v4, v5

    float-to-double v2, v5

    .line 465
    .local v2, "dy":D
    const-wide/16 v10, 0x0

    cmpl-double v5, v0, v10

    if-lez v5, :cond_0

    iget v5, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpWidth:I

    int-to-double v10, v5

    mul-double/2addr v10, v6

    add-double/2addr v10, v0

    sget v5, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutWidth:I

    int-to-double v12, v5

    cmpl-double v5, v10, v12

    if-lez v5, :cond_0

    .line 466
    iget v5, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpWidth:I

    int-to-double v10, v5

    mul-double/2addr v10, v6

    sget v5, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutWidth:I

    int-to-double v12, v5

    cmpl-double v5, v10, v12

    if-lez v5, :cond_6

    .line 467
    const-wide/16 v0, 0x0

    .line 473
    :cond_0
    :goto_0
    const-wide/16 v10, 0x0

    cmpg-double v5, v0, v10

    if-gez v5, :cond_1

    iget v5, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpWidth:I

    int-to-double v10, v5

    mul-double/2addr v10, v6

    add-double/2addr v10, v0

    sget v5, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutWidth:I

    int-to-double v12, v5

    cmpg-double v5, v10, v12

    if-gez v5, :cond_1

    .line 474
    iget v5, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpWidth:I

    int-to-double v10, v5

    mul-double/2addr v10, v6

    sget v5, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutWidth:I

    int-to-double v12, v5

    cmpl-double v5, v10, v12

    if-lez v5, :cond_7

    .line 475
    sget v5, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutWidth:I

    int-to-double v10, v5

    iget v5, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpWidth:I

    int-to-double v12, v5

    mul-double/2addr v12, v6

    sub-double v0, v10, v12

    .line 481
    :cond_1
    :goto_1
    const-wide/16 v10, 0x0

    cmpl-double v5, v2, v10

    if-lez v5, :cond_2

    iget v5, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpHeight:I

    int-to-double v10, v5

    mul-double/2addr v10, v8

    add-double/2addr v10, v2

    sget v5, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutHeight:I

    int-to-double v12, v5

    cmpl-double v5, v10, v12

    if-lez v5, :cond_2

    .line 482
    iget v5, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpHeight:I

    int-to-double v10, v5

    mul-double/2addr v10, v8

    sget v5, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutHeight:I

    int-to-double v12, v5

    cmpl-double v5, v10, v12

    if-lez v5, :cond_8

    .line 483
    const-wide/16 v2, 0x0

    .line 489
    :cond_2
    :goto_2
    const-wide/16 v10, 0x0

    cmpg-double v5, v2, v10

    if-gez v5, :cond_3

    iget v5, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpHeight:I

    int-to-double v10, v5

    mul-double/2addr v10, v8

    add-double/2addr v10, v2

    sget v5, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutHeight:I

    int-to-double v12, v5

    cmpg-double v5, v10, v12

    if-gez v5, :cond_3

    .line 490
    iget v5, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpHeight:I

    int-to-double v10, v5

    mul-double/2addr v10, v8

    sget v5, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutHeight:I

    int-to-double v12, v5

    cmpl-double v5, v10, v12

    if-lez v5, :cond_9

    .line 491
    sget v5, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutHeight:I

    int-to-double v10, v5

    iget v5, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpHeight:I

    int-to-double v12, v5

    mul-double/2addr v12, v8

    sub-double v2, v10, v12

    .line 497
    :cond_3
    :goto_3
    const-wide/16 v10, 0x0

    cmpl-double v5, v0, v10

    if-lez v5, :cond_4

    iget v5, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpWidth:I

    int-to-double v10, v5

    mul-double/2addr v10, v6

    add-double/2addr v10, v0

    sget v5, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutWidth:I

    int-to-double v12, v5

    cmpg-double v5, v10, v12

    if-gez v5, :cond_4

    .line 498
    sget v5, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutWidth:I

    int-to-double v10, v5

    iget v5, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpWidth:I

    int-to-double v12, v5

    mul-double/2addr v12, v6

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v0, v10, v12

    .line 501
    :cond_4
    const-wide/16 v10, 0x0

    cmpl-double v5, v2, v10

    if-lez v5, :cond_5

    iget v5, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpHeight:I

    int-to-double v10, v5

    mul-double/2addr v10, v8

    add-double/2addr v10, v2

    sget v5, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutHeight:I

    int-to-double v12, v5

    cmpg-double v5, v10, v12

    if-gez v5, :cond_5

    .line 502
    sget v5, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutHeight:I

    int-to-double v10, v5

    iget v5, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpHeight:I

    int-to-double v12, v5

    mul-double/2addr v12, v8

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v2, v10, v12

    .line 505
    :cond_5
    const/4 v5, 0x0

    double-to-float v10, v6

    aput v10, v4, v5

    .line 506
    const/4 v5, 0x4

    double-to-float v10, v8

    aput v10, v4, v5

    .line 507
    const/4 v5, 0x2

    double-to-float v10, v0

    aput v10, v4, v5

    .line 508
    const/4 v5, 0x5

    double-to-float v10, v2

    aput v10, v4, v5

    .line 510
    iget-object v5, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->setValues([F)V

    .line 512
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/ImageControl;->inValidateImageView()V

    .line 514
    return-void

    .line 469
    :cond_6
    sget v5, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutWidth:I

    int-to-double v10, v5

    iget v5, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpWidth:I

    int-to-double v12, v5

    mul-double/2addr v12, v6

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v0, v10, v12

    goto/16 :goto_0

    .line 477
    :cond_7
    sget v5, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutWidth:I

    int-to-double v10, v5

    iget v5, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpWidth:I

    int-to-double v12, v5

    mul-double/2addr v12, v6

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v0, v10, v12

    goto/16 :goto_1

    .line 485
    :cond_8
    sget v5, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutHeight:I

    int-to-double v10, v5

    iget v5, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpHeight:I

    int-to-double v12, v5

    mul-double/2addr v12, v8

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v2, v10, v12

    goto/16 :goto_2

    .line 493
    :cond_9
    sget v5, Lcn/jingling/lib/textbubble/ImageControl;->mLayoutHeight:I

    int-to-double v10, v5

    iget v5, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpHeight:I

    int-to-double v12, v5

    mul-double/2addr v12, v8

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v2, v10, v12

    goto/16 :goto_3
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->postInvalidate()V

    .line 254
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 527
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 528
    iput-object v1, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    .line 529
    invoke-virtual {p0}, Lcn/jingling/lib/textbubble/ImageControl;->releaseBitmap()V

    .line 530
    return-void
.end method

.method public releaseBitmap()V
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ImageControl;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ImageControl;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 537
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/ImageControl;->mBitmap:Landroid/graphics/Bitmap;

    .line 539
    :cond_0
    return-void
.end method

.method public rotateImageView(FF)V
    .locals 4
    .param p1, "sinValue"    # F
    .param p2, "cosValue"    # F

    .prologue
    .line 379
    new-instance v1, Lcn/jingling/lib/textbubble/MyPoint;

    iget v2, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(FF)V

    .line 380
    .local v1, "point":Lcn/jingling/lib/textbubble/MyPoint;
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Lcn/jingling/lib/textbubble/MyPoint;->givePointAfterTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v1

    .line 382
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 383
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget v2, v1, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v3, v1, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    invoke-virtual {v0, p1, p2, v2, v3}, Landroid/graphics/Matrix;->setSinCos(FFFF)V

    .line 384
    iget-object v2, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 385
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 286
    iput p1, p0, Lcn/jingling/lib/textbubble/ImageControl;->mAlpha:I

    .line 287
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 288
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 278
    iput-object p1, p0, Lcn/jingling/lib/textbubble/ImageControl;->mBitmap:Landroid/graphics/Bitmap;

    .line 279
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ImageControl;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpWidth:I

    .line 280
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ImageControl;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpHeight:I

    .line 281
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/jingling/lib/textbubble/ImageControl;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 282
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 283
    return-void
.end method

.method public setControlEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 546
    iput-boolean p1, p0, Lcn/jingling/lib/textbubble/ImageControl;->mControlEnabled:Z

    .line 547
    return-void
.end method

.method public setFlagMove(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "flagMove"    # Ljava/lang/Boolean;

    .prologue
    .line 257
    iput-object p1, p0, Lcn/jingling/lib/textbubble/ImageControl;->mFlagMove:Ljava/lang/Boolean;

    .line 258
    return-void
.end method

.method public setFlagRotate(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "flagRotate"    # Ljava/lang/Boolean;

    .prologue
    .line 265
    iput-object p1, p0, Lcn/jingling/lib/textbubble/ImageControl;->mFlagRotate:Ljava/lang/Boolean;

    .line 266
    return-void
.end method

.method public setFlagZoom(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "flagZoom"    # Ljava/lang/Boolean;

    .prologue
    .line 261
    iput-object p1, p0, Lcn/jingling/lib/textbubble/ImageControl;->mFlagZoom:Ljava/lang/Boolean;

    .line 262
    return-void
.end method

.method public setImageViewMatrix(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 366
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 368
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 370
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ImageControl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 372
    return-void
.end method

.method public translateImageView(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 375
    iget-object v0, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 376
    return-void
.end method

.method public updateImageView(FFFZLcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)V
    .locals 10
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "scale"    # F
    .param p4, "willRotate"    # Z
    .param p5, "oldFirstPointer"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p6, "newFirstPointer"    # Lcn/jingling/lib/textbubble/MyPoint;

    .prologue
    .line 394
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lcn/jingling/lib/textbubble/ImageControl;->updateImageView(FFFZLcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;ZD)V

    .line 395
    return-void
.end method

.method public updateImageView(FFFZLcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;ZD)V
    .locals 12
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "scale"    # F
    .param p4, "willRotate"    # Z
    .param p5, "oldFirstPointer"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p6, "newFirstPointer"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p7, "isDoAll"    # Z
    .param p8, "rotate"    # D

    .prologue
    .line 400
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 401
    .local v4, "moveMatrix":Landroid/graphics/Matrix;
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 402
    .local v7, "zoomMatrix":Landroid/graphics/Matrix;
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 404
    .local v6, "rotateMatrix":Landroid/graphics/Matrix;
    iget-object v8, p0, Lcn/jingling/lib/textbubble/ImageControl;->mFlagZoom:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 405
    new-instance v5, Lcn/jingling/lib/textbubble/MyPoint;

    iget v8, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpWidth:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iget v9, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpHeight:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-direct {v5, v8, v9}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(FF)V

    .line 406
    .local v5, "point":Lcn/jingling/lib/textbubble/MyPoint;
    iget-object v8, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v8}, Lcn/jingling/lib/textbubble/MyPoint;->givePointAfterTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v5

    .line 407
    iget v8, v5, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    .line 408
    iget v9, v5, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    .line 407
    invoke-virtual {v7, p3, p3, v8, v9}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 411
    .end local v5    # "point":Lcn/jingling/lib/textbubble/MyPoint;
    :cond_0
    iget-object v8, p0, Lcn/jingling/lib/textbubble/ImageControl;->mFlagRotate:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz p4, :cond_2

    .line 412
    new-instance v3, Lcn/jingling/lib/textbubble/MyPoint;

    iget v8, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpWidth:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iget v9, p0, Lcn/jingling/lib/textbubble/ImageControl;->bmpHeight:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-direct {v3, v8, v9}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(FF)V

    .line 413
    .local v3, "midPoint":Lcn/jingling/lib/textbubble/MyPoint;
    iget-object v8, p0, Lcn/jingling/lib/textbubble/ImageControl;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v8}, Lcn/jingling/lib/textbubble/MyPoint;->givePointAfterTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v3

    .line 415
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-static {v0, v1, v3}, Lcn/jingling/lib/textbubble/MyPoint;->getSinCos(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v2

    .line 417
    .local v2, "angle":Lcn/jingling/lib/textbubble/MyPoint;
    iget v8, v2, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v9, v2, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    iget v10, v3, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v11, v3, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/graphics/Matrix;->setSinCos(FFFF)V

    .line 423
    .end local v2    # "angle":Lcn/jingling/lib/textbubble/MyPoint;
    .end local v3    # "midPoint":Lcn/jingling/lib/textbubble/MyPoint;
    :cond_1
    :goto_0
    invoke-virtual {p0, v4, v7, v6}, Lcn/jingling/lib/textbubble/ImageControl;->changeImageView(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    .line 424
    return-void

    .line 419
    :cond_2
    iget-object v8, p0, Lcn/jingling/lib/textbubble/ImageControl;->mFlagMove:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 420
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0
.end method
