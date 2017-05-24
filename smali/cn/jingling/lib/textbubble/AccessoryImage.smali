.class public Lcn/jingling/lib/textbubble/AccessoryImage;
.super Lcn/jingling/lib/textbubble/ImageControl;
.source "AccessoryImage.java"


# static fields
.field protected static final DELETE_DIST_LIMIT:I = 0x50

.field protected static MAX_SCALE_LIMIT:F

.field protected static MIN_SCALE_LIMIT:F

.field private static defaultZoom:F


# instance fields
.field private mEnableRotate:Z

.field protected mEnter:Ljava/lang/Boolean;

.field private mInitialGroudScale:F

.field protected mLeave:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/high16 v0, 0x40800000    # 4.0f

    sput v0, Lcn/jingling/lib/textbubble/AccessoryImage;->MAX_SCALE_LIMIT:F

    .line 15
    const v0, 0x3dcccccd    # 0.1f

    sput v0, Lcn/jingling/lib/textbubble/AccessoryImage;->MIN_SCALE_LIMIT:F

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcn/jingling/lib/textbubble/ImageControl;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->mEnter:Ljava/lang/Boolean;

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->mLeave:Ljava/lang/Boolean;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->mEnableRotate:Z

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Lcn/jingling/lib/textbubble/ImageControl;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->mEnter:Ljava/lang/Boolean;

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->mLeave:Ljava/lang/Boolean;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->mEnableRotate:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "point"    # Landroid/graphics/Point;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcn/jingling/lib/textbubble/ImageControl;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->mEnter:Ljava/lang/Boolean;

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->mLeave:Ljava/lang/Boolean;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->mEnableRotate:Z

    .line 40
    return-void
.end method


