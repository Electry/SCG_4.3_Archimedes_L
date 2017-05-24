.class public Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
.super Lcom/lenovo/scg/common/le3d/Le3dAnimation;
.source "Le3dViewBasicAnimation.java"


# static fields
.field protected static final USE_ALPHA:I = 0x40

.field protected static final USE_BEZIER:I = 0x80

.field protected static final USE_ROATAEX:I = 0x4

.field protected static final USE_ROATAEY:I = 0x8

.field protected static final USE_ROATAEZ:I = 0x10

.field protected static final USE_SCALE:I = 0x20

.field protected static final USE_TRANSLATE:I = 0x2


# instance fields
.field ax:F

.field ay:F

.field az:F

.field bx:F

.field by:F

.field bz:F

.field cx:F

.field cy:F

.field cz:F

.field protected mAlpha:F

.field mBezierPoint0:Lcom/lenovo/scg/common/le3d/Position;

.field mBezierPoint1:Lcom/lenovo/scg/common/le3d/Position;

.field protected mFlag:I

.field mPointArray:[Lcom/lenovo/scg/common/le3d/Position;

.field protected mRotateX:F

.field protected mRotateY:F

.field protected mRotateZ:F

.field protected mScaleX:F

.field protected mScaleY:F

.field protected mScaleZ:F

.field protected mStartAlpha:F

.field protected mStartRotateX:F

.field protected mStartRotateY:F

.field protected mStartRotateZ:F

.field protected mStartScaleX:F

.field protected mStartScaleY:F

.field protected mStartScaleZ:F

.field protected mStartTranslateX:F

.field protected mStartTranslateY:F

.field protected mStartTranslateZ:F

.field protected mTranslateX:F

.field protected mTranslateY:F

.field protected mTranslateZ:F

.field protected mView:Lcom/lenovo/scg/common/le3d/Le3dView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dAnimation;-><init>()V

    .line 44
    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartTranslateX:F

    .line 46
    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartTranslateY:F

    .line 48
    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartTranslateZ:F

    .line 50
    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartRotateX:F

    .line 52
    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartRotateY:F

    .line 54
    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartRotateZ:F

    .line 56
    iput v1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartScaleX:F

    .line 58
    iput v1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartScaleY:F

    .line 60
    iput v1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartScaleZ:F

    .line 62
    iput v1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartAlpha:F

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dView;I)V
    .locals 2
    .param p1, "view"    # Lcom/lenovo/scg/common/le3d/Le3dView;
    .param p2, "duration"    # I

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p2}, Lcom/lenovo/scg/common/le3d/Le3dAnimation;-><init>(I)V

    .line 44
    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartTranslateX:F

    .line 46
    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartTranslateY:F

    .line 48
    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartTranslateZ:F

    .line 50
    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartRotateX:F

    .line 52
    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartRotateY:F

    .line 54
    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartRotateZ:F

    .line 56
    iput v1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartScaleX:F

    .line 58
    iput v1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartScaleY:F

    .line 60
    iput v1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartScaleZ:F

    .line 62
    iput v1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartAlpha:F

    .line 72
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mView:Lcom/lenovo/scg/common/le3d/Le3dView;

    .line 73
    return-void
.end method

