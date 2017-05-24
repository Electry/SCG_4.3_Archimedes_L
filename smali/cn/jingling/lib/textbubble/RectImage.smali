.class public Lcn/jingling/lib/textbubble/RectImage;
.super Lcn/jingling/lib/textbubble/ImageControl;
.source "RectImage.java"


# instance fields
.field private mPreTransMatrix:Landroid/graphics/Matrix;

.field private rawBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcn/jingling/lib/textbubble/ImageControl;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 18
    iput-object p2, p0, Lcn/jingling/lib/textbubble/RectImage;->rawBitmap:Landroid/graphics/Bitmap;

    .line 19
    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcn/jingling/lib/textbubble/RectImage;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/jingling/lib/textbubble/RectImage;->mPreTransMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 73
    iget-object v0, p0, Lcn/jingling/lib/textbubble/RectImage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 74
    return-void
.end method


# virtual methods
.method public updatePositions(DDDD)V
    .locals 19
    .param p1, "x0"    # D
    .param p3, "x1"    # D
    .param p5, "y0"    # D
    .param p7, "y1"    # D

    .prologue
    .line 23
    sub-double v10, p3, p1

    .line 24
    .local v10, "width":D
    sub-double v6, p7, p5

    .line 26
    .local v6, "height":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v14, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/RectImage;->bmpWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v12, v14, v16

    .line 27
    .local v12, "widthScale":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v14, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/RectImage;->bmpHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v8, v14, v16

    .line 29
    .local v8, "heightScale":D
    move-wide/from16 v2, p1

    .line 30
    .local v2, "dx":D
    move-wide/from16 v4, p5

    .line 32
    .local v4, "dy":D
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcn/jingling/lib/textbubble/RectImage;->mTransformMatrix:Landroid/graphics/Matrix;

    .line 34
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/jingling/lib/textbubble/RectImage;->mTransformMatrix:Landroid/graphics/Matrix;

    double-to-float v15, v12

    double-to-float v0, v8

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 35
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/jingling/lib/textbubble/RectImage;->mTransformMatrix:Landroid/graphics/Matrix;

    double-to-float v15, v2

    double-to-float v0, v4

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 37
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/jingling/lib/textbubble/RectImage;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/jingling/lib/textbubble/RectImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 39
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/jingling/lib/textbubble/RectImage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->invalidate()V

    .line 40
    return-void
.end method

.method public updatePositions(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;D)V
    .locals 17
    .param p1, "myPoint"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p2, "myPoint2"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p3, "sideLen"    # D

    .prologue
    .line 45
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/jingling/lib/textbubble/RectImage;->mTransformMatrix:Landroid/graphics/Matrix;

    .line 48
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double v2, v2, p3

    move-object/from16 v0, p0

    iget v4, v0, Lcn/jingling/lib/textbubble/RectImage;->bmpWidth:I

    int-to-double v4, v4

    div-double v14, v2, v4

    .line 49
    .local v14, "widthScale":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double v2, v2, p3

    move-object/from16 v0, p0

    iget v4, v0, Lcn/jingling/lib/textbubble/RectImage;->bmpHeight:I

    int-to-double v4, v4

    div-double v12, v2, v4

    .line 51
    .local v12, "heightScale":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/RectImage;->mTransformMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p2

    iget v3, v0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    move-object/from16 v0, p2

    iget v4, v0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/RectImage;->mTransformMatrix:Landroid/graphics/Matrix;

    double-to-float v3, v14

    double-to-float v4, v12

    .line 55
    move-object/from16 v0, p2

    iget v5, v0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    move-object/from16 v0, p2

    iget v6, v0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    .line 54
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 59
    move-object/from16 v0, p2

    iget v2, v0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    float-to-double v2, v2

    const-wide/16 v4, 0x0

    .line 60
    move-object/from16 v0, p2

    iget v6, v0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    move-object/from16 v0, p1

    iget v7, v0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    move-object/from16 v0, p2

    iget v8, v0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    move-object/from16 v0, p1

    iget v9, v0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    .line 59
    invoke-static/range {v2 .. v9}, Lcn/jingling/lib/textbubble/PointsCaculation;->caculateTwoPointsAngle(DDDD)D

    move-result-wide v10

    .line 62
    .local v10, "angle":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/RectImage;->mTransformMatrix:Landroid/graphics/Matrix;

    double-to-float v3, v10

    move-object/from16 v0, p2

    iget v4, v0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    move-object/from16 v0, p2

    iget v5, v0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 65
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/RectImage;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jingling/lib/textbubble/RectImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 67
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jingling/lib/textbubble/RectImage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    .line 68
    return-void
.end method
