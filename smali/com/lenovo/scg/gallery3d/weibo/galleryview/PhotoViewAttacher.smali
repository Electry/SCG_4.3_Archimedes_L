.class public Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/weibo/galleryview/IPhotoView;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$2;,
        Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$FlingRunnable;,
        Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$AnimatedZoomRunnable;,
        Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnViewTapListener;,
        Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnPhotoTapListener;,
        Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnMatrixChangedListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field public static final DEFAULT_MAX_SCALE:F = 6.0f

.field public static final DEFAULT_MID_SCALE:F = 2.0f

.field public static final DEFAULT_MIN_SCALE:F = 1.0f

.field static final EDGE_BOTH:I = 0x2

.field static final EDGE_LEFT:I = 0x0

.field static final EDGE_NONE:I = -0x1

.field static final EDGE_RIGHT:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "PhotoViewAttacher"


# instance fields
.field private mAllowParentInterceptOnEdge:Z

.field private final mBaseMatrix:Landroid/graphics/Matrix;

.field private mCurrentFlingRunnable:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$FlingRunnable;

.field private final mDisplayRect:Landroid/graphics/RectF;

.field private final mDrawMatrix:Landroid/graphics/Matrix;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mIvBottom:I

.field private mIvLeft:I

.field private mIvRight:I

.field private mIvTop:I

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMatrixChangeListener:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnMatrixChangedListener;