# virtual methods
.method public addMatrix(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 249
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 250
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 251
    iget-object v0, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 252
    return-void
.end method

.method public init(Landroid/graphics/Matrix;)V
    .locals 0
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcn/jingling/lib/textbubble/ImageControl;->init(Landroid/graphics/Matrix;)V

    .line 32
    return-void
.end method

.method public initializeData()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    const v9, 0x3dcccccd    # 0.1f

    .line 77
    invoke-super {p0}, Lcn/jingling/lib/textbubble/ImageControl;->initializeData()Z

    move-result v0

    .line 79
    .local v0, "b":Z
    if-nez v0, :cond_0

    move v6, v7

    .line 105
    :goto_0
    return v6

    .line 83
    :cond_0
    sget v6, Lcn/jingling/lib/textbubble/AccessoryImage;->mLayoutWidth:I

    iget v8, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->bmpWidth:I

    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    int-to-float v1, v6

    .line 84
    .local v1, "dx":F
    sget v6, Lcn/jingling/lib/textbubble/AccessoryImage;->mLayoutHeight:I

    iget v8, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->bmpHeight:I

    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    int-to-float v2, v6

    .line 88
    .local v2, "dy":F
    iget-object v6, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 89
    iget-object v6, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->mImageView:Landroid/widget/ImageView;

    iget-object v8, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 91
    sget v6, Lcn/jingling/lib/textbubble/AccessoryImage;->mLayoutHeight:I

    int-to-float v6, v6

    const/high16 v8, 0x44480000    # 800.0f

    div-float/2addr v6, v8

    sput v6, Lcn/jingling/lib/textbubble/AccessoryImage;->defaultZoom:F

    .line 93
    sget v6, Lcn/jingling/lib/textbubble/AccessoryImage;->defaultZoom:F

    invoke-virtual {p0, v6}, Lcn/jingling/lib/textbubble/AccessoryImage;->zoom(F)Landroid/graphics/Matrix;

    .line 95
    sget v6, Lcn/jingling/lib/textbubble/AccessoryImage;->mLayoutHeight:I

    int-to-float v6, v6

    iget v8, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->bmpHeight:I

    int-to-float v8, v8

    div-float v4, v6, v8

    .line 96
    .local v4, "hScale":F
    sget v6, Lcn/jingling/lib/textbubble/AccessoryImage;->mLayoutWidth:I

    int-to-float v6, v6

    iget v8, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->bmpWidth:I

    int-to-float v8, v8

    div-float v5, v6, v8

    .line 97
    .local v5, "wScale":F
    cmpg-float v6, v4, v5

    if-gez v6, :cond_1

    move v6, v4

    :goto_1
    sput v6, Lcn/jingling/lib/textbubble/AccessoryImage;->MAX_SCALE_LIMIT:F

    .line 98
    cmpg-float v6, v4, v5

    if-gez v6, :cond_2

    mul-float v6, v4, v9

    :goto_2
    sput v6, Lcn/jingling/lib/textbubble/AccessoryImage;->MIN_SCALE_LIMIT:F

    .line 99
    const/16 v6, 0x9

    new-array v3, v6, [F

    .line 100
    .local v3, "groudValues":[F
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v6

    invoke-virtual {v6}, Lcn/jingling/lib/textbubble/ScreenControl;->getGroundImage()Lcn/jingling/lib/textbubble/GroundImage;

    move-result-object v6

    invoke-virtual {v6}, Lcn/jingling/lib/textbubble/GroundImage;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 101
    aget v6, v3, v7

    iput v6, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->mInitialGroudScale:F

    .line 103
    iget-object v6, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->invalidate()V

    .line 105
    const/4 v6, 0x1

    goto :goto_0

    .end local v3    # "groudValues":[F
    :cond_1
    move v6, v5

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    mul-float v6, v5, v9

    goto :goto_2
.end method

.method public initializeData(Landroid/graphics/Point;)Z
    .locals 11
    .param p1, "p"    # Landroid/graphics/Point;

    .prologue
    const/4 v7, 0x0

    const v10, 0x3dcccccd    # 0.1f

    .line 44
    invoke-super {p0}, Lcn/jingling/lib/textbubble/ImageControl;->initializeData()Z

    move-result v0

    .line 46
    .local v0, "b":Z
    if-nez v0, :cond_0

    move v6, v7

    .line 72
    :goto_0
    return v6

    .line 50
    :cond_0
    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 51
    .local v1, "dx":I
    iget v2, p1, Landroid/graphics/Point;->y:I

    .line 54
    .local v2, "dy":I
    iget-object v6, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->mTransformMatrix:Landroid/graphics/Matrix;

    int-to-float v8, v1

    int-to-float v9, v2

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 56
    iget-object v6, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->mImageView:Landroid/widget/ImageView;

    iget-object v8, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 58
    sget v6, Lcn/jingling/lib/textbubble/AccessoryImage;->mLayoutHeight:I

    int-to-float v6, v6

    const/high16 v8, 0x44480000    # 800.0f

    div-float/2addr v6, v8

    sput v6, Lcn/jingling/lib/textbubble/AccessoryImage;->defaultZoom:F

    .line 60
    sget v6, Lcn/jingling/lib/textbubble/AccessoryImage;->defaultZoom:F

    invoke-virtual {p0, v6}, Lcn/jingling/lib/textbubble/AccessoryImage;->zoom(F)Landroid/graphics/Matrix;

    .line 62
    sget v6, Lcn/jingling/lib/textbubble/AccessoryImage;->mLayoutHeight:I

    int-to-float v6, v6

    iget v8, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->bmpHeight:I

    int-to-float v8, v8

    div-float v4, v6, v8

    .line 63
    .local v4, "hScale":F
    sget v6, Lcn/jingling/lib/textbubble/AccessoryImage;->mLayoutWidth:I

    int-to-float v6, v6

    iget v8, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->bmpWidth:I

    int-to-float v8, v8

    div-float v5, v6, v8

    .line 64
    .local v5, "wScale":F
    cmpg-float v6, v4, v5

    if-gez v6, :cond_1

    move v6, v4

    :goto_1
    sput v6, Lcn/jingling/lib/textbubble/AccessoryImage;->MAX_SCALE_LIMIT:F

    .line 65
    cmpg-float v6, v4, v5

    if-gez v6, :cond_2

    mul-float v6, v4, v10

    :goto_2
    sput v6, Lcn/jingling/lib/textbubble/AccessoryImage;->MIN_SCALE_LIMIT:F

    .line 66
    const/16 v6, 0x9

    new-array v3, v6, [F

    .line 67
    .local v3, "groudValues":[F
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v6

    invoke-virtual {v6}, Lcn/jingling/lib/textbubble/ScreenControl;->getGroundImage()Lcn/jingling/lib/textbubble/GroundImage;

    move-result-object v6

    invoke-virtual {v6}, Lcn/jingling/lib/textbubble/GroundImage;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 68
    aget v6, v3, v7

    iput v6, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->mInitialGroudScale:F

    .line 70
    iget-object v6, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->invalidate()V

    .line 72
    const/4 v6, 0x1

    goto :goto_0

    .end local v3    # "groudValues":[F
    :cond_1
    move v6, v5

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    mul-float v6, v5, v10

    goto :goto_2
.end method

.method public scaleImageViewNoLimit(F)V
    .locals 4
    .param p1, "scale"    # F

    .prologue
    .line 240
    new-instance v0, Lcn/jingling/lib/textbubble/MyPoint;

    iget v1, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->bmpWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->bmpHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(FF)V

    .line 241
    .local v0, "point":Lcn/jingling/lib/textbubble/MyPoint;
    iget-object v1, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcn/jingling/lib/textbubble/MyPoint;->givePointAfterTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->mTransformMatrix:Landroid/graphics/Matrix;

    iget v2, v0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v3, v0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    invoke-virtual {v1, p1, p1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 243
    return-void
.end method

.method public setEnableRotate(Z)V
    .locals 0
    .param p1, "enableRotate"    # Z

    .prologue
    .line 255
    iput-boolean p1, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->mEnableRotate:Z

    .line 256
    return-void
.end method

.method public updateImageView(FFFZLcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;ZD)V
    .locals 30
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "scale"    # F
    .param p4, "willRotate"    # Z
    .param p5, "oldFirstPointer"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p6, "newFirstPointer"    # Lcn/jingling/lib/textbubble/MyPoint;
    .param p7, "isDoAll"    # Z
    .param p8, "rotate"    # D

    .prologue
    .line 126
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/jingling/lib/textbubble/AccessoryImage;->mEnter:Ljava/lang/Boolean;

    .line 127
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/jingling/lib/textbubble/AccessoryImage;->mLeave:Ljava/lang/Boolean;

    .line 129
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    .line 130
    .local v13, "moveMatrix":Landroid/graphics/Matrix;
    new-instance v23, Landroid/graphics/Matrix;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Matrix;-><init>()V

    .line 131
    .local v23, "zoomMatrix":Landroid/graphics/Matrix;
    new-instance v18, Landroid/graphics/Matrix;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Matrix;-><init>()V

    .line 133
    .local v18, "rotateMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/jingling/lib/textbubble/AccessoryImage;->mTransformMatrix:Landroid/graphics/Matrix;

    .line 135
    .local v11, "matrix":Landroid/graphics/Matrix;
    new-instance v12, Lcn/jingling/lib/textbubble/MyPoint;

    invoke-direct {v12}, Lcn/jingling/lib/textbubble/MyPoint;-><init>()V

    .line 137
    .local v12, "midPoint":Lcn/jingling/lib/textbubble/MyPoint;
    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/AccessoryImage;->bmpWidth:I

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/AccessoryImage;->bmpHeight:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Lcn/jingling/lib/textbubble/MyPoint;->set(FF)V

    .line 138
    invoke-virtual {v12, v11}, Lcn/jingling/lib/textbubble/MyPoint;->givePointAfterTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v12

    .line 140
    const/16 v25, 0x9

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v21, v0

    .line 141
    .local v21, "values":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/AccessoryImage;->mTransformMatrix:Landroid/graphics/Matrix;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 143
    const/16 v25, 0x0

    aget v25, v21, v25

    const/16 v26, 0x0

    aget v26, v21, v26

    mul-float v25, v25, v26

    .line 144
    const/16 v26, 0x1

    aget v26, v21, v26

    const/16 v27, 0x1

    aget v27, v21, v27

    mul-float v26, v26, v27

    .line 143
    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v9, v0

    .line 146
    .local v9, "hasScale":F
    const/16 v25, 0x9

    move/from16 v0, v25

    new-array v8, v0, [F

    .line 147
    .local v8, "groudValues":[F
    invoke-static {}, Lcn/jingling/lib/textbubble/ScreenControl;->getSingleton()Lcn/jingling/lib/textbubble/ScreenControl;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcn/jingling/lib/textbubble/ScreenControl;->getGroundImage()Lcn/jingling/lib/textbubble/GroundImage;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcn/jingling/lib/textbubble/GroundImage;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->getValues([F)V

    .line 148
    const/16 v25, 0x0

    aget v7, v8, v25

    .line 150
    .local v7, "curGroudScale":F
    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/AccessoryImage;->mInitialGroudScale:F

    move/from16 v25, v0

    div-float v17, v7, v25

    .line 153
    .local v17, "rate":F
    const/4 v10, 0x0

    .line 154
    .local v10, "isRotete":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/AccessoryImage;->mFlagRotate:Ljava/lang/Boolean;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    if-eqz v25, :cond_4

    if-eqz p4, :cond_4

    .line 156
    const/4 v10, 0x1

    .line 158
    move-object/from16 v0, p5

    invoke-static {v12, v0}, Lcn/jingling/lib/textbubble/MyPoint;->distance(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)F

    move-result v15

    .line 159
    .local v15, "oldDist":F
    move-object/from16 v0, p6

    invoke-static {v12, v0}, Lcn/jingling/lib/textbubble/MyPoint;->distance(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)F

    move-result v14

    .line 161
    .local v14, "newDist":F
    div-float v24, v14, v15

    .line 163
    .local v24, "zoomScale":F
    if-eqz p7, :cond_0

    .line 165
    move/from16 v24, p3

    .line 171
    :cond_0
    mul-float v19, v24, v9

    .line 174
    .local v19, "scale2":F
    sget v25, Lcn/jingling/lib/textbubble/AccessoryImage;->MAX_SCALE_LIMIT:F

    mul-float v25, v25, v17

    cmpl-float v25, v19, v25

    if-lez v25, :cond_1

    const/high16 v25, 0x3f800000    # 1.0f

    cmpl-float v25, v24, v25

    if-gtz v25, :cond_2

    .line 175
    :cond_1
    sget v25, Lcn/jingling/lib/textbubble/AccessoryImage;->MIN_SCALE_LIMIT:F

    mul-float v25, v25, v17

    cmpg-float v25, v19, v25

    if-gez v25, :cond_3

    const/high16 v25, 0x3f800000    # 1.0f

    cmpg-float v25, v24, v25

    if-gez v25, :cond_3

    .line 176
    :cond_2
    const/high16 v24, 0x3f800000    # 1.0f

    .line 181
    :cond_3
    iget v0, v12, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    move/from16 v25, v0

    iget v0, v12, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    move/from16 v26, v0

    .line 180
    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 183
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-static {v0, v1, v12}, Lcn/jingling/lib/textbubble/MyPoint;->getSinCos(Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;Lcn/jingling/lib/textbubble/MyPoint;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v6

    .line 185
    .local v6, "angle":Lcn/jingling/lib/textbubble/MyPoint;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/jingling/lib/textbubble/AccessoryImage;->mEnableRotate:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    .line 186
    if-eqz p7, :cond_b

    .line 188
    move-wide/from16 v0, p8

    double-to-float v0, v0

    move/from16 v25, v0

    iget v0, v12, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    move/from16 v26, v0

    iget v0, v12, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    move/from16 v27, v0

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 197
    .end local v6    # "angle":Lcn/jingling/lib/textbubble/MyPoint;
    .end local v14    # "newDist":F
    .end local v15    # "oldDist":F
    .end local v19    # "scale2":F
    .end local v24    # "zoomScale":F
    :cond_4
    :goto_0
    if-eqz p7, :cond_5

    .line 199
    const/4 v10, 0x0

    .line 202
    :cond_5
    if-nez v10, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/AccessoryImage;->mFlagMove:Ljava/lang/Boolean;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    if-eqz v25, :cond_7

    .line 204
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 208
    new-instance v16, Lcn/jingling/lib/textbubble/MyPoint;

    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/AccessoryImage;->bmpWidth:I

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/jingling/lib/textbubble/AccessoryImage;->bmpHeight:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v16

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(FF)V

    .line 209
    .local v16, "point":Lcn/jingling/lib/textbubble/MyPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/jingling/lib/textbubble/AccessoryImage;->mTransformMatrix:Landroid/graphics/Matrix;

    move-object/from16 v25, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcn/jingling/lib/textbubble/MyPoint;->givePointAfterTransform(Landroid/graphics/Matrix;)Lcn/jingling/lib/textbubble/MyPoint;

    move-result-object v16

    .line 211
    move-object/from16 v0, v16

    iget v0, v0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    move/from16 v22, v0

    .line 213
    .local v22, "y":F
    sget v25, Lcn/jingling/lib/textbubble/AccessoryImage;->mLayoutHeight:I

    add-int/lit8 v25, v25, -0x50

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    cmpg-float v25, v22, v25

    if-gez v25, :cond_6

    .line 214
    add-float v25, v22, p2

    sget v26, Lcn/jingling/lib/textbubble/AccessoryImage;->mLayoutHeight:I

    add-int/lit8 v26, v26, -0x50

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-lez v25, :cond_6

    .line 215
    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/jingling/lib/textbubble/AccessoryImage;->mEnter:Ljava/lang/Boolean;

    .line 218
    :cond_6
    sget v25, Lcn/jingling/lib/textbubble/AccessoryImage;->mLayoutHeight:I

    add-int/lit8 v25, v25, -0x50

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    cmpl-float v25, v22, v25

    if-lez v25, :cond_7

    .line 219
    add-float v25, v22, p2

    sget v26, Lcn/jingling/lib/textbubble/AccessoryImage;->mLayoutHeight:I

    add-int/lit8 v26, v26, -0x50

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    cmpg-float v25, v25, v26

    if-gez v25, :cond_7

    .line 220
    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/jingling/lib/textbubble/AccessoryImage;->mLeave:Ljava/lang/Boolean;

    .line 226
    .end local v16    # "point":Lcn/jingling/lib/textbubble/MyPoint;
    .end local v22    # "y":F
    :cond_7
    mul-float v20, p3, v9

    .line 228
    .local v20, "scale3":F
    sget v25, Lcn/jingling/lib/textbubble/AccessoryImage;->MAX_SCALE_LIMIT:F

    mul-float v25, v25, v17

    cmpl-float v25, v20, v25

    if-lez v25, :cond_8

    const/high16 v25, 0x3f800000    # 1.0f

    cmpl-float v25, p3, v25

    if-gtz v25, :cond_9

    .line 229
    :cond_8
    sget v25, Lcn/jingling/lib/textbubble/AccessoryImage;->MIN_SCALE_LIMIT:F

    mul-float v25, v25, v17

    cmpg-float v25, v20, v25

    if-gez v25, :cond_a

    const/high16 v25, 0x3f800000    # 1.0f

    cmpg-float v25, p3, v25

    if-gez v25, :cond_a

    .line 231
    :cond_9
    const/high16 p3, 0x3f800000    # 1.0f

    .line 234
    :cond_a
    iget v0, v12, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    move/from16 v25, v0

    iget v0, v12, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    move/from16 v26, v0

    move-object/from16 v0, v23

    move/from16 v1, p3

    move/from16 v2, p3

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 236
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-virtual {v0, v13, v1, v2}, Lcn/jingling/lib/textbubble/AccessoryImage;->changeImageView(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    .line 237
    return-void

    .line 192
    .end local v20    # "scale3":F
    .restart local v6    # "angle":Lcn/jingling/lib/textbubble/MyPoint;
    .restart local v14    # "newDist":F
    .restart local v15    # "oldDist":F
    .restart local v19    # "scale2":F
    .restart local v24    # "zoomScale":F
    :cond_b
    iget v0, v6, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    move/from16 v25, v0

    iget v0, v6, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    move/from16 v26, v0

    iget v0, v12, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    move/from16 v27, v0

    iget v0, v12, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    move/from16 v28, v0

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setSinCos(FFFF)V

    goto/16 :goto_0
.end method

.method public zoom(F)Landroid/graphics/Matrix;
    .locals 4
    .param p1, "scale"    # F

    .prologue
    .line 110
    new-instance v0, Lcn/jingling/lib/textbubble/MyPoint;

    sget v2, Lcn/jingling/lib/textbubble/AccessoryImage;->mLayoutWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lcn/jingling/lib/textbubble/AccessoryImage;->mLayoutHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-direct {v0, v2, v3}, Lcn/jingling/lib/textbubble/MyPoint;-><init>(FF)V

    .line 112
    .local v0, "midPoint":Lcn/jingling/lib/textbubble/MyPoint;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 114
    .local v1, "zoomMatrix":Landroid/graphics/Matrix;
    iget v2, v0, Lcn/jingling/lib/textbubble/MyPoint;->x:F

    iget v3, v0, Lcn/jingling/lib/textbubble/MyPoint;->y:F

    .line 113
    invoke-virtual {v1, p1, p1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 115
    iget-object v2, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 116
    iget-object v2, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->mTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 117
    iget-object v2, p0, Lcn/jingling/lib/textbubble/AccessoryImage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    .line 119
    return-object v1
.end method