.method private calculateCoefficientBezier([Lcom/lenovo/scg/common/le3d/Position;)V
    .locals 7
    .param p1, "cp"    # [Lcom/lenovo/scg/common/le3d/Position;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x40400000    # 3.0f

    .line 243
    aget-object v0, p1, v4

    iget v0, v0, Lcom/lenovo/scg/common/le3d/Position;->X:F

    aget-object v1, p1, v3

    iget v1, v1, Lcom/lenovo/scg/common/le3d/Position;->X:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->cx:F

    .line 244
    aget-object v0, p1, v5

    iget v0, v0, Lcom/lenovo/scg/common/le3d/Position;->X:F

    aget-object v1, p1, v4

    iget v1, v1, Lcom/lenovo/scg/common/le3d/Position;->X:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->cx:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->bx:F

    .line 245
    aget-object v0, p1, v6

    iget v0, v0, Lcom/lenovo/scg/common/le3d/Position;->X:F

    aget-object v1, p1, v3

    iget v1, v1, Lcom/lenovo/scg/common/le3d/Position;->X:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->cx:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->bx:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->ax:F

    .line 247
    aget-object v0, p1, v4

    iget v0, v0, Lcom/lenovo/scg/common/le3d/Position;->Y:F

    aget-object v1, p1, v3

    iget v1, v1, Lcom/lenovo/scg/common/le3d/Position;->Y:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->cy:F

    .line 248
    aget-object v0, p1, v5

    iget v0, v0, Lcom/lenovo/scg/common/le3d/Position;->Y:F

    aget-object v1, p1, v4

    iget v1, v1, Lcom/lenovo/scg/common/le3d/Position;->Y:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->cy:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->by:F

    .line 249
    aget-object v0, p1, v6

    iget v0, v0, Lcom/lenovo/scg/common/le3d/Position;->Y:F

    aget-object v1, p1, v3

    iget v1, v1, Lcom/lenovo/scg/common/le3d/Position;->Y:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->cy:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->by:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->ay:F

    .line 251
    aget-object v0, p1, v4

    iget v0, v0, Lcom/lenovo/scg/common/le3d/Position;->Z:F

    aget-object v1, p1, v3

    iget v1, v1, Lcom/lenovo/scg/common/le3d/Position;->Z:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->cz:F

    .line 252
    aget-object v0, p1, v5

    iget v0, v0, Lcom/lenovo/scg/common/le3d/Position;->Z:F

    aget-object v1, p1, v4

    iget v1, v1, Lcom/lenovo/scg/common/le3d/Position;->Z:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->cz:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->bz:F

    .line 253
    aget-object v0, p1, v6

    iget v0, v0, Lcom/lenovo/scg/common/le3d/Position;->Z:F

    aget-object v1, p1, v3

    iget v1, v1, Lcom/lenovo/scg/common/le3d/Position;->Z:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->cz:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->bz:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->az:F

    .line 254
    return-void
.end method

.method private getBezierPoint(F)Lcom/lenovo/scg/common/le3d/Position;
    .locals 1
    .param p1, "process"    # F

    .prologue
    .line 273
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mPointArray:[Lcom/lenovo/scg/common/le3d/Position;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->pointOnCubicBezier([Lcom/lenovo/scg/common/le3d/Position;F)Lcom/lenovo/scg/common/le3d/Position;

    move-result-object v0

    return-object v0
.end method

.method private pointOnCubicBezier([Lcom/lenovo/scg/common/le3d/Position;F)Lcom/lenovo/scg/common/le3d/Position;
    .locals 6
    .param p1, "cp"    # [Lcom/lenovo/scg/common/le3d/Position;
    .param p2, "t"    # F

    .prologue
    const/4 v5, 0x0

    .line 259
    new-instance v0, Lcom/lenovo/scg/common/le3d/Position;

    invoke-direct {v0}, Lcom/lenovo/scg/common/le3d/Position;-><init>()V

    .line 263
    .local v0, "result":Lcom/lenovo/scg/common/le3d/Position;
    mul-float v2, p2, p2

    .line 264
    .local v2, "tSquared":F
    mul-float v1, v2, p2

    .line 266
    .local v1, "tCubed":F
    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->ax:F

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->bx:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->cx:F

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    aget-object v4, p1, v5

    iget v4, v4, Lcom/lenovo/scg/common/le3d/Position;->X:F

    add-float/2addr v3, v4

    iput v3, v0, Lcom/lenovo/scg/common/le3d/Position;->X:F

    .line 267
    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->ay:F

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->by:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->cy:F

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    aget-object v4, p1, v5

    iget v4, v4, Lcom/lenovo/scg/common/le3d/Position;->Y:F

    add-float/2addr v3, v4

    iput v3, v0, Lcom/lenovo/scg/common/le3d/Position;->Y:F

    .line 268
    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->az:F

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->bz:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->cz:F

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    aget-object v4, p1, v5

    iget v4, v4, Lcom/lenovo/scg/common/le3d/Position;->Z:F

    add-float/2addr v3, v4

    iput v3, v0, Lcom/lenovo/scg/common/le3d/Position;->Z:F

    .line 269
    return-object v0
.end method


# virtual methods
.method public getView()Lcom/lenovo/scg/common/le3d/Le3dView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mView:Lcom/lenovo/scg/common/le3d/Le3dView;

    return-object v0
.end method

.method protected onCalculate(F)V
    .locals 8
    .param p1, "progress"    # F

    .prologue
    .line 86
    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mFlag:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_0

    .line 87
    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mFlag:I

    and-int/lit16 v2, v2, 0x80

    if-lez v2, :cond_6

    .line 88
    invoke-direct {p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->getBezierPoint(F)Lcom/lenovo/scg/common/le3d/Position;

    move-result-object v1

    .line 89
    .local v1, "pos":Lcom/lenovo/scg/common/le3d/Position;
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mView:Lcom/lenovo/scg/common/le3d/Le3dView;

    iget v3, v1, Lcom/lenovo/scg/common/le3d/Position;->X:F

    iget v4, v1, Lcom/lenovo/scg/common/le3d/Position;->Y:F

    iget v5, v1, Lcom/lenovo/scg/common/le3d/Position;->Z:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dView;->setTranslate(FFF)V

    .line 97
    .end local v1    # "pos":Lcom/lenovo/scg/common/le3d/Position;
    :cond_0
    :goto_0
    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mFlag:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_1

    .line 98
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mView:Lcom/lenovo/scg/common/le3d/Le3dView;

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartRotateX:F

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mRotateX:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/common/le3d/Le3dView;->setRotateX(F)V

    .line 100
    :cond_1
    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mFlag:I

    and-int/lit8 v2, v2, 0x8

    if-lez v2, :cond_2

    .line 101
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mView:Lcom/lenovo/scg/common/le3d/Le3dView;

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartRotateY:F

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mRotateY:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/common/le3d/Le3dView;->setRotateY(F)V

    .line 103
    :cond_2
    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mFlag:I

    and-int/lit8 v2, v2, 0x10

    if-lez v2, :cond_3

    .line 104
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mView:Lcom/lenovo/scg/common/le3d/Le3dView;

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartRotateZ:F

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mRotateZ:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/common/le3d/Le3dView;->setRotateZ(F)V

    .line 106
    :cond_3
    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mFlag:I

    and-int/lit8 v2, v2, 0x20

    if-lez v2, :cond_4

    .line 108
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mView:Lcom/lenovo/scg/common/le3d/Le3dView;

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartScaleX:F

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartScaleX:F

    iget v5, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mScaleX:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartScaleX:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartScaleY:F

    iget v5, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartScaleY:F

    iget v6, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mScaleY:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartScaleY:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartScaleZ:F

    iget v6, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartScaleZ:F

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mScaleZ:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartScaleZ:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dView;->setScale(FFF)V

    .line 111
    :cond_4
    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mFlag:I

    and-int/lit8 v2, v2, 0x40

    if-lez v2, :cond_5

    .line 112
    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartAlpha:F

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mAlpha:F

    mul-float/2addr v3, p1

    add-float v0, v2, v3

    .line 113
    .local v0, "alpha":F
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mView:Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/common/le3d/Le3dView;->setAlpha(F)V

    .line 115
    .end local v0    # "alpha":F
    :cond_5
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mView:Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dView;->requestRender()V

    .line 116
    return-void

    .line 92
    :cond_6
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mView:Lcom/lenovo/scg/common/le3d/Le3dView;

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartTranslateX:F

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mTranslateX:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartTranslateY:F

    iget v5, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mTranslateY:F

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartTranslateZ:F

    iget v6, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mTranslateZ:F

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dView;->setTranslate(FFF)V

    goto/16 :goto_0
.end method

.method protected onCancel()V
    .locals 0

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->onStop()V

    .line 161
    return-void
.end method

.method protected onStart()V
    .locals 7

    .prologue
    .line 121
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mFlag:I

    and-int/lit16 v0, v0, 0x80

    if-lez v0, :cond_0

    .line 122
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lenovo/scg/common/le3d/Position;

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mPointArray:[Lcom/lenovo/scg/common/le3d/Position;

    .line 123
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mPointArray:[Lcom/lenovo/scg/common/le3d/Position;

    const/4 v1, 0x0

    new-instance v2, Lcom/lenovo/scg/common/le3d/Position;

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartTranslateX:F

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartTranslateY:F

    iget v5, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartTranslateZ:F

    invoke-direct {v2, v3, v4, v5}, Lcom/lenovo/scg/common/le3d/Position;-><init>(FFF)V

    aput-object v2, v0, v1

    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mPointArray:[Lcom/lenovo/scg/common/le3d/Position;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mBezierPoint0:Lcom/lenovo/scg/common/le3d/Position;

    aput-object v2, v0, v1

    .line 125
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mPointArray:[Lcom/lenovo/scg/common/le3d/Position;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mBezierPoint1:Lcom/lenovo/scg/common/le3d/Position;

    aput-object v2, v0, v1

    .line 126
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mPointArray:[Lcom/lenovo/scg/common/le3d/Position;

    const/4 v1, 0x3

    new-instance v2, Lcom/lenovo/scg/common/le3d/Position;

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartTranslateX:F

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mTranslateX:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartTranslateY:F

    iget v5, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mTranslateY:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartTranslateZ:F

    iget v6, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mTranslateZ:F

    add-float/2addr v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/lenovo/scg/common/le3d/Position;-><init>(FFF)V

    aput-object v2, v0, v1

    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mPointArray:[Lcom/lenovo/scg/common/le3d/Position;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->calculateCoefficientBezier([Lcom/lenovo/scg/common/le3d/Position;)V

    .line 129
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 5

    .prologue
    .line 134
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mFlag:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mView:Lcom/lenovo/scg/common/le3d/Le3dView;

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartTranslateX:F

    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mTranslateX:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartTranslateY:F

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mTranslateY:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartTranslateZ:F

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mTranslateZ:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/common/le3d/Le3dView;->setTranslate(FFF)V

    .line 137
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mFlag:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mView:Lcom/lenovo/scg/common/le3d/Le3dView;

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartRotateX:F

    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mRotateX:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dView;->setRotateX(F)V

    .line 140
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mFlag:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mView:Lcom/lenovo/scg/common/le3d/Le3dView;

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartRotateY:F

    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mRotateY:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dView;->setRotateY(F)V

    .line 143
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mFlag:I

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mView:Lcom/lenovo/scg/common/le3d/Le3dView;

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartRotateZ:F

    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mRotateZ:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dView;->setRotateZ(F)V

    .line 146
    :cond_3
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mFlag:I

    and-int/lit8 v0, v0, 0x20

    if-lez v0, :cond_4

    .line 148
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mView:Lcom/lenovo/scg/common/le3d/Le3dView;

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartScaleX:F

    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mScaleX:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartScaleY:F

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mScaleY:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartScaleZ:F

    iget v4, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mScaleZ:F

    mul-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/common/le3d/Le3dView;->setScale(FFF)V

    .line 152
    :cond_4
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mFlag:I

    and-int/lit8 v0, v0, 0x40

    if-lez v0, :cond_5

    .line 153
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mView:Lcom/lenovo/scg/common/le3d/Le3dView;

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartAlpha:F

    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mAlpha:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dView;->setAlpha(F)V

    .line 155
    :cond_5
    return-void
.end method

.method public setAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 202
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mView:Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dView;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartAlpha:F

    .line 203
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartAlpha:F

    add-float/2addr v0, p1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 204
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartAlpha:F

    neg-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mAlpha:F

    .line 210
    :goto_0
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mFlag:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mFlag:I

    .line 211
    return-void

    .line 205
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartAlpha:F

    add-float/2addr v0, p1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 206
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartAlpha:F

    sub-float v0, v2, v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mAlpha:F

    goto :goto_0

    .line 208
    :cond_1
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mAlpha:F

    goto :goto_0
.end method

.method public setBezierPoint(FFFFFF)V
    .locals 4
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "z0"    # F
    .param p4, "x1"    # F
    .param p5, "y1"    # F
    .param p6, "z1"    # F

    .prologue
    .line 226
    new-instance v0, Lcom/lenovo/scg/common/le3d/Position;

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartTranslateX:F

    add-float/2addr v1, p1

    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartTranslateY:F

    add-float/2addr v2, p2

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartTranslateZ:F

    add-float/2addr v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/common/le3d/Position;-><init>(FFF)V

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mBezierPoint0:Lcom/lenovo/scg/common/le3d/Position;

    .line 227
    new-instance v0, Lcom/lenovo/scg/common/le3d/Position;

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartTranslateX:F

    add-float/2addr v1, p4

    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartTranslateY:F

    add-float/2addr v2, p5

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartTranslateZ:F

    add-float/2addr v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/common/le3d/Position;-><init>(FFF)V

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mBezierPoint1:Lcom/lenovo/scg/common/le3d/Position;

    .line 228
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mFlag:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mFlag:I

    .line 229
    return-void
.end method

.method public setRotateX(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mView:Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dView;->getRotateX()F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartRotateX:F

    .line 175
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mRotateX:F

    .line 176
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mFlag:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mFlag:I

    .line 177
    return-void
.end method

.method public setRotateY(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mView:Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dView;->getRotateY()F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartRotateY:F

    .line 181
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mRotateY:F

    .line 182
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mFlag:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mFlag:I

    .line 183
    return-void
.end method

.method public setRotateZ(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mView:Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dView;->getRotateZ()F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartRotateZ:F

    .line 187
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mRotateZ:F

    .line 188
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mFlag:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mFlag:I

    .line 189
    return-void
.end method

.method public setScale(FFF)V
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "sz"    # F

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mView:Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dView;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartScaleX:F

    .line 193
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mView:Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dView;->getScaleY()F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartScaleY:F

    .line 194
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mView:Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dView;->getScaleZ()F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartScaleZ:F

    .line 195
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mScaleX:F

    .line 196
    iput p2, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mScaleY:F

    .line 197
    iput p3, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mScaleZ:F

    .line 198
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mFlag:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mFlag:I

    .line 199
    return-void
.end method

.method public setTranslate(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mView:Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dView;->getTranslateX()F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartTranslateX:F

    .line 165
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mView:Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dView;->getTranslateY()F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartTranslateY:F

    .line 166
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mView:Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dView;->getTranslateZ()F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mStartTranslateZ:F

    .line 167
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mTranslateX:F

    .line 168
    iput p2, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mTranslateY:F

    .line 169
    iput p3, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mTranslateZ:F

    .line 170
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mFlag:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mFlag:I

    .line 171
    return-void
.end method

.method public setView(Lcom/lenovo/scg/common/le3d/Le3dView;)V
    .locals 0
    .param p1, "view"    # Lcom/lenovo/scg/common/le3d/Le3dView;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->mView:Lcom/lenovo/scg/common/le3d/Le3dView;

    .line 77
    return-void
.end method
