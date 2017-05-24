.class public Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;
.super Landroid/view/View;
.source "EnHanceFreedomView2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$ObjectInfo;,
        Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;
    }
.end annotation


# instance fields
.field private mBackground:Landroid/graphics/Bitmap;

.field private mBegin:Z

.field private mBool:Z

.field private mCanvasTexture:Landroid/graphics/Bitmap;

.field private mChangeX:F

.field private mChangeY:F

.field private mContext:Landroid/content/Context;

.field private mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

.field private mCurrentAngle:F

.field private mCurrentImageNumber:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

.field private mCurrentSpace:F

.field private mDrag:Z

.field private mFreedomTemplate:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$FreedomTemplate;

.field private mFreedomViewHeight:I

.field private mFreedomViewWidth:I

.field private mHasInit:Z

.field private mImageInitHeight:F

.field private mImageInitWidth:F

.field private mObjectCount:I

.field private mObjects:[Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

.field private mOperateCanvas:Landroid/graphics/Canvas;

.field private mPaint:Landroid/graphics/Paint;

.field private mPreAngle:F

.field private mPreSpace:F

.field private mTouchX:F

.field private mTouchY:F

.field private rotate:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x43f00000    # 480.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    const/high16 v0, 0x43e60000    # 460.0f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mImageInitWidth:F

    .line 39
    iput v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mImageInitHeight:F

    .line 41
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjects:[Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    .line 43
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    .line 45
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mBackground:Landroid/graphics/Bitmap;

    .line 47
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCanvasTexture:Landroid/graphics/Bitmap;

    .line 49
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mOperateCanvas:Landroid/graphics/Canvas;

    .line 51
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPaint:Landroid/graphics/Paint;

    .line 60
    iput v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjectCount:I

    .line 62
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mTouchX:F

    .line 64
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mTouchY:F

    .line 66
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mChangeX:F

    .line 68
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mChangeY:F

    .line 70
    iput-boolean v5, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mBegin:Z

    .line 72
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mDrag:Z

    .line 74
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mHasInit:Z

    .line 76
    iput v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPreSpace:F

    .line 78
    iput v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentSpace:F

    .line 80
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPreAngle:F

    .line 82
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentAngle:F

    .line 84
    iput-boolean v5, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mBool:Z

    .line 88
    sget-object v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;->THREE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentImageNumber:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    .line 92
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mImageInitWidth:F

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mImageInitHeight:F

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x43f00000    # 480.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/high16 v0, 0x43e60000    # 460.0f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mImageInitWidth:F

    .line 39
    iput v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mImageInitHeight:F

    .line 41
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjects:[Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    .line 43
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    .line 45
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mBackground:Landroid/graphics/Bitmap;

    .line 47
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCanvasTexture:Landroid/graphics/Bitmap;

    .line 49
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mOperateCanvas:Landroid/graphics/Canvas;

    .line 51
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPaint:Landroid/graphics/Paint;

    .line 60
    iput v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjectCount:I

    .line 62
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mTouchX:F

    .line 64
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mTouchY:F

    .line 66
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mChangeX:F

    .line 68
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mChangeY:F

    .line 70
    iput-boolean v5, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mBegin:Z

    .line 72
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mDrag:Z

    .line 74
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mHasInit:Z

    .line 76
    iput v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPreSpace:F

    .line 78
    iput v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentSpace:F

    .line 80
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPreAngle:F

    .line 82
    iput v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentAngle:F

    .line 84
    iput-boolean v5, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mBool:Z

    .line 88
    sget-object v0, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;->THREE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentImageNumber:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    .line 99
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mImageInitWidth:F

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mImageInitHeight:F

    .line 102
    return-void
.end method

.method private caculateAngle(Landroid/view/MotionEvent;)F
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 721
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    sub-float v2, v4, v5

    .line 722
    .local v2, "x":F
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    sub-float v3, v4, v5

    .line 723
    .local v3, "y":F
    float-to-double v4, v3

    float-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 724
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

    .line 715
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 716
    .local v0, "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 717
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method

.method private drawAllPics()V
    .locals 5

    .prologue
    .line 625
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->drawBackground()V

    .line 626
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjectCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 627
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->findByPiority(I)Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    .line 628
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mOperateCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 630
    :cond_0
    return-void
.end method

.method private drawBackground()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 621
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mOperateCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mBackground:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 622
    return-void
.end method

.method private findByPiority(I)Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;
    .locals 5
    .param p1, "priority"    # I

    .prologue
    .line 802
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjects:[Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 803
    .local v2, "lebitmap":Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;
    iget v4, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->priority:I

    if-ne v4, p1, :cond_0

    .line 807
    .end local v2    # "lebitmap":Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;
    :goto_1
    return-object v2

    .line 802
    .restart local v2    # "lebitmap":Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 807
    .end local v2    # "lebitmap":Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private initView()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x22b8

    const v4, 0x7f02089a

    const v5, 0x7f02085f

    .line 187
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPaint:Landroid/graphics/Paint;

    .line 188
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 189
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mFreedomViewWidth:I

    .line 190
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mFreedomViewHeight:I

    .line 198
    sget-object v2, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    sget-object v2, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->rotate:Landroid/graphics/Bitmap;

    .line 205
    :goto_0
    sget-object v2, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    sget-object v2, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mBackground:Landroid/graphics/Bitmap;

    .line 223
    :goto_1
    sget-object v2, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 224
    sget-object v2, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCanvasTexture:Landroid/graphics/Bitmap;

    .line 234
    :goto_2
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCanvasTexture:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mOperateCanvas:Landroid/graphics/Canvas;

    .line 235
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mOperateCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mBackground:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 236
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjects:[Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    if-eqz v2, :cond_4

    .line 237
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjectCount:I

    if-ge v1, v2, :cond_4

    .line 238
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->findByPiority(I)Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    .line 239
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mOperateCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 201
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->rotate:Landroid/graphics/Bitmap;

    .line 202
    sget-object v2, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->rotate:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 209
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mFreedomViewWidth:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mFreedomViewHeight:I

    invoke-static {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;->scaleBitmapToFit(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mBackground:Landroid/graphics/Bitmap;

    .line 210
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 211
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 213
    :cond_2
    sget-object v2, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 226
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    iget v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mFreedomViewWidth:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mFreedomViewHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCanvasTexture:Landroid/graphics/Bitmap;

    .line 227
    sget-object v2, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCanvasTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 242
    :cond_4
    iput-boolean v8, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mHasInit:Z

    .line 243
    return-void
.end method

.method private isMultiTouchInBitmap(Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;FFFF)Z
    .locals 4
    .param p1, "lebitmap"    # Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;
    .param p2, "touchX1"    # F
    .param p3, "touchY1"    # F
    .param p4, "touchX2"    # F
    .param p5, "touchY2"    # F

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v2, 0x40000000    # 2.0f

    .line 641
    iget v0, p1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->locationX:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectWidth:F

    div-float/2addr v1, v2

    add-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->locationY:F

    sub-float v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectHeight:F

    div-float/2addr v1, v2

    add-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->locationX:F

    sub-float v0, p4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectWidth:F

    div-float/2addr v1, v2

    add-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->locationY:F

    sub-float v0, p5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectHeight:F

    div-float/2addr v1, v2

    add-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 645
    const/4 v0, 0x1

    .line 647
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTouchPointInBitmap(Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;FF)Z
    .locals 3
    .param p1, "operateObject"    # Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;
    .param p2, "touchX"    # F
    .param p3, "touchY"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 633
    iget v0, p1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->locationX:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectWidth:F

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->locationY:F

    sub-float v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectHeight:F

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 635
    const/4 v0, 0x1

    .line 637
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rotationClick(Landroid/graphics/Matrix;Landroid/view/MotionEvent;)F
    .locals 12
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    .line 535
    const/16 v7, 0x9

    new-array v0, v7, [F

    .line 536
    .local v0, "f":[F
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 537
    const/4 v7, 0x0

    aget v7, v0, v7

    mul-float/2addr v7, v9

    const/4 v8, 0x1

    aget v8, v0, v8

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/4 v8, 0x2

    aget v8, v0, v8

    add-float v4, v7, v8

    .line 538
    .local v4, "x1":F
    const/4 v7, 0x3

    aget v7, v0, v7

    mul-float/2addr v7, v9

    const/4 v8, 0x4

    aget v8, v0, v8

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/4 v8, 0x5

    aget v8, v0, v8

    add-float v6, v7, v8

    .line 539
    .local v6, "y1":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float v1, v7, v4

    .line 540
    .local v1, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float v5, v7, v6

    .line 541
    .local v5, "y":F
    float-to-double v8, v5

    float-to-double v10, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    .line 542
    .local v2, "radians":D
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v7, v8

    return v7
.end method

.method private scaleClick(Landroid/graphics/Matrix;Landroid/view/MotionEvent;)F
    .locals 13
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 517
    const/16 v10, 0x9

    new-array v0, v10, [F

    .line 518
    .local v0, "f":[F
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 519
    const/4 v10, 0x0

    aget v10, v0, v10

    const/4 v11, 0x0

    mul-float/2addr v10, v11

    const/4 v11, 0x1

    aget v11, v0, v11

    const/4 v12, 0x0

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    const/4 v11, 0x2

    aget v11, v0, v11

    add-float v6, v10, v11

    .line 520
    .local v6, "x1":F
    const/4 v10, 0x3

    aget v10, v0, v10

    const/4 v11, 0x0

    mul-float/2addr v10, v11

    const/4 v11, 0x4

    aget v11, v0, v11

    const/4 v12, 0x0

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    const/4 v11, 0x5

    aget v11, v0, v11

    add-float v8, v10, v11

    .line 522
    .local v8, "y1":F
    const/4 v10, 0x0

    aget v10, v0, v10

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v11, v11, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const/4 v11, 0x1

    aget v11, v0, v11

    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v12, v12, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    const/4 v11, 0x2

    aget v11, v0, v11

    add-float v7, v10, v11

    .line 523
    .local v7, "x4":F
    const/4 v10, 0x3

    aget v10, v0, v10

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v11, v11, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const/4 v11, 0x4

    aget v11, v0, v11

    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v12, v12, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    const/4 v11, 0x5

    aget v11, v0, v11

    add-float v9, v10, v11

    .line 525
    .local v9, "y4":F
    sub-float v10, v7, v6

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float v3, v6, v10

    .line 526
    .local v3, "originX":F
    sub-float v10, v9, v8

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float v4, v8, v10

    .line 528
    .local v4, "originY":F
    sub-float v10, v7, v3

    sub-float v11, v7, v3

    mul-float/2addr v10, v11

    sub-float v11, v9, v4

    sub-float v12, v9, v4

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    invoke-static {v10}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    .line 529
    .local v1, "originToBitmapRightDown":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    sub-float/2addr v10, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    sub-float/2addr v11, v3

    mul-float/2addr v10, v11

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float/2addr v11, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    sub-float/2addr v12, v4

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    invoke-static {v10}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    .line 530
    .local v2, "originToEvent":F
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v11, v2, v1

    div-float/2addr v11, v2

    add-float v5, v10, v11

    .line 531
    .local v5, "scale":F
    return v5
.end method

.method private spacingClick(Landroid/graphics/Matrix;Landroid/view/MotionEvent;)F
    .locals 8
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    .line 506
    const/16 v5, 0x9

    new-array v0, v5, [F

    .line 507
    .local v0, "f":[F
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 508
    const/4 v5, 0x0

    aget v5, v0, v5

    mul-float/2addr v5, v7

    const/4 v6, 0x1

    aget v6, v0, v6

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v0, v6

    add-float v2, v5, v6

    .line 509
    .local v2, "x1":F
    const/4 v5, 0x3

    aget v5, v0, v5

    mul-float/2addr v5, v7

    const/4 v6, 0x4

    aget v6, v0, v6

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/4 v6, 0x5

    aget v6, v0, v6

    add-float v4, v5, v6

    .line 511
    .local v4, "y1":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float v1, v5, v2

    .line 512
    .local v1, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float v3, v5, v4

    .line 513
    .local v3, "y":F
    mul-float v5, v1, v1

    mul-float v6, v3, v3

    add-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v5

    return v5
.end method


# virtual methods
.method public checkClick(Landroid/graphics/Matrix;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v8, 0x42480000    # 50.0f

    .line 558
    const/16 v5, 0x9

    :try_start_0
    new-array v0, v5, [F

    .line 559
    .local v0, "f":[F
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 561
    const/4 v5, 0x0

    aget v5, v0, v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v6, v6, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v0, v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v0, v6

    add-float v1, v5, v6

    .line 562
    .local v1, "x4":F
    const/4 v5, 0x3

    aget v5, v0, v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v6, v6, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const/4 v6, 0x4

    aget v6, v0, v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/4 v6, 0x5

    aget v6, v0, v6

    add-float v2, v5, v6

    .line 563
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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    add-float v6, v2, v8

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 569
    .end local v0    # "f":[F
    .end local v1    # "x4":F
    .end local v2    # "y4":F
    :goto_0
    return v3

    .line 566
    :catch_0
    move-exception v3

    :cond_0
    move v3, v4

    .line 569
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

    .line 546
    const/16 v5, 0x9

    new-array v0, v5, [F

    .line 547
    .local v0, "f":[F
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 548
    aget v5, v0, v4

    mul-float/2addr v5, v7

    aget v6, v0, v3

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v0, v6

    add-float v1, v5, v6

    .line 549
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

    .line 550
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

    .line 553
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

    .line 842
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mHasInit:Z

    .line 843
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCanvasTexture:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCanvasTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 844
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCanvasTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 845
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCanvasTexture:Landroid/graphics/Bitmap;

    .line 847
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjects:[Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 848
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjects:[Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjects:[Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 849
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjects:[Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 850
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjects:[Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    aget-object v1, v1, v0

    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    .line 852
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjects:[Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjects:[Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 853
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjects:[Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 854
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjects:[Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    aget-object v1, v1, v0

    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    .line 847
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 857
    :cond_3
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjects:[Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    .line 858
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    if-eqz v1, :cond_6

    .line 859
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 860
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 861
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    .line 863
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 864
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 865
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    .line 867
    :cond_5
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    .line 870
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_7

    .line 871
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 872
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mBackground:Landroid/graphics/Bitmap;

    .line 879
    :cond_7
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->rotate:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->rotate:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 880
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->rotate:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 881
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->rotate:Landroid/graphics/Bitmap;

    .line 883
    :cond_8
    return-void
.end method

.method public drawRedFrame(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Z)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "hide"    # Z

    .prologue
    .line 573
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 574
    .local v2, "paint":Landroid/graphics/Paint;
    if-eqz p3, :cond_0

    .line 575
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 579
    :goto_0
    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 580
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 581
    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 582
    const/16 v12, 0x9

    new-array v1, v12, [F

    .line 583
    .local v1, "f":[F
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 585
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

    .line 586
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

    .line 587
    .local v8, "y1":F
    const/4 v12, 0x0

    aget v12, v1, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

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

    .line 588
    .local v5, "x2":F
    const/4 v12, 0x3

    aget v12, v1, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

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

    .line 589
    .local v9, "y2":F
    const/4 v12, 0x0

    aget v12, v1, v12

    const/4 v13, 0x0

    mul-float/2addr v12, v13

    const/4 v13, 0x1

    aget v13, v1, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v14, v14, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    const/4 v13, 0x2

    aget v13, v1, v13

    add-float v6, v12, v13

    .line 590
    .local v6, "x3":F
    const/4 v12, 0x3

    aget v12, v1, v12

    const/4 v13, 0x0

    mul-float/2addr v12, v13

    const/4 v13, 0x4

    aget v13, v1, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v14, v14, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    const/4 v13, 0x5

    aget v13, v1, v13

    add-float v10, v12, v13

    .line 591
    .local v10, "y3":F
    const/4 v12, 0x0

    aget v12, v1, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    const/4 v13, 0x1

    aget v13, v1, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v14, v14, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    const/4 v13, 0x2

    aget v13, v1, v13

    add-float v7, v12, v13

    .line 592
    .local v7, "x4":F
    const/4 v12, 0x3

    aget v12, v1, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v13, v13, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    const/4 v13, 0x4

    aget v13, v1, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v14, v14, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    const/4 v13, 0x5

    aget v13, v1, v13

    add-float v11, v12, v13

    .line 593
    .local v11, "y4":F
    const/16 v12, 0x10

    new-array v3, v12, [F

    .line 594
    .local v3, "points":[F
    const/4 v12, 0x0

    aput v4, v3, v12

    .line 595
    const/4 v12, 0x1

    aput v8, v3, v12

    .line 596
    const/4 v12, 0x2

    aput v5, v3, v12

    .line 597
    const/4 v12, 0x3

    aput v9, v3, v12

    .line 599
    const/4 v12, 0x4

    aput v4, v3, v12

    .line 600
    const/4 v12, 0x5

    aput v8, v3, v12

    .line 601
    const/4 v12, 0x6

    aput v6, v3, v12

    .line 602
    const/4 v12, 0x7

    aput v10, v3, v12

    .line 604
    const/16 v12, 0x8

    aput v5, v3, v12

    .line 605
    const/16 v12, 0x9

    aput v9, v3, v12

    .line 606
    const/16 v12, 0xa

    aput v7, v3, v12

    .line 607
    const/16 v12, 0xb

    aput v11, v3, v12

    .line 609
    const/16 v12, 0xc

    aput v6, v3, v12

    .line 610
    const/16 v12, 0xd

    aput v10, v3, v12

    .line 611
    const/16 v12, 0xe

    aput v7, v3, v12

    .line 612
    const/16 v12, 0xf

    aput v11, v3, v12

    .line 613
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 616
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->rotate:Landroid/graphics/Bitmap;

    const/high16 v13, 0x42340000    # 45.0f

    sub-float v13, v7, v13

    const/high16 v14, 0x42340000    # 45.0f

    sub-float v14, v11, v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 618
    return-void

    .line 577
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
    :cond_0
    const/high16 v12, -0x10000

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 729
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 730
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 180
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mHasInit:Z

    if-nez v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->initView()V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCanvasTexture:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 184
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 248
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 491
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->invalidate()V

    .line 492
    const/4 v2, 0x1

    return v2

    .line 250
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->checkClickDelete(Landroid/graphics/Matrix;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    invoke-virtual/range {p0 .. p1}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->orderObjectPriority(Landroid/view/MotionEvent;)V

    .line 253
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjectCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->findByPiority(I)Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    move-result-object v2

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->locationX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mChangeX:F

    .line 254
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjectCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->findByPiority(I)Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    move-result-object v2

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->locationY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mChangeY:F

    .line 255
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mBegin:Z

    .line 256
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mTouchX:F

    .line 257
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mTouchY:F

    goto :goto_0

    .line 258
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->checkClick(Landroid/graphics/Matrix;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->spacingClick(Landroid/graphics/Matrix;Landroid/view/MotionEvent;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPreSpace:F

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->rotationClick(Landroid/graphics/Matrix;Landroid/view/MotionEvent;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPreAngle:F

    .line 261
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mDrag:Z

    goto/16 :goto_0

    .line 263
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->orderObjectPriority(Landroid/view/MotionEvent;)V

    .line 264
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjectCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->findByPiority(I)Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    move-result-object v2

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->locationX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mChangeX:F

    .line 265
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjectCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->findByPiority(I)Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    move-result-object v2

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->locationY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mChangeY:F

    .line 266
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mBegin:Z

    .line 267
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mTouchX:F

    .line 268
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mTouchY:F

    goto/16 :goto_0

    .line 273
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mBegin:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mDrag:Z

    if-nez v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 274
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->drawAllPics()V

    .line 275
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjectCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->findByPiority(I)Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mTouchX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mTouchY:F

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->isTouchPointInBitmap(Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;FF)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mTouchX:F

    sub-float/2addr v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mTouchY:F

    sub-float/2addr v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 278
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mTouchX:F

    .line 279
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mTouchY:F

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mOperateCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mOperateCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->drawRedFrame(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Z)V

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mTouchX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mChangeX:F

    add-float/2addr v3, v4

    iput v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->locationX:F

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mTouchY:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mChangeY:F

    add-float/2addr v3, v4

    iput v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->locationY:F

    .line 339
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mDrag:Z

    if-eqz v2, :cond_c

    .line 340
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->drawAllPics()V

    .line 341
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjectCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->findByPiority(I)Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->scaleClick(Landroid/graphics/Matrix;Landroid/view/MotionEvent;)F

    move-result v14

    .line 343
    .local v14, "scale":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->rotationClick(Landroid/graphics/Matrix;Landroid/view/MotionEvent;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentAngle:F

    .line 345
    const/4 v2, 0x0

    cmpl-float v2, v14, v2

    if-eqz v2, :cond_c

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_c

    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sget v3, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    if-ge v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget v3, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    if-lt v2, v3, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentSpace:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPreSpace:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_b

    .line 351
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectWidth:F

    mul-float/2addr v3, v14

    iput v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectWidth:F

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectHeight:F

    mul-float/2addr v3, v14

    iput v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectHeight:F

    .line 353
    const-string/jumbo v2, "trform"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "curr   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentSpace:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "     mPreSpace   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPreSpace:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 355
    .local v7, "matrix":Landroid/graphics/Matrix;
    const/4 v15, 0x0

    .line 356
    .local v15, "sx":F
    const/16 v16, 0x0

    .line 357
    .local v16, "sy":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 358
    .local v5, "btwidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 359
    .local v6, "btheight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectWidth:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->getOriginBtmapWidth()F

    move-result v3

    div-float v15, v2, v3

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectHeight:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->getOriginBtmapHeight()F

    move-result v3

    div-float v16, v2, v3

    .line 361
    float-to-double v2, v15

    const-wide v8, 0x3fc70a3d70a3d70aL    # 0.18

    cmpg-double v2, v2, v8

    if-gez v2, :cond_6

    .line 362
    const v15, 0x3e3851ec    # 0.18f

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    int-to-float v3, v5

    mul-float/2addr v3, v15

    iput v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectWidth:F

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    int-to-float v3, v6

    mul-float/2addr v3, v15

    iput v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectHeight:F

    .line 366
    :cond_6
    move/from16 v0, v16

    float-to-double v2, v0

    const-wide v8, 0x3fc70a3d70a3d70aL    # 0.18

    cmpg-double v2, v2, v8

    if-gez v2, :cond_7

    .line 367
    const v16, 0x3e3851ec    # 0.18f

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    int-to-float v3, v5

    mul-float v3, v3, v16

    iput v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectWidth:F

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    int-to-float v3, v6

    mul-float v3, v3, v16

    iput v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectHeight:F

    .line 371
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 372
    move/from16 v0, v16

    move/from16 v1, v16

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 376
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_a

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 381
    .local v17, "tempBitmap":Landroid/graphics/Bitmap;
    if-eqz v17, :cond_8

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    .line 385
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    .line 387
    :cond_9
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v9, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    .line 389
    .end local v17    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentAngle:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPreAngle:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v9, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v10, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget v11, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->locationX:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget v12, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->locationY:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v13, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->updateMatrix(FFFFLandroid/graphics/Matrix;)V

    .line 393
    .end local v5    # "btwidth":I
    .end local v6    # "btheight":I
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v15    # "sx":F
    .end local v16    # "sy":F
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentAngle:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPreAngle:F

    .line 394
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentSpace:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPreSpace:F

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mOperateCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 396
    const-string/jumbo v2, "matrix"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mOperateCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->drawRedFrame(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Z)V

    .line 404
    .end local v14    # "scale":F
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 405
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->drawAllPics()V

    .line 406
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjectCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->findByPiority(I)Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    .line 407
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mBegin:Z

    .line 408
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->isMultiTouchInBitmap(Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;FFFF)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 409
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mBool:Z

    if-eqz v2, :cond_d

    .line 410
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->caculateSpace(Landroid/view/MotionEvent;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPreSpace:F

    .line 411
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->caculateAngle(Landroid/view/MotionEvent;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPreAngle:F

    .line 412
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mBool:Z

    .line 415
    :cond_d
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->caculateSpace(Landroid/view/MotionEvent;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentSpace:F

    .line 416
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->caculateAngle(Landroid/view/MotionEvent;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentAngle:F

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_16

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sget v3, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    if-ge v2, v3, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget v3, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    if-lt v2, v3, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentSpace:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPreSpace:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_16

    .line 423
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentSpace:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPreSpace:F

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_15

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectWidth:F

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentSpace:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPreSpace:F

    sub-float/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentSpace:F

    div-float/2addr v8, v9

    add-float/2addr v4, v8

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectWidth:F

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectHeight:F

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentSpace:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPreSpace:F

    sub-float/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentSpace:F

    div-float/2addr v8, v9

    add-float/2addr v4, v8

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectHeight:F

    .line 426
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 427
    .restart local v7    # "matrix":Landroid/graphics/Matrix;
    const/4 v15, 0x0

    .line 428
    .restart local v15    # "sx":F
    const/16 v16, 0x0

    .line 429
    .restart local v16    # "sy":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 430
    .restart local v5    # "btwidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 431
    .restart local v6    # "btheight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectWidth:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->getOriginBtmapWidth()F

    move-result v3

    div-float v15, v2, v3

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectHeight:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->getOriginBtmapHeight()F

    move-result v3

    div-float v16, v2, v3

    .line 433
    const-string/jumbo v2, "trform"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  w   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectWidth:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  h   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectHeight:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    float-to-double v2, v15

    const-wide v8, 0x3fc70a3d70a3d70aL    # 0.18

    cmpg-double v2, v2, v8

    if-gez v2, :cond_10

    .line 435
    const v15, 0x3e3851ec    # 0.18f

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    int-to-float v3, v5

    mul-float/2addr v3, v15

    iput v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectWidth:F

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    int-to-float v3, v6

    mul-float/2addr v3, v15

    iput v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectHeight:F

    .line 439
    :cond_10
    move/from16 v0, v16

    float-to-double v2, v0

    const-wide v8, 0x3fc70a3d70a3d70aL    # 0.18

    cmpg-double v2, v2, v8

    if-gez v2, :cond_11

    .line 440
    const v16, 0x3e3851ec    # 0.18f

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    int-to-float v3, v5

    mul-float v3, v3, v16

    iput v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectWidth:F

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    int-to-float v3, v6

    mul-float v3, v3, v16

    iput v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectHeight:F

    .line 444
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 445
    move/from16 v0, v16

    move/from16 v1, v16

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 450
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_14

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 456
    .restart local v17    # "tempBitmap":Landroid/graphics/Bitmap;
    if-eqz v17, :cond_12

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    .line 460
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    .line 462
    :cond_13
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v9, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    .line 465
    .end local v17    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget v3, v3, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->locationX:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectWidth:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->locationY:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget v8, v8, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectHeight:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentAngle:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPreAngle:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v9, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v10, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget v11, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->locationX:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget v12, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->locationY:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v13, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->updateMatrix(FFFFLandroid/graphics/Matrix;)V

    .line 472
    .end local v5    # "btwidth":I
    .end local v6    # "btheight":I
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v15    # "sx":F
    .end local v16    # "sy":F
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentAngle:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPreAngle:F

    .line 473
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentSpace:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPreSpace:F

    .line 479
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mOperateCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectBtmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mOperateCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->drawRedFrame(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Z)V

    goto/16 :goto_0

    .line 285
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mOperateCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 374
    .restart local v5    # "btwidth":I
    .restart local v6    # "btheight":I
    .restart local v7    # "matrix":Landroid/graphics/Matrix;
    .restart local v14    # "scale":F
    .restart local v15    # "sx":F
    .restart local v16    # "sy":F
    :cond_18
    invoke-virtual {v7, v15, v15}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto/16 :goto_2

    .line 447
    .end local v14    # "scale":F
    :cond_19
    invoke-virtual {v7, v15, v15}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto/16 :goto_3

    .line 484
    .end local v5    # "btwidth":I
    .end local v6    # "btheight":I
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v15    # "sx":F
    .end local v16    # "sy":F
    :pswitch_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mChangeX:F

    .line 485
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mChangeY:F

    .line 486
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mBegin:Z

    .line 487
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mDrag:Z

    .line 488
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mBool:Z

    goto/16 :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public orderObjectPriority(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 651
    const/4 v12, 0x0

    .line 652
    .local v12, "temp":Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;
    const/4 v0, 0x2

    new-array v11, v0, [F

    .line 653
    .local v11, "rotalP":[F
    iget v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjectCount:I

    add-int/lit8 v8, v0, -0x1

    .local v8, "i":I
    :goto_0
    const/4 v0, -0x1

    if-le v8, v0, :cond_2

    .line 654
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v8}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->findByPiority(I)Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    move-result-object v0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->locationX:F

    invoke-direct {p0, v8}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->findByPiority(I)Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    move-result-object v0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->locationY:F

    invoke-direct {p0, v8}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->findByPiority(I)Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    move-result-object v0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->rotalPoint(FFFFLandroid/graphics/Matrix;)[F

    move-result-object v11

    .line 657
    invoke-direct {p0, v8}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->findByPiority(I)Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    move-result-object v0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->locationX:F

    const/4 v1, 0x0

    aget v1, v11, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, v8}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->findByPiority(I)Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    move-result-object v1

    iget v1, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectWidth:F

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    invoke-direct {p0, v8}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->findByPiority(I)Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    move-result-object v0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->locationY:F

    const/4 v1, 0x1

    aget v1, v11, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, v8}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->findByPiority(I)Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    move-result-object v1

    iget v1, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->objectHeight:F

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 660
    invoke-direct {p0, v8}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->findByPiority(I)Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    move-result-object v12

    .line 661
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjects:[Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    .local v6, "arr$":[Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;
    array-length v10, v6

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v10, :cond_1

    aget-object v7, v6, v9

    .line 662
    .local v7, "bmp":Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;
    iget v0, v7, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->priority:I

    invoke-direct {p0, v8}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->findByPiority(I)Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    move-result-object v1

    iget v1, v1, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->priority:I

    if-le v0, v1, :cond_0

    .line 663
    iget v0, v7, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->priority:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v7, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->priority:I

    .line 661
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 666
    .end local v7    # "bmp":Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjectCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v12, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->priority:I

    .line 667
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mBegin:Z

    .line 671
    .end local v6    # "arr$":[Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    :cond_2
    return-void

    .line 653
    :cond_3
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_0
.end method

.method public refreshView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 496
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mOperateCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mBackground:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 497
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjectCount:I

    if-ge v0, v1, :cond_0

    .line 498
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->findByPiority(I)Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    .line 500
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mOperateCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 497
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 502
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->invalidate()V

    .line 503
    return-void
.end method

.method public rotalPoint(FFFFLandroid/graphics/Matrix;)[F
    .locals 8
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F
    .param p3, "preX"    # F
    .param p4, "preY"    # F
    .param p5, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 704
    const/4 v4, 0x2

    new-array v3, v4, [F

    .line 705
    .local v3, "re":[F
    const/16 v4, 0x9

    new-array v2, v4, [F

    .line 706
    .local v2, "matrixArray":[F
    invoke-virtual {p5, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 707
    sub-float v0, p1, p3

    .line 708
    .local v0, "a":F
    sub-float v1, p2, p4

    .line 709
    .local v1, "b":F
    aget v4, v2, v6

    mul-float/2addr v4, v0

    aget v5, v2, v7

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    add-float/2addr v4, p3

    aput v4, v3, v6

    .line 710
    neg-float v4, v0

    const/4 v5, 0x3

    aget v5, v2, v5

    mul-float/2addr v4, v5

    const/4 v5, 0x4

    aget v5, v2, v5

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    add-float/2addr v4, p4

    aput v4, v3, v7

    .line 711
    return-object v3
.end method

.method public scaleMatrix(FFFFLandroid/graphics/Matrix;)V
    .locals 4
    .param p1, "preX"    # F
    .param p2, "preY"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 684
    const/16 v3, 0x9

    new-array v2, v3, [F

    .line 685
    .local v2, "matrixArray":[F
    invoke-virtual {p5, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 686
    sub-float v0, p3, p1

    .line 687
    .local v0, "a":F
    sub-float v1, p4, p2

    .line 688
    .local v1, "b":F
    const/4 v3, 0x2

    aput v0, v2, v3

    .line 689
    const/4 v3, 0x5

    aput v1, v2, v3

    .line 690
    invoke-virtual {p5, v2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 691
    return-void
.end method

.method public setBackGroud(I)V
    .locals 6
    .param p1, "res"    # I

    .prologue
    .line 821
    sget-object v2, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 822
    sget-object v2, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mBackground:Landroid/graphics/Bitmap;

    .line 833
    :goto_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->drawBackground()V

    .line 834
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjectCount:I

    if-ge v1, v2, :cond_2

    .line 835
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->findByPiority(I)Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    .line 836
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mOperateCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 834
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 824
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 825
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mFreedomViewWidth:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mFreedomViewHeight:I

    invoke-static {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/puzzle/util/PuzzleUtils;->scaleBitmapToFit(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mBackground:Landroid/graphics/Bitmap;

    .line 826
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 827
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 829
    :cond_1
    sget-object v2, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mFreedomBg:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 838
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->invalidate()V

    .line 839
    return-void
.end method

.method public setBitmaps(Ljava/util/ArrayList;)V
    .locals 12
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
    .local p1, "bitmaplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v1, 0x0

    .line 105
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjectCount:I

    .line 106
    iget v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjectCount:I

    packed-switch v2, :pswitch_data_0

    .line 132
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentImageNumber:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;->getFreedomImageLocationList(Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;)Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$FreedomTemplate;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mFreedomTemplate:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$FreedomTemplate;

    .line 133
    iget v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjectCount:I

    new-array v2, v2, [Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjects:[Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    .line 134
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjectCount:I

    if-ge v7, v2, :cond_1

    .line 135
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 136
    .local v0, "btmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 137
    .local v5, "matrix":Landroid/graphics/Matrix;
    iget v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mImageInitWidth:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v8, v2, v3

    .line 138
    .local v8, "sx":F
    iget v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mImageInitHeight:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v9, v2, v3

    .line 139
    .local v9, "sy":F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 140
    invoke-virtual {v5, v8, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 144
    :goto_2
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjects:[Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    new-instance v11, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v11, p0, v2, v7}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;Landroid/graphics/Bitmap;I)V

    aput-object v11, v10, v7

    .line 145
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjects:[Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    aget-object v2, v2, v7

    iput-object v0, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->originBitmap:Landroid/graphics/Bitmap;

    .line 134
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 108
    .end local v0    # "btmap":Landroid/graphics/Bitmap;
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "i":I
    .end local v8    # "sx":F
    .end local v9    # "sy":F
    :pswitch_0
    sget-object v2, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;->TWO:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentImageNumber:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    goto :goto_0

    .line 111
    :pswitch_1
    sget-object v2, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;->THREE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentImageNumber:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    goto :goto_0

    .line 114
    :pswitch_2
    sget-object v2, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;->FOUR:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentImageNumber:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    goto :goto_0

    .line 117
    :pswitch_3
    sget-object v2, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;->FIVE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentImageNumber:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    goto :goto_0

    .line 120
    :pswitch_4
    sget-object v2, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;->SIX:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentImageNumber:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    goto :goto_0

    .line 123
    :pswitch_5
    sget-object v2, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;->SEVEN:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentImageNumber:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    goto :goto_0

    .line 126
    :pswitch_6
    sget-object v2, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;->EIGHT:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentImageNumber:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    goto/16 :goto_0

    .line 129
    :pswitch_7
    sget-object v2, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;->NINE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurrentImageNumber:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$ImageNum;

    goto/16 :goto_0

    .line 142
    .restart local v0    # "btmap":Landroid/graphics/Bitmap;
    .restart local v5    # "matrix":Landroid/graphics/Matrix;
    .restart local v7    # "i":I
    .restart local v8    # "sx":F
    .restart local v9    # "sy":F
    :cond_0
    invoke-virtual {v5, v9, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_2

    .line 147
    .end local v0    # "btmap":Landroid/graphics/Bitmap;
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "sx":F
    .end local v9    # "sy":F
    :cond_1
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->setFreedomTemplate(I)V

    .line 148
    return-void

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setFreedomTemplate(I)V
    .locals 5
    .param p1, "templateIndex"    # I

    .prologue
    .line 151
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mFreedomTemplate:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$FreedomTemplate;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$FreedomTemplate;->getTemplateByIndex(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 152
    .local v1, "locationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjectCount:I

    if-ge v0, v3, :cond_0

    .line 153
    new-instance v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$ObjectInfo;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$ObjectInfo;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;)V

    .line 154
    .local v2, "objectInfo":Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$ObjectInfo;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    iget v3, v3, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;->leftupx:F

    iput v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$ObjectInfo;->leftupx:F

    .line 155
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    iget v3, v3, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;->leftupy:F

    iput v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$ObjectInfo;->leftupy:F

    .line 156
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    iget v3, v3, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;->degress:F

    iput v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$ObjectInfo;->degress:F

    .line 157
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    iget v3, v3, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;->scale:F

    iput v3, v2, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$ObjectInfo;->scale:F

    .line 158
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjects:[Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->setObjectInfo(Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$ObjectInfo;)Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    .line 159
    const-string v4, "freedomview"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    .end local v2    # "objectInfo":Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$ObjectInfo;
    :cond_0
    return-void
.end method

.method public setFreedomTemplateAndInvalidate(I)V
    .locals 5
    .param p1, "templateIndex"    # I

    .prologue
    .line 165
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->setFreedomTemplate(I)V

    .line 166
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->drawBackground()V

    .line 167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mObjectCount:I

    if-ge v0, v1, :cond_0

    .line 168
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->findByPiority(I)Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    .line 169
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mOperateCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mCurObject:Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2$OperateObject;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "i":I
    :catch_0
    move-exception v1

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/puzzle/view/EnHanceFreedomView2;->invalidate()V

    .line 175
    return-void
.end method

.method public setToO(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 694
    const/16 v3, 0x9

    new-array v2, v3, [F

    .line 695
    .local v2, "matrixArray":[F
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 696
    const/4 v0, 0x0

    .line 697
    .local v0, "a":F
    const/4 v1, 0x0

    .line 698
    .local v1, "b":F
    const/4 v3, 0x2

    aput v0, v2, v3

    .line 699
    const/4 v3, 0x5

    aput v1, v2, v3

    .line 700
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 701
    return-void
.end method

.method public updateMatrix(FFFFLandroid/graphics/Matrix;)V
    .locals 5
    .param p1, "halfWidth"    # F
    .param p2, "halfHeight"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 674
    const/16 v3, 0x9

    new-array v2, v3, [F

    .line 675
    .local v2, "matrixArray":[F
    invoke-virtual {p5, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 676
    const/4 v3, 0x0

    aget v3, v2, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x1

    aget v4, v2, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    sub-float v0, p3, v3

    .line 677
    .local v0, "a":F
    const/4 v3, 0x3

    aget v3, v2, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x4

    aget v4, v2, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    sub-float v1, p4, v3

    .line 678
    .local v1, "b":F
    const/4 v3, 0x2

    aput v0, v2, v3

    .line 679
    const/4 v3, 0x5

    aput v1, v2, v3

    .line 680
    invoke-virtual {p5, v2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 681
    return-void
.end method
