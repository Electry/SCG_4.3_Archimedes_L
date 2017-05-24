.class public Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;
.super Landroid/widget/Gallery;
.source "MulitPointTouchGallery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$1;,
        Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$MySimpleGesture;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MulitPointTouchGallery"


# instance fields
.field private baseValue:F

.field private gestureScanner:Landroid/view/GestureDetector;

.field private mImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

.field private mMaxScale:F

.field private mMinScale:F

.field originalScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 23
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mMaxScale:F

    .line 24
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mMinScale:F

    .line 30
    const-string v0, "MulitPointTouchGallery"

    const-string v1, "MulitPointTouchGallery(Context context)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$MySimpleGesture;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$MySimpleGesture;-><init>(Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$1;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->gestureScanner:Landroid/view/GestureDetector;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mMaxScale:F

    .line 24
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mMinScale:F

    .line 42
    const-string v0, "MulitPointTouchGallery"

    const-string v1, "MulitPointTouchGallery(Context context, AttributeSet attrs)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$MySimpleGesture;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$MySimpleGesture;-><init>(Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$1;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->gestureScanner:Landroid/view/GestureDetector;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mMaxScale:F

    .line 24
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mMinScale:F

    .line 36
    const-string v0, "MulitPointTouchGallery"

    const-string v1, "MulitPointTouchGallery(Context context, AttributeSet attrs,int defStyle)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$MySimpleGesture;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$MySimpleGesture;-><init>(Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$1;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->gestureScanner:Landroid/view/GestureDetector;

    .line 38
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->getGallerySelectedView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;)Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;)Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;

    .prologue
    .line 19
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mMaxScale:F

    return v0
.end method

.method private getGallerySelectedView()Landroid/view/View;
    .locals 3

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 261
    .local v1, "view":Landroid/view/View;
    const/4 v0, 0x0

    .line 262
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 263
    const v2, 0x7f1005a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "imageView":Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 266
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    return-object v0
.end method