.field private final mMatrixValues:[F

.field private mMaxScale:F

.field private mMidScale:F

.field private mMinScale:F

.field private mPhotoTapListener:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnPhotoTapListener;

.field private mScaleDragDetector:Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mScrollEdge:I

.field private final mSuppMatrix:Landroid/graphics/Matrix;

.field private mViewTapListener:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnViewTapListener;

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;

.field private mZoomEnabled:Z


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 4
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v3, 0x1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mMinScale:F

    .line 37
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mMidScale:F

    .line 38
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mMaxScale:F

    .line 40
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    .line 99
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 100
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 101
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 102
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    .line 103
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mMatrixValues:[F

    .line 113
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mScrollEdge:I

    .line 116
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 119
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    .line 121
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 123
    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 127
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V

    .line 129
    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector;->newInstance(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$OnGestureListener;)Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mScaleDragDetector:Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector;

    .line 133
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$1;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    .line 144
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 147
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->setZoomable(Z)V

    .line 149
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;Landroid/graphics/Matrix;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;
    .param p1, "x1"    # Landroid/graphics/Matrix;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private cancelFling()V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$FlingRunnable;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$FlingRunnable;->cancelFling()V

    .line 504
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$FlingRunnable;

    .line 506
    :cond_0
    return-void
.end method

.method private checkAndDisplayMatrix()V
    .locals 1

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->checkMatrixBounds()V

    .line 513
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 514
    return-void
.end method

.method private checkImageViewScaleType()V
    .locals 3

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 523
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;

    if-nez v1, :cond_0

    .line 524
    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-eq v1, v2, :cond_0

    .line 525
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The ImageView\'s ScaleType has been changed since attaching a PhotoViewAttacher"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 529
    :cond_0
    return-void
.end method

.method private checkMatrixBounds()V
    .locals 12

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 532
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    .line 533
    .local v3, "imageView":Landroid/widget/ImageView;
    if-nez v3, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v4

    .line 538
    .local v4, "rect":Landroid/graphics/RectF;
    if-eqz v4, :cond_0

    .line 542
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    .local v2, "height":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 543
    .local v7, "width":F
    const/4 v0, 0x0

    .local v0, "deltaX":F
    const/4 v1, 0x0

    .line 545
    .local v1, "deltaY":F
    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    .line 546
    .local v5, "viewHeight":I
    int-to-float v8, v5

    cmpg-float v8, v2, v8

    if-gtz v8, :cond_3

    .line 547
    sget-object v8, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 555
    int-to-float v8, v5

    sub-float/2addr v8, v2

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v8, v9

    .line 564
    :cond_2
    :goto_1
    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    .line 565
    .local v6, "viewWidth":I
    int-to-float v8, v6

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_5

    .line 566
    sget-object v8, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    .line 574
    int-to-float v8, v6

    sub-float/2addr v8, v7

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v9

    .line 577
    :goto_2
    const/4 v8, 0x2

    iput v8, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mScrollEdge:I

    .line 589
    :goto_3
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 549
    .end local v6    # "viewWidth":I
    :pswitch_0
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v8

    .line 550
    goto :goto_1

    .line 552
    :pswitch_1
    int-to-float v8, v5

    sub-float/2addr v8, v2

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v8, v9

    .line 553
    goto :goto_1

    .line 558
    :cond_3
    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_4

    .line 559
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v8

    goto :goto_1

    .line 560
    :cond_4
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v5

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 561
    int-to-float v8, v5

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v8, v9

    goto :goto_1

    .line 568
    .restart local v6    # "viewWidth":I
    :pswitch_2
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    .line 569
    goto :goto_2

    .line 571
    :pswitch_3
    int-to-float v8, v6

    sub-float/2addr v8, v7

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v9

    .line 572
    goto :goto_2

    .line 578
    :cond_5
    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_6

    .line 579
    const/4 v8, 0x0

    iput v8, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mScrollEdge:I

    .line 580
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    goto :goto_3

    .line 581
    :cond_6
    iget v8, v4, Landroid/graphics/RectF;->right:F

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_7

    .line 582
    int-to-float v8, v6

    iget v9, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v8, v9

    .line 583
    const/4 v8, 0x1

    iput v8, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mScrollEdge:I

    goto :goto_3

    .line 585
    :cond_7
    const/4 v8, -0x1

    iput v8, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mScrollEdge:I

    goto :goto_3

    .line 547
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 566
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static checkZoomLevels(FFF)V
    .locals 2
    .param p0, "minZoom"    # F
    .param p1, "midZoom"    # F
    .param p2, "maxZoom"    # F

    .prologue
    .line 43
    cmpl-float v0, p0, p1

    if-ltz v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MinZoom should be less than MidZoom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_1

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MidZoom should be less than MaxZoom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    return-void
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 6
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v5, 0x0

    .line 599
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 601
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 602
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 603
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 604
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 605
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 606
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    .line 609
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "whichValue"    # I

    .prologue
    .line 620
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 621
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method private static hasDrawable(Landroid/widget/ImageView;)Z
    .locals 1
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 54
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z
    .locals 3
    .param p0, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 61
    if-nez p0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    .line 65
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 70
    const/4 v0, 0x1

    goto :goto_0

    .line 67
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported in PhotoView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private resetMatrix()V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 629
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 630
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->checkMatrixBounds()V

    .line 631
    return-void
.end method

.method private setImageViewMatrix(Landroid/graphics/Matrix;)V
    .locals 3
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 635
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 637
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->checkImageViewScaleType()V

    .line 638
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 641
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnMatrixChangedListener;

    if-eqz v2, :cond_0

    .line 642
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    .line 643
    .local v0, "displayRect":Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    .line 644
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnMatrixChangedListener;

    invoke-interface {v2, v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnMatrixChangedListener;->onMatrixChanged(Landroid/graphics/RectF;)V

    .line 648
    .end local v0    # "displayRect":Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method private static setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V
    .locals 1
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 78
    if-eqz p0, :cond_0

    .line 79
    instance-of v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method private updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V
    .locals 14
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v12, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    .line 656
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    .line 657
    .local v3, "imageView":Landroid/widget/ImageView;
    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v10

    int-to-float v8, v10

    .line 662
    .local v8, "viewWidth":F
    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v10

    int-to-float v7, v10

    .line 663
    .local v7, "viewHeight":F
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 664
    .local v1, "drawableWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 666
    .local v0, "drawableHeight":I
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 668
    int-to-float v10, v1

    div-float v9, v8, v10

    .line 669
    .local v9, "widthScale":F
    int-to-float v10, v0

    div-float v2, v7, v10

    .line 671
    .local v2, "heightScale":F
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v10, v11, :cond_2

    .line 672
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    int-to-float v11, v1

    sub-float v11, v8, v11

    div-float/2addr v11, v13

    int-to-float v12, v0

    sub-float v12, v7, v12

    div-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 712
    :goto_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->resetMatrix()V

    goto :goto_0

    .line 674
    :cond_2
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v10, v11, :cond_3

    .line 675
    invoke-static {v9, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 676
    .local v6, "scale":F
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 677
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    int-to-float v11, v1

    mul-float/2addr v11, v6

    sub-float v11, v8, v11

    div-float/2addr v11, v13

    int-to-float v12, v0

    mul-float/2addr v12, v6

    sub-float v12, v7, v12

    div-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 680
    .end local v6    # "scale":F
    :cond_3
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v10, v11, :cond_4

    .line 681
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v2}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 682
    .restart local v6    # "scale":F
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 683
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    int-to-float v11, v1

    mul-float/2addr v11, v6

    sub-float v11, v8, v11

    div-float/2addr v11, v13

    int-to-float v12, v0

    mul-float/2addr v12, v6

    sub-float v12, v7, v12

    div-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 687
    .end local v6    # "scale":F
    :cond_4
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v10, v1

    int-to-float v11, v0

    invoke-direct {v5, v12, v12, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 688
    .local v5, "mTempSrc":Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v12, v12, v8, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 690
    .local v4, "mTempDst":Landroid/graphics/RectF;
    sget-object v10, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    goto :goto_1

    .line 696
    :pswitch_0
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v5, v4, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 692
    :pswitch_1
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v5, v4, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 700
    :pswitch_2
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v5, v4, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 704
    :pswitch_3
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v5, v4, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_1

    .line 690
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final canZoom()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mZoomEnabled:Z

    return v0
.end method

.method public final cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 164
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 167
    :cond_0
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 170
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnMatrixChangedListener;

    .line 171
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mPhotoTapListener:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnPhotoTapListener;

    .line 172
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mViewTapListener:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnViewTapListener;

    .line 175
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    .line 176
    return-void
.end method

.method protected getDisplayMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 497
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 498
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->checkMatrixBounds()V

    .line 181
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public final getImageView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 187
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "imageView":Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 192
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    if-nez v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->cleanup()V

    .line 199
    :cond_1
    return-object v0
.end method

.method public getMaxScale()F
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mMaxScale:F

    return v0
.end method

.method public getMidScale()F
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mMidScale:F

    return v0
.end method

.method public getMinScale()F
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mMinScale:F

    return v0
.end method

.method public final getScale()F
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method public final getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 905
    return-void
.end method

.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 229
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getScale()F

    move-result v0

    .line 230
    .local v0, "scale":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 231
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 233
    .local v2, "y":F
    iget v3, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mMidScale:F

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    .line 234
    iget v3, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mMidScale:F

    invoke-virtual {p0, v3, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->zoomTo(FFF)V

    .line 244
    .end local v0    # "scale":F
    .end local v1    # "x":F
    .end local v2    # "y":F
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 238
    .restart local v0    # "scale":F
    .restart local v1    # "x":F
    .restart local v2    # "y":F
    :cond_0
    iget v3, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mMinScale:F

    invoke-virtual {p0, v3, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->zoomTo(FFF)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    .end local v0    # "scale":F
    .end local v1    # "x":F
    .end local v2    # "y":F
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public final onDrag(FF)V
    .locals 8
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 254
    const-string v1, "PhotoViewAttacher"

    const-string/jumbo v2, "onDrag: dx: %.2f. dy: %.2f"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 259
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->hasDrawable(Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 260
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 261
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 272
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mScaleDragDetector:Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector;->isScaling()Z

    move-result v1

    if-nez v1, :cond_2

    .line 273
    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mScrollEdge:I

    if-eq v1, v7, :cond_1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mScrollEdge:I

    if-nez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-gez v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mScrollEdge:I

    if-ne v1, v6, :cond_2

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_2

    .line 275
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 279
    :cond_2
    return-void
.end method

.method public final onFling(FFFF)V
    .locals 6
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 284
    const-string v1, "PhotoViewAttacher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFling. sX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Vx: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Vy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 288
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->hasDrawable(Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$FlingRunnable;-><init>(Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$FlingRunnable;

    .line 290
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    float-to-int v4, p3

    float-to-int v5, p4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$FlingRunnable;->fling(IIII)V

    .line 291
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 293
    :cond_0
    return-void
.end method

.method public final onGlobalLayout()V
    .locals 6

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 299
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    iget-boolean v5, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v5, :cond_1

    .line 300
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    .line 301
    .local v4, "top":I
    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v3

    .line 302
    .local v3, "right":I
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v0

    .line 303
    .local v0, "bottom":I
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    .line 312
    .local v2, "left":I
    iget v5, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mIvTop:I

    if-ne v4, v5, :cond_0

    iget v5, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mIvBottom:I

    if-ne v0, v5, :cond_0

    iget v5, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mIvLeft:I

    if-ne v2, v5, :cond_0

    iget v5, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mIvRight:I

    if-eq v3, v5, :cond_1

    .line 314
    :cond_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    .line 317
    iput v4, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mIvTop:I

    .line 318
    iput v3, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mIvRight:I

    .line 319
    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mIvBottom:I

    .line 320
    iput v2, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mIvLeft:I

    .line 323
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "top":I
    :cond_1
    return-void
.end method

.method public final onScale(FFF)V
    .locals 5
    .param p1, "scaleFactor"    # F
    .param p2, "focusX"    # F
    .param p3, "focusY"    # F

    .prologue
    .line 327
    const-string v0, "PhotoViewAttacher"

    const-string/jumbo v1, "onScale: scale: %.2f. fX: %.2f. fY: %.2f"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->hasDrawable(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mMaxScale:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 332
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 334
    :cond_1
    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 339
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    .line 340
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mPhotoTapListener:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnPhotoTapListener;

    if-eqz v6, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 343
    .local v0, "displayRect":Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 347
    .local v4, "y":F
    invoke-virtual {v0, v2, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 349
    iget v6, v0, Landroid/graphics/RectF;->left:F

    sub-float v6, v2, v6

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float v3, v6, v7

    .line 350
    .local v3, "xResult":F
    iget v6, v0, Landroid/graphics/RectF;->top:F

    sub-float v6, v4, v6

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float v5, v6, v7

    .line 352
    .local v5, "yResult":F
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mPhotoTapListener:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnPhotoTapListener;

    invoke-interface {v6, v1, v3, v5}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnPhotoTapListener;->onPhotoTap(Landroid/view/View;FF)V

    .line 353
    const/4 v6, 0x1

    .line 362
    .end local v0    # "displayRect":Landroid/graphics/RectF;
    .end local v2    # "x":F
    .end local v3    # "xResult":F
    .end local v4    # "y":F
    .end local v5    # "yResult":F
    :goto_0
    return v6

    .line 357
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mViewTapListener:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnViewTapListener;

    if-eqz v6, :cond_1

    .line 358
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mViewTapListener:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnViewTapListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-interface {v6, v1, v7, v8}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnViewTapListener;->onViewTap(Landroid/view/View;FF)V

    .line 362
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 368
    const/4 v6, 0x0

    .line 370
    .local v6, "handled":Z
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v0, :cond_2

    .line 371
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 397
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    const/4 v6, 0x1

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mScaleDragDetector:Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mScaleDragDetector:Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    const/4 v6, 0x1

    .line 407
    :cond_2
    return v6

    .line 375
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 379
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->cancelFling()V

    goto :goto_0

    .line 386
    :pswitch_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v7

    .line 388
    .local v7, "rect":Landroid/graphics/RectF;
    if-eqz v7, :cond_0

    .line 389
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getScale()F

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mMinScale:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;FFFF)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 390
    const/4 v6, 0x1

    goto :goto_0

    .line 371
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 412
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    .line 413
    return-void
.end method

.method public setMaxScale(F)V
    .locals 2
    .param p1, "maxScale"    # F

    .prologue
    .line 429
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mMidScale:F

    invoke-static {v0, v1, p1}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 430
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mMaxScale:F

    .line 431
    return-void
.end method

.method public setMaxScallValue(F)V
    .locals 0
    .param p1, "maxScallValue"    # F

    .prologue
    .line 910
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mMidScale:F

    .line 911
    return-void
.end method

.method public setMidScale(F)V
    .locals 2
    .param p1, "midScale"    # F

    .prologue
    .line 423
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mMaxScale:F

    invoke-static {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 424
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mMidScale:F

    .line 425
    return-void
.end method

.method public setMinScale(F)V
    .locals 2
    .param p1, "minScale"    # F

    .prologue
    .line 417
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mMidScale:F

    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mMaxScale:F

    invoke-static {p1, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 418
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mMinScale:F

    .line 419
    return-void
.end method

.method public final setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 436
    return-void
.end method

.method public final setOnMatrixChangeListener(Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnMatrixChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnMatrixChangedListener;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnMatrixChangedListener;

    .line 441
    return-void
.end method

.method public final setOnPhotoTapListener(Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnPhotoTapListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnPhotoTapListener;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mPhotoTapListener:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnPhotoTapListener;

    .line 446
    return-void
.end method

.method public final setOnViewTapListener(Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnViewTapListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnViewTapListener;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mViewTapListener:Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnViewTapListener;

    .line 451
    return-void
.end method

.method public final setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 455
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 456
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 459
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->update()V

    .line 461
    :cond_0
    return-void
.end method

.method public final setZoomable(Z)V
    .locals 0
    .param p1, "zoomable"    # Z

    .prologue
    .line 465
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mZoomEnabled:Z

    .line 466
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->update()V

    .line 467
    return-void
.end method

.method public final update()V
    .locals 2

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 472
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 473
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v1, :cond_1

    .line 475
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V

    .line 478
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->resetMatrix()V

    goto :goto_0
.end method

.method public final zoomTo(FFF)V
    .locals 7
    .param p1, "scale"    # F
    .param p2, "focalX"    # F
    .param p3, "focalY"    # F

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    .line 490
    .local v6, "imageView":Landroid/widget/ImageView;
    if-eqz v6, :cond_0

    .line 491
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;->getScale()F

    move-result v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher;FFFF)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 493
    :cond_0
    return-void
.end method
