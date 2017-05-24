.class public Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;
.super Landroid/view/View;
.source "FaceBeautyFaceView.java"


# static fields
.field private static final SHADOW_COLOR:I = -0x1000000

.field private static final SHADOW_RADIUS:I = 0x5

.field private static final SHADOW_X:I = 0x3

.field private static final SHADOW_Y:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FaceBeautyFaceView"


# instance fields
.field private counter:I

.field private mAge:Ljava/lang/String;

.field private mAgeAdjChild:[Ljava/lang/String;

.field private mAgeAdjMiddle:[Ljava/lang/String;

.field private mAgeIndexChild:I

.field private mAgeIndexMiddle:I

.field private mAgeRect:Landroid/graphics/Rect;

.field private mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

.field private mClearPaint:Landroid/graphics/Paint;

.field private mClearRect:Landroid/graphics/RectF;

.field private mContext:Landroid/content/Context;

.field private mFaceAge:[I

.field private mFaceNumber:I

.field private mFaceRect:[Landroid/graphics/RectF;

.field private mFaceRectRadius:I

.field private mFemalePaint:Landroid/graphics/Paint;

.field private mHappy:Ljava/lang/String;

.field private mHappyRect:Landroid/graphics/Rect;

.field private mMalePaint:Landroid/graphics/Paint;

.field private mNumberPaint:Landroid/graphics/Paint;

.field private mNumberRect:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mSex:[I

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v7, 0x7f0900c0

    const/16 v3, 0xeb

    const/high16 v6, 0x40400000    # 3.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mClearRect:Landroid/graphics/RectF;

    .line 42
    iput v5, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->counter:I

    .line 48
    iput v5, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mAgeIndexChild:I

    .line 50
    iput v5, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mAgeIndexMiddle:I

    .line 64
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mAgeRect:Landroid/graphics/Rect;

    .line 66
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mHappyRect:Landroid/graphics/Rect;

    .line 68
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mNumberRect:Landroid/graphics/Rect;

    .line 86
    iput-object p1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mContext:Landroid/content/Context;

    .line 87
    const-string v1, "FaceBeautyFaceView"

    const-string v2, "FaceBeautyFaceView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->setWillNotDraw(Z)V

    .line 90
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRectRadius:I

    .line 92
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mPaint:Landroid/graphics/Paint;

    .line 93
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mPaint:Landroid/graphics/Paint;

    const-string v2, "#FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 95
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 98
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mMalePaint:Landroid/graphics/Paint;

    .line 99
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mMalePaint:Landroid/graphics/Paint;

    const-string v2, "#99DEFE"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mMalePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 101
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mMalePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mMalePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFemalePaint:Landroid/graphics/Paint;

    .line 105
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFemalePaint:Landroid/graphics/Paint;

    const-string v2, "#FAA3B9"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFemalePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 107
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFemalePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFemalePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 110
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mTextPaint:Landroid/graphics/Paint;

    .line 111
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v2, v6, v6, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 115
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 117
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mNumberPaint:Landroid/graphics/Paint;

    .line 118
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mNumberPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mNumberPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v2, v6, v6, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 122
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mNumberPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42400000    # 48.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 124
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mClearPaint:Landroid/graphics/Paint;

    .line 125
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mClearPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 126
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mClearPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mAge:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mHappy:Ljava/lang/String;

    .line 130
    const-string v0, "/100"

    .line 132
    .local v0, "tempNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mAge:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mAge:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mAgeRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 133
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mHappy:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mHappy:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mHappyRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 134
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mNumberRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v5, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mAgeAdjChild:[Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mAgeAdjMiddle:[Ljava/lang/String;

    .line 138
    return-void
.end method

.method private drawFaceRect(Landroid/graphics/Canvas;I)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "index"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v7, 0x0

    const/high16 v6, 0x42b40000    # 90.0f

    .line 215
    iget-object v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mSex:[I

    aget v0, v0, p2

    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mMalePaint:Landroid/graphics/Paint;

    .line 217
    .local v5, "paint":Landroid/graphics/Paint;
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mClearRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v2, v2, p2

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 218
    iget-object v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mClearRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mClearRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mNumberRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x41a00000    # 20.0f

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 219
    iget-object v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mClearRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v2, v2, p2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mNumberRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mHappyRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mClearRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mClearRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 221
    iget-object v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mClearRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mClearRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 224
    iget-object v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRectRadius:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mClearRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 226
    iget-object v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRectRadius:I

    int-to-float v2, v2

    add-float v1, v0, v2

    iget-object v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRectRadius:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget-object v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 228
    iget-object v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRectRadius:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRectRadius:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 230
    iget-object v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mClearRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRectRadius:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget-object v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 232
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 234
    .local v1, "oval":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 235
    iget v0, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRectRadius:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 236
    iget v0, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRectRadius:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 237
    const/high16 v2, 0x43340000    # 180.0f

    move-object v0, p1

    move v3, v6

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 240
    iget-object v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 241
    iget v0, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRectRadius:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 242
    iget v0, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRectRadius:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 243
    const/high16 v2, -0x3d4c0000    # -90.0f

    move-object v0, p1

    move v3, v6

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 246
    iget-object v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 247
    iget v0, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRectRadius:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 248
    iget v0, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRectRadius:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 249
    const/4 v2, 0x0

    move-object v0, p1

    move v3, v6

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 250
    return-void

    .line 215
    .end local v1    # "oval":Landroid/graphics/RectF;
    .end local v5    # "paint":Landroid/graphics/Paint;
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFemalePaint:Landroid/graphics/Paint;

    goto/16 :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v7, 0xd

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v6, 0x1

    .line 254
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 258
    sget v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBeautyMode:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceNumber:I

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/lenovo/scg/camera/front/FrontUtil;->sShowBeautyRect:Z

    if-nez v1, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceNumber:I

    if-ge v0, v1, :cond_9

    .line 266
    sget v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBeautyMode:I

    if-ne v1, v6, :cond_8

    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mSex:[I

    aget v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mSex:[I

    aget v1, v1, v0

    if-ne v1, v6, :cond_8

    .line 268
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 269
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getOrientation()I

    move-result v1

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 271
    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->drawFaceRect(Landroid/graphics/Canvas;I)V

    .line 273
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mHappy:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 275
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getSmileLevel()[I

    move-result-object v1

    if-eqz v1, :cond_3

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getSmileLevel()[I

    move-result-object v2

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mHappyRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 280
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mSex:[I

    aget v1, v1, v0

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceAge:[I

    aget v1, v1, v0

    if-lt v1, v7, :cond_4

    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceAge:[I

    aget v1, v1, v0

    const/16 v2, 0x2d

    if-le v1, v2, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mSex:[I

    aget v1, v1, v0

    if-ne v1, v6, :cond_6

    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceAge:[I

    aget v1, v1, v0

    if-lt v1, v7, :cond_6

    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceAge:[I

    aget v1, v1, v0

    const/16 v2, 0x1d

    if-gt v1, v2, :cond_6

    .line 282
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mAge:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mNumberRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v3, v5

    iget-object v4, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceAge:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mAgeRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mNumberRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v3, v5

    iget-object v4, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 292
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 262
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 286
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceAge:[I

    aget v1, v1, v0

    if-ge v1, v7, :cond_7

    .line 287
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mAgeAdjChild:[Ljava/lang/String;

    iget v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mAgeIndexChild:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mNumberRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v3, v5

    iget-object v4, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 289
    :cond_7
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mAgeAdjMiddle:[Ljava/lang/String;

    iget v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mAgeIndexMiddle:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mNumberRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v3, v5

    iget-object v4, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 294
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 295
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getOrientation()I

    move-result v1

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 296
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRectRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRectRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 297
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3

    .line 303
    :cond_9
    iget v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->counter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->counter:I

    .line 304
    iget v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->counter:I

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_0

    .line 305
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mAgeAdjChild:[Ljava/lang/String;

    array-length v1, v1

    if-le v1, v6, :cond_a

    .line 306
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mAgeAdjChild:[Ljava/lang/String;

    array-length v1, v1

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mAgeIndexChild:I

    .line 308
    :cond_a
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mAgeAdjMiddle:[Ljava/lang/String;

    array-length v1, v1

    if-le v1, v6, :cond_b

    .line 309
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mAgeAdjMiddle:[Ljava/lang/String;

    array-length v1, v1

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mAgeIndexMiddle:I

    .line 311
    :cond_b
    const-string v1, "FaceBeautyFaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAgeIndexChild:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mAgeIndexChild:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mAgeIndexMiddle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mAgeIndexMiddle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v1, 0x0

    iput v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->counter:I

    goto/16 :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceNumber:I

    .line 157
    return-void
.end method

.method public setController(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V
    .locals 2
    .param p1, "controller"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .prologue
    .line 141
    const-string v0, "FaceBeautyFaceView"

    const-string/jumbo v1, "setController"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iput-object p1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 143
    return-void
.end method

.method public setMaxFaceNum(I)V
    .locals 3
    .param p1, "num"    # I

    .prologue
    .line 146
    new-array v1, p1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    .line 150
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_0
    return-void
.end method

.method public setRect(I[Landroid/graphics/Rect;[I[I[I)V
    .locals 8
    .param p1, "number"    # I
    .param p2, "rect"    # [Landroid/graphics/Rect;
    .param p3, "oriention"    # [I
    .param p4, "sex"    # [I
    .param p5, "age"    # [I

    .prologue
    .line 162
    iget-object v5, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 163
    .local v2, "mParameters":Landroid/hardware/Camera$Parameters;
    if-nez v2, :cond_0

    .line 212
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 168
    .local v3, "mPreviewSzie":Landroid/hardware/Camera$Size;
    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    if-eqz v5, :cond_1

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    if-nez v5, :cond_2

    .line 169
    :cond_1
    const-string v5, "FaceBeautyFaceView"

    const-string/jumbo v6, "rect == null || sex == null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->postInvalidate()V

    goto :goto_0

    .line 171
    :cond_2
    const-string v5, "FaceBeautyFaceView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "number = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v4, 0x0

    .line 175
    .local v4, "mWScale":F
    const/4 v1, 0x0

    .line 176
    .local v1, "mHScale":F
    invoke-static {}, Lcom/lenovo/scg/camera/front/FrontUtil;->getRatio()Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    move-result-object v5

    sget-object v6, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;->BIG:Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    if-ne v5, v6, :cond_4

    .line 177
    sget v5, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenWidth:I

    int-to-float v5, v5

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 178
    sget v5, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenHeight:I

    int-to-float v5, v5

    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 184
    :cond_3
    :goto_2
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_3
    if-ge v0, p1, :cond_5

    .line 200
    iget-object v5, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v5, v5, v0

    sget v6, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenWidth:I

    int-to-float v6, v6

    aget-object v7, p2, v0

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    mul-float/2addr v7, v4

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 201
    iget-object v5, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v5, v5, v0

    sget v6, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenHeight:I

    invoke-static {}, Lcom/lenovo/scg/camera/front/FrontUtil;->getBottomSpace()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    aget-object v7, p2, v0

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    mul-float/2addr v7, v1

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 202
    iget-object v5, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v5, v5, v0

    sget v6, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenWidth:I

    int-to-float v6, v6

    aget-object v7, p2, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    mul-float/2addr v7, v4

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 203
    iget-object v5, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v5, v5, v0

    sget v6, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenHeight:I

    invoke-static {}, Lcom/lenovo/scg/camera/front/FrontUtil;->getBottomSpace()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    aget-object v7, p2, v0

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    mul-float/2addr v7, v1

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 179
    .end local v0    # "index":I
    :cond_4
    invoke-static {}, Lcom/lenovo/scg/camera/front/FrontUtil;->getRatio()Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    move-result-object v5

    sget-object v6, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;->SAMLL:Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    if-ne v5, v6, :cond_3

    .line 180
    sget v5, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenWidth:I

    int-to-float v5, v5

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 181
    sget v5, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenWidth:I

    int-to-float v5, v5

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v5, v6

    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    int-to-float v6, v6

    div-float v1, v5, v6

    goto :goto_2

    .line 206
    .restart local v0    # "index":I
    :cond_5
    iput p1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceNumber:I

    .line 207
    iput-object p5, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mFaceAge:[I

    .line 208
    iput-object p4, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyFaceView;->mSex:[I

    goto/16 :goto_1
.end method