.method private isScrollingLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    .line 284
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 272
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->isScrollingLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    const/16 v0, 0x15

    .line 277
    .local v0, "keyCode":I
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 278
    const/4 v1, 0x1

    return v1

    .line 275
    .end local v0    # "keyCode":I
    :cond_0
    const/16 v0, 0x16

    .restart local v0    # "keyCode":I
    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v10, 0x0

    .line 49
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->getGallerySelectedView()Landroid/view/View;

    move-result-object v6

    .line 50
    .local v6, "view":Landroid/view/View;
    instance-of v8, v6, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    if-eqz v8, :cond_7

    .line 51
    check-cast v6, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    .end local v6    # "view":Landroid/view/View;
    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    .line 53
    const/16 v8, 0x9

    new-array v5, v8, [F

    .line 54
    .local v5, "v":[F
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 55
    .local v2, "m":Landroid/graphics/Matrix;
    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 60
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getScale()F

    move-result v8

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getBitmapOriginalWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float v7, v8, v9

    .line 61
    .local v7, "width":F
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getScale()F

    move-result v8

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getBitmapOriginalHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float v0, v8, v9

    .line 64
    .local v0, "height":F
    float-to-int v8, v7

    sget v9, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenWidth:I

    if-gt v8, v9, :cond_1

    float-to-int v8, v0

    sget v9, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenHeight:I

    if-gt v8, v9, :cond_1

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 105
    .end local v0    # "height":F
    .end local v2    # "m":Landroid/graphics/Matrix;
    .end local v5    # "v":[F
    .end local v7    # "width":F
    :cond_0
    :goto_0
    const/4 v8, 0x0

    return v8

    .line 67
    .restart local v0    # "height":F
    .restart local v2    # "m":Landroid/graphics/Matrix;
    .restart local v5    # "v":[F
    .restart local v7    # "width":F
    :cond_1
    const/4 v8, 0x2

    aget v1, v5, v8

    .line 68
    .local v1, "left":F
    add-float v4, v1, v7

    .line 69
    .local v4, "right":F
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 70
    .local v3, "r":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    invoke-virtual {v8, v3}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 72
    cmpl-float v8, p3, v10

    if-lez v8, :cond_4

    .line 74
    iget v8, v3, Landroid/graphics/Rect;->left:I

    if-lez v8, :cond_2

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_0

    .line 78
    :cond_2
    sget v8, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenWidth:I

    int-to-float v8, v8

    cmpg-float v8, v4, v8

    if-gez v8, :cond_3

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_0

    .line 83
    :cond_3
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    neg-float v9, p3

    neg-float v10, p4

    invoke-virtual {v8, v9, v10}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->postTranslate(FF)V

    goto :goto_0

    .line 85
    :cond_4
    cmpg-float v8, p3, v10

    if-gez v8, :cond_0

    .line 87
    iget v8, v3, Landroid/graphics/Rect;->right:I

    sget v9, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenWidth:I

    if-ge v8, v9, :cond_5

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_0

    .line 91
    :cond_5
    cmpl-float v8, v1, v10

    if-lez v8, :cond_6

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_0

    .line 96
    :cond_6
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    neg-float v9, p3

    neg-float v10, p4

    invoke-virtual {v8, v9, v10}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->postTranslate(FF)V

    goto :goto_0

    .line 103
    .end local v0    # "height":F
    .end local v1    # "left":F
    .end local v2    # "m":Landroid/graphics/Matrix;
    .end local v3    # "r":Landroid/graphics/Rect;
    .end local v4    # "right":F
    .end local v5    # "v":[F
    .end local v7    # "width":F
    .restart local v6    # "view":Landroid/view/View;
    :cond_7
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 117
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->gestureScanner:Landroid/view/GestureDetector;

    invoke-virtual {v6, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 118
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->getGallerySelectedView()Landroid/view/View;

    move-result-object v3

    .line 119
    .local v3, "view":Landroid/view/View;
    instance-of v6, v3, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    if-eqz v6, :cond_0

    .line 120
    check-cast v3, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    .end local v3    # "view":Landroid/view/View;
    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 209
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    return v6

    .line 123
    :pswitch_1
    iput v8, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->baseValue:F

    .line 124
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getScale()F

    move-result v6

    iput v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->originalScale:F

    .line 126
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 127
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    sub-float v4, v6, v7

    .line 128
    .local v4, "x":F
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    sub-float v5, v6, v7

    .line 129
    .local v5, "y":F
    mul-float v6, v4, v4

    mul-float v7, v5, v5

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v2, v6

    .line 132
    .local v2, "value":F
    iget v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->baseValue:F

    cmpl-float v6, v6, v8

    if-nez v6, :cond_1

    .line 133
    iput v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->baseValue:F

    goto :goto_0

    .line 137
    :cond_1
    iget v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->baseValue:F

    div-float v1, v2, v6

    .line 140
    .local v1, "scale":F
    iget v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->originalScale:F

    mul-float v0, v6, v1

    .line 141
    .local v0, "currentScale":F
    const-string v6, "MulitPointTouchGallery"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentScale:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mMinScale:F

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mMaxScale:F

    cmpg-float v6, v0, v6

    if-gtz v6, :cond_0

    .line 146
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    add-float/2addr v7, v4

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    add-float/2addr v8, v5

    const/high16 v9, 0x43480000    # 200.0f

    invoke-virtual {v6, v0, v7, v8, v9}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->zoomTo(FFFF)V

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public recoveryImageMatrix()V
    .locals 6

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->getGallerySelectedView()Landroid/view/View;

    move-result-object v1

    .line 294
    .local v1, "viewTemp":Landroid/view/View;
    if-nez v1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    instance-of v2, v1, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 298
    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    .line 300
    .local v0, "mulitPointImageView":Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getFitScreenScale()F

    move-result v2

    sget v3, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/high16 v5, 0x43480000    # 200.0f

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->zoomTo(FFFF)V

    goto :goto_0
.end method
