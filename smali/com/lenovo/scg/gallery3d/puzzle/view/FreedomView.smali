.class public Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;
.super Landroid/view/View;
.source "FreedomView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "mosaic"


# instance fields
.field private CX:F

.field private CY:F

.field private X:F

.field private Y:F

.field private bitmapCount:I

.field private delete:Landroid/graphics/Bitmap;

.field private mBackground:Landroid/graphics/Bitmap;

.field private mBegin:Z

.field private mBool:Z

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCanvasBitmap:Landroid/graphics/Bitmap;

.field private mCurrentAngle:F

.field private mCurrentSpace:F

.field private mDrag:Z

.field private mHasInit:Z

.field private mInitLocationX:I

.field private mInitLocationY:I

.field private mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

.field private mPreAngle:F

.field private mPreSpace:F

.field private mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

.field private mViewHeight:I

.field private mViewWidth:I

.field rotalC:[F

.field rotalP:[F

.field rotalP_2:[F

.field private rotate:Landroid/graphics/Bitmap;

.field twoPoint:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v4, 0x43f00000    # 480.0f

    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    .line 35
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    .line 37
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBackground:Landroid/graphics/Bitmap;

    .line 43
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    .line 49
    iput v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    .line 51
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvas:Landroid/graphics/Canvas;

    .line 53
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->X:F

    .line 55
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->Y:F

    .line 57
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->CX:F

    .line 59
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->CY:F

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBegin:Z

    .line 63
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mDrag:Z

    .line 65
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->rotalC:[F

    .line 67
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->rotalP:[F

    .line 69
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->rotalP_2:[F

    .line 71
    iput v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->twoPoint:I

    .line 73
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mHasInit:Z

    .line 75
    iput v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mPreSpace:F

    .line 77
    iput v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCurrentSpace:F

    .line 79
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mPreAngle:F

    .line 81
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCurrentAngle:F

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBool:Z

    .line 85
    iput v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mInitLocationX:I

    .line 87
    iput v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mInitLocationY:I

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v4, 0x43f00000    # 480.0f

    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    .line 35
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    .line 37
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBackground:Landroid/graphics/Bitmap;

    .line 43
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    .line 49
    iput v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    .line 51
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvas:Landroid/graphics/Canvas;

    .line 53
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->X:F

    .line 55
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->Y:F

    .line 57
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->CX:F

    .line 59
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->CY:F

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBegin:Z

    .line 63
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mDrag:Z

    .line 65
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->rotalC:[F

    .line 67
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->rotalP:[F

    .line 69
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->rotalP_2:[F

    .line 71
    iput v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->twoPoint:I

    .line 73
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mHasInit:Z

    .line 75
    iput v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mPreSpace:F

    .line 77
    iput v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCurrentSpace:F

    .line 79
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mPreAngle:F

    .line 81
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCurrentAngle:F

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBool:Z

    .line 85
    iput v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mInitLocationX:I

    .line 87
    iput v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mInitLocationY:I

    .line 95
    return-void
.end method

.method private caculateAngle(Landroid/view/MotionEvent;)F
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 569
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    sub-float v2, v4, v5

    .line 570
    .local v2, "x":F
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    sub-float v3, v4, v5

    .line 571
    .local v3, "y":F
    float-to-double v4, v3

    float-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 572
    .local v0, "radians":D
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    return v4
.end method

.method private caculateSpace(Landroid/view/MotionEvent;)F
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 548
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 549
    .local v0, "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 550
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method

.method private initView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mViewWidth:I

    .line 139
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mViewHeight:I

    .line 140
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020855

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->delete:Landroid/graphics/Bitmap;

    .line 141
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02089a

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->rotate:Landroid/graphics/Bitmap;

    .line 142
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02085f

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 143
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mViewWidth:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mViewHeight:I

    invoke-static {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;->scaleBitmapToFit(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBackground:Landroid/graphics/Bitmap;

    .line 144
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 147
    :cond_0
    iget v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mViewWidth:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mViewHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    .line 148
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvas:Landroid/graphics/Canvas;

    .line 149
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v5, v5, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 150
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    if-eqz v2, :cond_1

    .line 151
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    if-ge v1, v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v2, v3, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    .line 153
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v3, v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getXY(I)F

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getTrformBtmapWidth()F

    move-result v4

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getXY(I)F

    move-result v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getTrformBtmapHeight()F

    move-result v5

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 155
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "i":I
    :cond_1
    iput-boolean v7, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mHasInit:Z

    .line 159
    return-void
.end method

.method private rotationClick(Landroid/graphics/Matrix;Landroid/view/MotionEvent;)F
    .locals 20
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 391
    const/16 v15, 0x9

    new-array v2, v15, [F

    .line 392
    .local v2, "f":[F
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 393
    const/4 v15, 0x0

    aget v15, v2, v15

    const/16 v16, 0x0

    mul-float v15, v15, v16

    const/16 v16, 0x1

    aget v16, v2, v16

    const/16 v17, 0x0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    const/16 v16, 0x2

    aget v16, v2, v16

    add-float v6, v15, v16

    .line 394
    .local v6, "x1":F
    const/4 v15, 0x3

    aget v15, v2, v15

    const/16 v16, 0x0

    mul-float v15, v15, v16

    const/16 v16, 0x4

    aget v16, v2, v16

    const/16 v17, 0x0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    const/16 v16, 0x5

    aget v16, v2, v16

    add-float v11, v15, v16

    .line 395
    .local v11, "y1":F
    const/4 v15, 0x0

    aget v15, v2, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    const/16 v16, 0x1

    aget v16, v2, v16

    const/16 v17, 0x0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    const/16 v16, 0x2

    aget v16, v2, v16

    add-float v7, v15, v16

    .line 396
    .local v7, "x2":F
    const/4 v15, 0x3

    aget v15, v2, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    const/16 v16, 0x4

    aget v16, v2, v16

    const/16 v17, 0x0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    const/16 v16, 0x5

    aget v16, v2, v16

    add-float v12, v15, v16

    .line 397
    .local v12, "y2":F
    const/4 v15, 0x0

    aget v15, v2, v15

    const/16 v16, 0x0

    mul-float v15, v15, v16

    const/16 v16, 0x1

    aget v16, v2, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    const/16 v16, 0x2

    aget v16, v2, v16

    add-float v8, v15, v16

    .line 398
    .local v8, "x3":F
    const/4 v15, 0x3

    aget v15, v2, v15

    const/16 v16, 0x0

    mul-float v15, v15, v16

    const/16 v16, 0x4

    aget v16, v2, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    const/16 v16, 0x5

    aget v16, v2, v16

    add-float v13, v15, v16

    .line 399
    .local v13, "y3":F
    const/4 v15, 0x0

    aget v15, v2, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    const/16 v16, 0x1

    aget v16, v2, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    const/16 v16, 0x2

    aget v16, v2, v16

    add-float v9, v15, v16

    .line 400
    .local v9, "x4":F
    const/4 v15, 0x3

    aget v15, v2, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    const/16 v16, 0x4

    aget v16, v2, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    const/16 v16, 0x5

    aget v16, v2, v16

    add-float v14, v15, v16

    .line 401
    .local v14, "y4":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    sub-float v3, v15, v6

    .line 402
    .local v3, "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    sub-float v10, v15, v11

    .line 403
    .local v10, "y":F
    float-to-double v0, v10

    move-wide/from16 v16, v0

    float-to-double v0, v3

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    .line 404
    .local v4, "radians":D
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v15, v0

    return v15
.end method

.method private spacingClick(Landroid/graphics/Matrix;Landroid/view/MotionEvent;)F
    .locals 14
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 375
    const/16 v11, 0x9

    new-array v0, v11, [F

    .line 376
    .local v0, "f":[F
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 377
    const/4 v11, 0x0

    aget v11, v0, v11

    const/4 v12, 0x0

    mul-float/2addr v11, v12

    const/4 v12, 0x1

    aget v12, v0, v12

    const/4 v13, 0x0

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    const/4 v12, 0x2

    aget v12, v0, v12

    add-float v2, v11, v12

    .line 378
    .local v2, "x1":F
    const/4 v11, 0x3

    aget v11, v0, v11

    const/4 v12, 0x0

    mul-float/2addr v11, v12

    const/4 v12, 0x4

    aget v12, v0, v12

    const/4 v13, 0x0

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    const/4 v12, 0x5

    aget v12, v0, v12

    add-float v7, v11, v12

    .line 379
    .local v7, "y1":F
    const/4 v11, 0x0

    aget v11, v0, v11

    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v12, v12, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    const/4 v12, 0x1

    aget v12, v0, v12

    const/4 v13, 0x0

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    const/4 v12, 0x2

    aget v12, v0, v12

    add-float v3, v11, v12

    .line 380
    .local v3, "x2":F
    const/4 v11, 0x3

    aget v11, v0, v11

    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v12, v12, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    const/4 v12, 0x4

    aget v12, v0, v12

    const/4 v13, 0x0

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    const/4 v12, 0x5

    aget v12, v0, v12

    add-float v8, v11, v12

    .line 381
    .local v8, "y2":F
    const/4 v11, 0x0

    aget v11, v0, v11

    const/4 v12, 0x0

    mul-float/2addr v11, v12

    const/4 v12, 0x1

    aget v12, v0, v12

    iget-object v13, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    const/4 v12, 0x2

    aget v12, v0, v12

    add-float v4, v11, v12

    .line 382
    .local v4, "x3":F
    const/4 v11, 0x3

    aget v11, v0, v11

    const/4 v12, 0x0

    mul-float/2addr v11, v12

    const/4 v12, 0x4

    aget v12, v0, v12

    iget-object v13, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    const/4 v12, 0x5

    aget v12, v0, v12

    add-float v9, v11, v12

    .line 383
    .local v9, "y3":F
    const/4 v11, 0x0

    aget v11, v0, v11

    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v12, v12, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    const/4 v12, 0x1

    aget v12, v0, v12

    iget-object v13, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    const/4 v12, 0x2

    aget v12, v0, v12

    add-float v5, v11, v12

    .line 384
    .local v5, "x4":F
    const/4 v11, 0x3

    aget v11, v0, v11

    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v12, v12, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    const/4 v12, 0x4

    aget v12, v0, v12

    iget-object v13, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    const/4 v12, 0x5

    aget v12, v0, v12

    add-float v10, v11, v12

    .line 385
    .local v10, "y4":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    sub-float v1, v11, v2

    .line 386
    .local v1, "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float v6, v11, v7

    .line 387
    .local v6, "y":F
    mul-float v11, v1, v1

    mul-float v12, v6, v6

    add-float/2addr v11, v12

    invoke-static {v11}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v11

    return v11
.end method


# virtual methods
.method public checkClick(Landroid/graphics/Matrix;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v8, 0x41f00000    # 30.0f

    .line 419
    const/16 v5, 0x9

    new-array v0, v5, [F

    .line 420
    .local v0, "f":[F
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 422
    aget v5, v0, v4

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v6, v6, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    aget v6, v0, v3

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v0, v6

    add-float v1, v5, v6

    .line 423
    .local v1, "x4":F
    const/4 v5, 0x3

    aget v5, v0, v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v6, v6, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const/4 v6, 0x4

    aget v6, v0, v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/4 v6, 0x5

    aget v6, v0, v6

    add-float v2, v5, v6

    .line 424
    .local v2, "y4":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float v6, v1, v8

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    add-float v6, v1, v8

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float v6, v2, v8

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    add-float v6, v2, v8

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 427
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public checkClickDelete(Landroid/graphics/Matrix;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v8, 0x41f00000    # 30.0f

    const/4 v7, 0x0

    .line 408
    const/16 v5, 0x9

    new-array v0, v5, [F

    .line 409
    .local v0, "f":[F
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 410
    aget v5, v0, v4

    mul-float/2addr v5, v7

    aget v6, v0, v3

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v0, v6

    add-float v1, v5, v6

    .line 411
    .local v1, "x1":F
    const/4 v5, 0x3

    aget v5, v0, v5

    mul-float/2addr v5, v7

    const/4 v6, 0x4

    aget v6, v0, v6

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/4 v6, 0x5

    aget v6, v0, v6

    add-float v2, v5, v6

    .line 412
    .local v2, "y1":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float v6, v1, v8

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    add-float v6, v1, v8

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float v6, v2, v8

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    add-float v6, v2, v8

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 415
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public destroyFreedomView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 697
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mHasInit:Z

    .line 698
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 699
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 700
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    .line 702
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 703
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 704
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 705
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    aget-object v1, v1, v0

    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    .line 707
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->originBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 708
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 709
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    aget-object v1, v1, v0

    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->originBitmap:Landroid/graphics/Bitmap;

    .line 702
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 712
    :cond_3
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    .line 713
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    if-eqz v1, :cond_6

    .line 714
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 715
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 716
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    .line 718
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->originBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 719
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 720
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->originBitmap:Landroid/graphics/Bitmap;

    .line 722
    :cond_5
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    .line 724
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_7

    .line 725
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 726
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBackground:Landroid/graphics/Bitmap;

    .line 728
    :cond_7
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->delete:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->delete:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 729
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->delete:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 730
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->delete:Landroid/graphics/Bitmap;

    .line 732
    :cond_8
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->rotate:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->rotate:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 733
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->rotate:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 734
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->rotate:Landroid/graphics/Bitmap;

    .line 736
    :cond_9
    return-void
.end method

.method public drawRedFrame(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Z)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "hide"    # Z

    .prologue
    .line 431
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 432
    .local v2, "paint":Landroid/graphics/Paint;
    if-eqz p3, :cond_1

    .line 433
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 437
    :goto_0
    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 438
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 439
    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 440
    const/16 v12, 0x9

    new-array v1, v12, [F

    .line 441
    .local v1, "f":[F
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 443
    const/4 v12, 0x0

    aget v12, v1, v12

    const/4 v13, 0x0

    mul-float/2addr v12, v13

    const/4 v13, 0x1

    aget v13, v1, v13

    const/4 v14, 0x0

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    const/4 v13, 0x2

    aget v13, v1, v13

    add-float v4, v12, v13

    .line 444
    .local v4, "x1":F
    const/4 v12, 0x3

    aget v12, v1, v12

    const/4 v13, 0x0

    mul-float/2addr v12, v13

    const/4 v13, 0x4

    aget v13, v1, v13

    const/4 v14, 0x0

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    const/4 v13, 0x5

    aget v13, v1, v13

    add-float v8, v12, v13

    .line 445
    .local v8, "y1":F
    const/4 v12, 0x0

    aget v12, v1, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    const/4 v13, 0x1

    aget v13, v1, v13

    const/4 v14, 0x0

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    const/4 v13, 0x2

    aget v13, v1, v13

    add-float v5, v12, v13

    .line 446
    .local v5, "x2":F
    const/4 v12, 0x3

    aget v12, v1, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    const/4 v13, 0x4

    aget v13, v1, v13

    const/4 v14, 0x0

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    const/4 v13, 0x5

    aget v13, v1, v13

    add-float v9, v12, v13

    .line 447
    .local v9, "y2":F
    const/4 v12, 0x0

    aget v12, v1, v12

    const/4 v13, 0x0

    mul-float/2addr v12, v13

    const/4 v13, 0x1

    aget v13, v1, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v14, v14, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    const/4 v13, 0x2

    aget v13, v1, v13

    add-float v6, v12, v13

    .line 448
    .local v6, "x3":F
    const/4 v12, 0x3

    aget v12, v1, v12

    const/4 v13, 0x0

    mul-float/2addr v12, v13

    const/4 v13, 0x4

    aget v13, v1, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v14, v14, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    const/4 v13, 0x5

    aget v13, v1, v13

    add-float v10, v12, v13

    .line 449
    .local v10, "y3":F
    const/4 v12, 0x0

    aget v12, v1, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    const/4 v13, 0x1

    aget v13, v1, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v14, v14, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    const/4 v13, 0x2

    aget v13, v1, v13

    add-float v7, v12, v13

    .line 450
    .local v7, "x4":F
    const/4 v12, 0x3

    aget v12, v1, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    const/4 v13, 0x4

    aget v13, v1, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v14, v14, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    const/4 v13, 0x5

    aget v13, v1, v13

    add-float v11, v12, v13

    .line 451
    .local v11, "y4":F
    const/16 v12, 0x10

    new-array v3, v12, [F

    .line 452
    .local v3, "points":[F
    const/4 v12, 0x0

    aput v4, v3, v12

    .line 453
    const/4 v12, 0x1

    aput v8, v3, v12

    .line 454
    const/4 v12, 0x2

    aput v5, v3, v12

    .line 455
    const/4 v12, 0x3

    aput v9, v3, v12

    .line 457
    const/4 v12, 0x4

    aput v4, v3, v12

    .line 458
    const/4 v12, 0x5

    aput v8, v3, v12

    .line 459
    const/4 v12, 0x6

    aput v6, v3, v12

    .line 460
    const/4 v12, 0x7

    aput v10, v3, v12

    .line 462
    const/16 v12, 0x8

    aput v5, v3, v12

    .line 463
    const/16 v12, 0x9

    aput v9, v3, v12

    .line 464
    const/16 v12, 0xa

    aput v7, v3, v12

    .line 465
    const/16 v12, 0xb

    aput v11, v3, v12

    .line 467
    const/16 v12, 0xc

    aput v6, v3, v12

    .line 468
    const/16 v12, 0xd

    aput v10, v3, v12

    .line 469
    const/16 v12, 0xe

    aput v7, v3, v12

    .line 470
    const/16 v12, 0xf

    aput v11, v3, v12

    .line 471
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 472
    if-nez p3, :cond_0

    .line 473
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->delete:Landroid/graphics/Bitmap;

    const/high16 v13, 0x41a00000    # 20.0f

    sub-float v13, v4, v13

    const/high16 v14, 0x41a00000    # 20.0f

    sub-float v14, v8, v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->rotate:Landroid/graphics/Bitmap;

    const/high16 v13, 0x41c80000    # 25.0f

    sub-float v13, v7, v13

    const/high16 v14, 0x41c80000    # 25.0f

    sub-float v14, v11, v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 476
    :cond_0
    return-void

    .line 435
    .end local v1    # "f":[F
    .end local v3    # "points":[F
    .end local v4    # "x1":F
    .end local v5    # "x2":F
    .end local v6    # "x3":F
    .end local v7    # "x4":F
    .end local v8    # "y1":F
    .end local v9    # "y2":F
    .end local v10    # "y3":F
    .end local v11    # "y4":F
    :cond_1
    const/high16 v12, -0x10000

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0
.end method

.method public getT(FFFFLandroid/graphics/Matrix;)[F
    .locals 9
    .param p1, "preX"    # F
    .param p2, "preY"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 502
    new-array v3, v8, [F

    .line 503
    .local v3, "re":[F
    const/16 v4, 0x9

    new-array v2, v4, [F

    .line 504
    .local v2, "matrixArray":[F
    invoke-virtual {p5, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 505
    aget v4, v2, v6

    mul-float/2addr v4, p1

    sub-float v4, p3, v4

    aget v5, v2, v7

    mul-float/2addr v5, p2

    sub-float v0, v4, v5

    .line 506
    .local v0, "a":F
    const/4 v4, 0x3

    aget v4, v2, v4

    mul-float/2addr v4, p1

    sub-float v4, p4, v4

    const/4 v5, 0x4

    aget v5, v2, v5

    mul-float/2addr v5, p2

    sub-float v1, v4, v5

    .line 507
    .local v1, "b":F
    aput v0, v2, v8

    .line 508
    const/4 v4, 0x5

    aput v1, v2, v4

    .line 509
    invoke-virtual {p5, v2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 510
    aput v0, v3, v6

    .line 511
    aput v1, v3, v7

    .line 512
    return-object v3
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 577
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 578
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 131
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mHasInit:Z

    if-nez v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->initView()V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 135
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0x106

    if-ne v2, v3, :cond_1

    .line 166
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBool:Z

    .line 167
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->twoPoint:I

    if-lez v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->twoPoint:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->twoPoint:I

    .line 169
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->checkClickDelete(Landroid/graphics/Matrix;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 171
    invoke-virtual/range {p0 .. p1}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->orderBtmapPriority(Landroid/view/MotionEvent;)V

    .line 172
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->X:F

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->Y:F

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getXY(I)F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->CX:F

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getXY(I)F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->CY:F

    .line 176
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBegin:Z

    .line 191
    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBegin:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mDrag:Z

    if-nez v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 194
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->X:F

    .line 195
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->Y:F

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBackground:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v3, v4, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 197
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v15, v2, :cond_5

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v2, v3, v15}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 197
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 177
    .end local v15    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->checkClick(Landroid/graphics/Matrix;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->spacingClick(Landroid/graphics/Matrix;Landroid/view/MotionEvent;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mPreSpace:F

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->rotationClick(Landroid/graphics/Matrix;Landroid/view/MotionEvent;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mPreAngle:F

    .line 180
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mDrag:Z

    goto/16 :goto_0

    .line 182
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->orderBtmapPriority(Landroid/view/MotionEvent;)V

    .line 183
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->X:F

    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->Y:F

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getXY(I)F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->CX:F

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getXY(I)F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->CY:F

    .line 187
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBegin:Z

    goto/16 :goto_0

    .line 202
    .restart local v15    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    .line 203
    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->X:F

    aput v4, v3, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->Y:F

    aput v4, v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v4, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->preX:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v5, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->preY:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpWidth:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float v6, v2, v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpHeight:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float v7, v2, v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v8, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->rotalPoint([FFFFFLandroid/graphics/Matrix;)[F

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->rotalP:[F

    .line 205
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->X:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v4, v8}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getXY(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v4, v8}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getTrformBtmapWidth()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->Y:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v4, v8}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getXY(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v4, v8}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getTrformBtmapHeight()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpHeight:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v2, v4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->X:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->CX:F

    add-float v5, v2, v8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->Y:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->CY:F

    add-float v6, v2, v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v7, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->getT(FFFFLandroid/graphics/Matrix;)[F

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->rotalC:[F

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->drawRedFrame(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Z)V

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->X:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->CX:F

    add-float/2addr v3, v4

    iput v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->preX:F

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->Y:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->CY:F

    add-float/2addr v3, v4

    iput v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->preY:F

    .line 218
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->checkClick(Landroid/graphics/Matrix;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 219
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mDrag:Z

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "drag"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 224
    .end local v15    # "i":I
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mDrag:Z

    if-eqz v2, :cond_d

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBackground:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v3, v4, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 226
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v15, v2, :cond_8

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v2, v3, v15}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 226
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 216
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 230
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->spacingClick(Landroid/graphics/Matrix;Landroid/view/MotionEvent;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCurrentSpace:F

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->rotationClick(Landroid/graphics/Matrix;Landroid/view/MotionEvent;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCurrentAngle:F

    .line 234
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCurrentSpace:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mPreSpace:F

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_c

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpWidth:F

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCurrentSpace:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mPreSpace:F

    sub-float/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCurrentSpace:F

    div-float/2addr v8, v9

    add-float/2addr v4, v8

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpWidth:F

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpHeight:F

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCurrentSpace:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mPreSpace:F

    sub-float/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCurrentSpace:F

    div-float/2addr v8, v9

    add-float/2addr v4, v8

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpHeight:F

    .line 237
    const-string/jumbo v2, "trform"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "curr   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCurrentSpace:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "     mPreSpace   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mPreSpace:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 239
    .local v7, "matrix":Landroid/graphics/Matrix;
    const/16 v16, 0x0

    .line 240
    .local v16, "sx":F
    const/16 v17, 0x0

    .line 241
    .local v17, "sy":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 242
    .local v5, "btwidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 243
    .local v6, "btheight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpWidth:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getOriginBtmapWidth()F

    move-result v3

    div-float v16, v2, v3

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpHeight:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getOriginBtmapHeight()F

    move-result v3

    div-float v17, v2, v3

    .line 245
    const-string/jumbo v2, "trform"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  w   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpWidth:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  h   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpHeight:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    move/from16 v0, v16

    float-to-double v2, v0

    const-wide v8, 0x3fc70a3d70a3d70aL    # 0.18

    cmpg-double v2, v2, v8

    if-gez v2, :cond_9

    .line 247
    const v16, 0x3e3851ec    # 0.18f

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    int-to-float v3, v5

    mul-float v3, v3, v16

    iput v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpWidth:F

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    int-to-float v3, v6

    mul-float v3, v3, v16

    iput v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpHeight:F

    .line 251
    :cond_9
    move/from16 v0, v17

    float-to-double v2, v0

    const-wide v8, 0x3fc70a3d70a3d70aL    # 0.18

    cmpg-double v2, v2, v8

    if-gez v2, :cond_a

    .line 252
    const v17, 0x3e3851ec    # 0.18f

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    int-to-float v3, v5

    mul-float v3, v3, v17

    iput v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpWidth:F

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    int-to-float v3, v6

    mul-float v3, v3, v17

    iput v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpHeight:F

    .line 256
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 257
    move/from16 v0, v17

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 261
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_b

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    .line 264
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->originBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v9, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    .line 269
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCurrentAngle:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mPreAngle:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v9, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v10, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v11, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->preX:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v12, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->preY:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v13, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->getT(FFFFLandroid/graphics/Matrix;)[F

    .line 272
    .end local v5    # "btwidth":I
    .end local v6    # "btheight":I
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v16    # "sx":F
    .end local v17    # "sy":F
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCurrentAngle:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mPreAngle:F

    .line 273
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCurrentSpace:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mPreSpace:F

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 275
    const-string/jumbo v2, "matrix"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->drawRedFrame(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Z)V

    .line 280
    .end local v15    # "i":I
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_17

    .line 281
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->twoPoint:I

    .line 282
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBegin:Z

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBackground:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v3, v4, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->invalidate()V

    .line 285
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v15, v2, :cond_f

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v2, v3, v15}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 285
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 259
    .restart local v5    # "btwidth":I
    .restart local v6    # "btheight":I
    .restart local v7    # "matrix":Landroid/graphics/Matrix;
    .restart local v16    # "sx":F
    .restart local v17    # "sy":F
    :cond_e
    move/from16 v0, v16

    move/from16 v1, v16

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto/16 :goto_4

    .line 289
    .end local v5    # "btwidth":I
    .end local v6    # "btheight":I
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v16    # "sx":F
    .end local v17    # "sy":F
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    .line 290
    const/4 v2, 0x2

    new-array v9, v2, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v9, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v9, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v10, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->preX:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v11, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->preY:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v12, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v13, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v14, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v14}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->rotalPoint([FFFFFLandroid/graphics/Matrix;)[F

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->rotalP:[F

    .line 292
    const/4 v2, 0x2

    new-array v9, v2, [F

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v9, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v9, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v10, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->preX:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v11, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->preY:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v12, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v13, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v14, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v14}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->rotalPoint([FFFFFLandroid/graphics/Matrix;)[F

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->rotalP_2:[F

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->rotalP:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v4, v8}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getXY(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v4, v8}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v3

    iget v3, v3, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->rotalP:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v4, v8}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getXY(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v4, v8}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v3

    iget v3, v3, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpHeight:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->rotalP_2:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v4, v8}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getXY(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v4, v8}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v3

    iget v3, v3, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->rotalP_2:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v4, v8}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getXY(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v4, v8}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v3

    iget v3, v3, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpHeight:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_10

    .line 302
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBool:Z

    if-eqz v2, :cond_11

    .line 303
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->caculateSpace(Landroid/view/MotionEvent;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mPreSpace:F

    .line 304
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->caculateAngle(Landroid/view/MotionEvent;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mPreAngle:F

    .line 305
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBool:Z

    .line 308
    :cond_11
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->caculateSpace(Landroid/view/MotionEvent;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCurrentSpace:F

    .line 309
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->caculateAngle(Landroid/view/MotionEvent;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCurrentAngle:F

    .line 311
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCurrentSpace:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mPreSpace:F

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_15

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpWidth:F

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCurrentSpace:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mPreSpace:F

    sub-float/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCurrentSpace:F

    div-float/2addr v8, v9

    add-float/2addr v4, v8

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpWidth:F

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpHeight:F

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCurrentSpace:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mPreSpace:F

    sub-float/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCurrentSpace:F

    div-float/2addr v8, v9

    add-float/2addr v4, v8

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpHeight:F

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpWidth:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mViewWidth:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_12

    .line 318
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpHeight:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mViewHeight:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_13

    .line 322
    :cond_13
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 323
    .restart local v7    # "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpWidth:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getOriginBtmapWidth()F

    move-result v3

    div-float v16, v2, v3

    .line 324
    .restart local v16    # "sx":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpHeight:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getOriginBtmapHeight()F

    move-result v3

    div-float v17, v2, v3

    .line 325
    .restart local v17    # "sy":F
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_14

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v8, v3, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->originBitmap:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v14, 0x1

    move-object v13, v7

    invoke-static/range {v8 .. v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    .line 333
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v9, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v10, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v11, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->preX:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v12, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->preY:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v13, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->scale(FFFFLandroid/graphics/Matrix;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCurrentAngle:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mPreAngle:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v9, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v10, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v11, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->preX:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget v12, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->preY:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v13, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->getT(FFFFLandroid/graphics/Matrix;)[F

    .line 339
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v16    # "sx":F
    .end local v17    # "sy":F
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCurrentAngle:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCurrentAngle:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x43310000    # 177.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCurrentAngle:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mPreAngle:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x41700000    # 15.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_16

    .line 344
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCurrentAngle:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mPreAngle:F

    .line 345
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCurrentSpace:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mPreSpace:F

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->transformBtmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->drawRedFrame(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Z)V

    .line 354
    .end local v15    # "i":I
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 355
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->CX:F

    .line 356
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->CY:F

    .line 357
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBegin:Z

    .line 358
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mDrag:Z

    .line 360
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->invalidate()V

    .line 361
    const/4 v2, 0x1

    return v2
.end method

.method public orderBtmapPriority(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 480
    const/4 v12, 0x0

    .line 481
    .local v12, "temp":Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;
    iget v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    add-int/lit8 v9, v0, -0x1

    .local v9, "i":I
    :goto_0
    const/4 v0, -0x1

    if-le v9, v0, :cond_2

    .line 482
    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aput v2, v1, v0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    aput v2, v1, v0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v0, v2, v9}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->preX:F

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v0, v3, v9}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->preY:F

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v0, v4, v9}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v5, 0x0

    aget-object v0, v0, v5

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v0, v5, v9}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpHeight:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v6, 0x0

    aget-object v0, v0, v6

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v0, v6, v9}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->rotalPoint([FFFFFLandroid/graphics/Matrix;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->rotalP:[F

    .line 485
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v0, v1, v9}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getXY(I)F

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->rotalP:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v1, v2, v9}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v1

    iget v1, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v0, v1, v9}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getXY(I)F

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->rotalP:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v1, v2, v9}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v1

    iget v1, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 488
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v0, v1, v9}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v12

    .line 489
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    .local v7, "arr$":[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;
    array-length v11, v7

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    if-ge v10, v11, :cond_1

    aget-object v8, v7, v10

    .line 490
    .local v8, "bmp":Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;
    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getPriority()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v1, v2, v9}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getPriority()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 491
    iget v0, v8, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->priority:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v8, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->priority:I

    .line 489
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 494
    .end local v8    # "bmp":Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v12, v0}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->setPiority(I)V

    .line 495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBegin:Z

    .line 499
    .end local v7    # "arr$":[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :cond_2
    return-void

    .line 481
    :cond_3
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_0
.end method

.method public refreshView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 365
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 366
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    if-ge v0, v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v1, v2, v0}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    .line 369
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->invalidate()V

    .line 372
    return-void
.end method

.method public rotalPoint([FFFFFLandroid/graphics/Matrix;)[F
    .locals 8
    .param p1, "p"    # [F
    .param p2, "X"    # F
    .param p3, "Y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 536
    const/4 v4, 0x2

    new-array v3, v4, [F

    .line 537
    .local v3, "re":[F
    const/16 v4, 0x9

    new-array v2, v4, [F

    .line 538
    .local v2, "matrixArray":[F
    invoke-virtual {p6, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 539
    aget v4, p1, v6

    sub-float v0, v4, p2

    .line 540
    .local v0, "a":F
    aget v4, p1, v7

    sub-float v1, v4, p3

    .line 541
    .local v1, "b":F
    aget v4, v2, v6

    mul-float/2addr v4, v0

    aget v5, v2, v7

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    add-float/2addr v4, p2

    aput v4, v3, v6

    .line 542
    neg-float v4, v0

    const/4 v5, 0x3

    aget v5, v2, v5

    mul-float/2addr v4, v5

    const/4 v5, 0x4

    aget v5, v2, v5

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    add-float/2addr v4, p3

    aput v4, v3, v7

    .line 543
    return-object v3
.end method

.method public scale(FFFFLandroid/graphics/Matrix;)V
    .locals 4
    .param p1, "preX"    # F
    .param p2, "preY"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 516
    const/16 v3, 0x9

    new-array v2, v3, [F

    .line 517
    .local v2, "matrixArray":[F
    invoke-virtual {p5, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 518
    sub-float v0, p3, p1

    .line 519
    .local v0, "a":F
    sub-float v1, p4, p2

    .line 520
    .local v1, "b":F
    const/4 v3, 0x2

    aput v0, v2, v3

    .line 521
    const/4 v3, 0x5

    aput v1, v2, v3

    .line 522
    invoke-virtual {p5, v2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 523
    return-void
.end method

.method public setBackGroud(I)V
    .locals 6
    .param p1, "res"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 681
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 682
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 683
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 684
    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBackground:Landroid/graphics/Bitmap;

    .line 686
    :cond_0
    iget v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mViewWidth:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mViewHeight:I

    invoke-static {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;->scaleBitmapToFit(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBackground:Landroid/graphics/Bitmap;

    .line 687
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 688
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    if-ge v1, v2, :cond_1

    .line 689
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v2, v3, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->findByPiority([Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;I)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    .line 691
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mTempBitmap:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 688
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 693
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->invalidate()V

    .line 694
    return-void
.end method

.method public setBitmaps(Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "bitmaplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    .line 99
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    new-array v2, v2, [Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    .line 100
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->bitmapCount:I

    if-ge v10, v2, :cond_3

    .line 101
    const/4 v13, 0x0

    .line 102
    .local v13, "sx":F
    const/4 v14, 0x0

    .line 103
    .local v14, "sy":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 104
    .local v1, "btmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 105
    .local v6, "matrix":Landroid/graphics/Matrix;
    const/high16 v2, 0x435c0000    # 220.0f

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v13, v2, v3

    .line 106
    const/high16 v2, 0x43700000    # 240.0f

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v14, v2, v3

    .line 107
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 108
    invoke-virtual {v6, v13, v13}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 112
    :goto_1
    const/4 v2, 0x3

    if-ge v10, v2, :cond_1

    .line 113
    mul-int/lit16 v2, v10, 0xdc

    mul-int/lit8 v3, v10, 0x5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mInitLocationX:I

    .line 119
    :goto_2
    div-int/lit8 v2, v10, 0x3

    mul-int/lit16 v2, v2, 0xf0

    div-int/lit8 v3, v10, 0x3

    mul-int/lit8 v3, v3, 0x1e

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mInitLocationY:I

    .line 120
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    new-instance v16, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mInitLocationX:I

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mInitLocationY:I

    int-to-float v12, v2

    move-object/from16 v7, v16

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;Landroid/graphics/Bitmap;IFF)V

    aput-object v16, v15, v10

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    aget-object v2, v2, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    aget-object v3, v3, v10

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpWidth:F

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    aget-object v2, v2, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    aget-object v3, v3, v10

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->trformBtmpHeight:F

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mMosaicLeBtmaps:[Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;

    aget-object v2, v2, v10

    iput-object v1, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView$LeBitmap;->originBitmap:Landroid/graphics/Bitmap;

    .line 100
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 110
    :cond_0
    invoke-virtual {v6, v14, v14}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    .line 114
    :cond_1
    const/4 v2, 0x2

    if-le v10, v2, :cond_2

    const/4 v2, 0x6

    if-ge v10, v2, :cond_2

    .line 115
    add-int/lit8 v2, v10, -0x3

    mul-int/lit16 v2, v2, 0xdc

    add-int/lit8 v3, v10, -0x3

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mInitLocationX:I

    goto/16 :goto_2

    .line 117
    :cond_2
    add-int/lit8 v2, v10, -0x6

    mul-int/lit16 v2, v2, 0xdc

    add-int/lit8 v3, v10, -0x6

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomView;->mInitLocationX:I

    goto/16 :goto_2

    .line 126
    .end local v1    # "btmap":Landroid/graphics/Bitmap;
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v13    # "sx":F
    .end local v14    # "sy":F
    :cond_3
    return-void
.end method

.method public setToO(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 526
    const/16 v3, 0x9

    new-array v2, v3, [F

    .line 527
    .local v2, "matrixArray":[F
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 528
    const/4 v0, 0x0

    .line 529
    .local v0, "a":F
    const/4 v1, 0x0

    .line 530
    .local v1, "b":F
    const/4 v3, 0x2

    aput v0, v2, v3

    .line 531
    const/4 v3, 0x5

    aput v1, v2, v3

    .line 532
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 533
    return-void
.end method
