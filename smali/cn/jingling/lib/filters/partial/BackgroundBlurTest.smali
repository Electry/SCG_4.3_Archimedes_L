.class public Lcn/jingling/lib/filters/partial/BackgroundBlurTest;
.super Lcn/jingling/lib/filters/PartialFilter;
.source "BackgroundBlurTest.java"


# static fields
.field private static final MODE_MOVE:I = 0x1

.field private static final MODE_NORMAL:I = 0x0

.field private static final MODE_ZOOM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BackgroundBlur"


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mMaxRadius:I

.field private mMinRadius:I

.field private mMode:I

.field private mOriginalBitmap:Landroid/graphics/Bitmap;

.field private mPerformedBitmap:Landroid/graphics/Bitmap;

.field private mRadius:I

.field private mSelection:Lcn/jingling/lib/filters/ImageSelection;

.field private mX0:I

.field private mX1:I

.field private mY0:I

.field private mY1:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcn/jingling/lib/filters/PartialFilter;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mMode:I

    .line 15
    return-void
.end method

.method private dist(FFFF)I
    .locals 5
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F

    .prologue
    .line 111
    sub-float v2, p1, p3

    sub-float v3, p1, p3

    mul-float/2addr v2, v3

    sub-float v3, p2, p4

    sub-float v4, p2, p4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 112
    .local v0, "d":D
    double-to-int v2, v0

    return v2
.end method

.method private drawCircle(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 116
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 117
    .local v1, "p":Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 119
    .local v0, "c":Landroid/graphics/Canvas;
    iget v2, p0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mCenterX:I

    int-to-float v2, v2

    iget v3, p0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mCenterY:I

    int-to-float v3, v3

    iget v4, p0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mRadius:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 120
    return-void
.end method

.method private setCenter(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "p"    # Landroid/graphics/Point;

    .prologue
    .line 75
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mCenterX:I

    .line 76
    iget v0, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mCenterY:I

    .line 77
    return-void
.end method

.method private setCoord(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 104
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mX0:I

    .line 105
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mY0:I

    .line 106
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mX1:I

    .line 107
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mY1:I

    .line 108
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 17
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "point"    # Landroid/graphics/Point;

    .prologue
    .line 85
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iput v1, v0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mCenterX:I

    .line 86
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iput v1, v0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mCenterY:I

    .line 88
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 89
    .local v4, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 90
    .local v8, "h":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mSelection:Lcn/jingling/lib/filters/ImageSelection;

    move-object/from16 v0, p0

    iget v3, v0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mCenterX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mCenterY:I

    move-object/from16 v0, p0

    iget v6, v0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mRadius:I

    move-object/from16 v0, p0

    iget v7, v0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mRadius:I

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v1, v3, v5, v6, v7}, Lcn/jingling/lib/filters/ImageSelection;->selectRound(IIII)V

    .line 91
    mul-int v1, v4, v8

    new-array v2, v1, [I

    .line 92
    .local v2, "pixels":[I
    mul-int v1, v4, v8

    new-array v10, v1, [I

    .line 93
    .local v10, "layerPixels":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mOriginalBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 94
    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mPerformedBitmap:Landroid/graphics/Bitmap;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v12, v4

    move v15, v4

    move/from16 v16, v8

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 96
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mSelection:Lcn/jingling/lib/filters/ImageSelection;

    invoke-virtual {v1}, Lcn/jingling/lib/filters/ImageSelection;->getPixels()[I

    move-result-object v1

    .line 95
    invoke-static {v2, v10, v1, v4, v8}, Lcn/jingling/lib/filters/CMTProcessor;->mergeSelection([I[I[III)V

    .line 97
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 98
    return-object p1
.end method

.method public getCenter()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mCenterX:I

    iget v2, p0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mCenterY:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcn/jingling/lib/filters/PartialFilter;->release()V

    .line 125
    iget-object v0, p0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mPerformedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 126
    return-void
.end method

.method public setup(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-super {p0, p1, p2}, Lcn/jingling/lib/filters/PartialFilter;->setup(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 34
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {p2, v0, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 35
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 36
    .local v3, "w":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 37
    .local v7, "h":I
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mMinRadius:I

    .line 38
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mMaxRadius:I

    .line 39
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mPerformedBitmap:Landroid/graphics/Bitmap;

    .line 40
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "pixels":[I
    move-object v0, p2

    move v4, v2

    move v5, v2

    move v6, v3

    .line 41
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 42
    const/16 v0, 0x8

    invoke-static {v1, v3, v7, v0}, Lcn/jingling/lib/filters/CMTProcessor;->fastAverageBlur([IIII)V

    .line 43
    iget-object v0, p0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mPerformedBitmap:Landroid/graphics/Bitmap;

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 44
    new-instance v0, Lcn/jingling/lib/filters/ImageSelection;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v0, v2, v4}, Lcn/jingling/lib/filters/ImageSelection;-><init>(II)V

    iput-object v0, p0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mSelection:Lcn/jingling/lib/filters/ImageSelection;

    .line 45
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mRadius:I

    .line 46
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mCenterX:I

    .line 47
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mCenterY:I

    .line 48
    iget-object v0, p0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mSelection:Lcn/jingling/lib/filters/ImageSelection;

    iget v2, p0, Lcn/jingling/lib/filters/partial/BackgroundBlurTest;->mRadius:I

    sget-object v4, Lcn/jingling/lib/filters/ImageSelection$Align;->CENTER:Lcn/jingling/lib/filters/ImageSelection$Align;

    invoke-virtual {v0, v2, v4}, Lcn/jingling/lib/filters/ImageSelection;->selectRound(ILcn/jingling/lib/filters/ImageSelection$Align;)V

    .line 49
    return-void
.end method
