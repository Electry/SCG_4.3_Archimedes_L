.class public Lcom/lenovo/scg/camera/PreviewGestures;
.super Ljava/lang/Object;
.source "PreviewGestures.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/PreviewGestures$SwipeListener;,
        Lcom/lenovo/scg/camera/PreviewGestures$SingleTapListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final DIR_DOWN:I = 0x1

.field public static final DIR_LEFT:I = 0x2

.field public static final DIR_RIGHT:I = 0x3

.field public static final DIR_UP:I = 0x0

.field private static final MODE_ALL:I = 0x4

.field private static final MODE_MODULE:I = 0x3

.field private static final MODE_NONE:I = 0x0

.field private static final MODE_PIE:I = 0x1

.field private static final MODE_SWIPE:I = 0x5

.field private static final MODE_ZOOM:I = 0x2

.field private static final MSG_PIE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CAM_gestures"

.field private static final TIMEOUT_PIE:J = 0xc8L


# instance fields
.field private mActivity:Lcom/lenovo/scg/camera/CameraActivity;

.field private mCurrent:Landroid/view/MotionEvent;

.field private mDown:Landroid/view/MotionEvent;

.field private mEnabled:Z

.field private mFocusIndicatorRadius:I

.field private mHandler:Landroid/os/Handler;

.field private mIsScaleSupported:Z

.field private mLocation:[I

.field private mMode:I

.field private mOrientation:I

.field private mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

.field private mPie:Lcom/lenovo/scg/camera/ui/PieRenderer;

.field private mReceivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mScale:Landroid/view/ScaleGestureDetector;

.field private mSlop:I

.field private mSwipeListener:Lcom/lenovo/scg/camera/PreviewGestures$SwipeListener;

.field private mTapListener:Lcom/lenovo/scg/camera/PreviewGestures$SingleTapListener;

.field private mTapTimeout:I

.field private mUnclickableAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mZoom:Lcom/lenovo/scg/camera/ui/ZoomRenderer;

.field private mZoomOnly:Z

.field private maskView:Lcom/lenovo/scg/camera/setting/view/SquareMaskView;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/CameraActivity;Lcom/lenovo/scg/camera/PreviewGestures$SingleTapListener;Lcom/lenovo/scg/camera/ui/ZoomRenderer;Lcom/lenovo/scg/camera/ui/PieRenderer;Lcom/lenovo/scg/camera/PreviewGestures$SwipeListener;)V
    .locals 6
    .param p1, "ctx"    # Lcom/lenovo/scg/camera/CameraActivity;
    .param p2, "tapListener"    # Lcom/lenovo/scg/camera/PreviewGestures$SingleTapListener;
    .param p3, "zoom"    # Lcom/lenovo/scg/camera/ui/ZoomRenderer;
    .param p4, "pie"    # Lcom/lenovo/scg/camera/ui/PieRenderer;
    .param p5, "swipe"    # Lcom/lenovo/scg/camera/PreviewGestures$SwipeListener;

    .prologue
    const/4 v5, 0x1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/scg/camera/PreviewGestures;->maskView:Lcom/lenovo/scg/camera/setting/view/SquareMaskView;

    .line 115
    new-instance v2, Lcom/lenovo/scg/camera/PreviewGestures$1;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/PreviewGestures$1;-><init>(Lcom/lenovo/scg/camera/PreviewGestures;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mHandler:Landroid/os/Handler;

    .line 137
    iput-object p1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    .line 138
    iput-object p2, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mTapListener:Lcom/lenovo/scg/camera/PreviewGestures$SingleTapListener;

    .line 142
    iput-object p3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mZoom:Lcom/lenovo/scg/camera/ui/ZoomRenderer;

    .line 143
    const/4 v2, 0x4

    iput v2, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mMode:I

    .line 144
    new-instance v2, Landroid/view/ScaleGestureDetector;

    invoke-direct {v2, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    .line 146
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 148
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0900b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mSlop:I

    .line 149
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mTapTimeout:I

    .line 150
    const-string v2, "CAM_gestures"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTapTimeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mTapTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mEnabled:Z

    .line 152
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mLocation:[I

    .line 153
    iput-object p5, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mSwipeListener:Lcom/lenovo/scg/camera/PreviewGestures$SwipeListener;

    .line 156
    const v2, 0x7f0900b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 157
    .local v0, "radius":I
    const v2, 0x7f0900ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int v2, v0, v2

    iput v2, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mFocusIndicatorRadius:I

    .line 158
    const-string v2, "CAM_gestures"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFocusIndicatorRadius = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mFocusIndicatorRadius:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mIsScaleSupported:Z

    .line 162
    return-void
.end method

.method static synthetic access$002(Lcom/lenovo/scg/camera/PreviewGestures;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PreviewGestures;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/PreviewGestures;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PreviewGestures;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PreviewGestures;->openPie()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/PreviewGestures;)Landroid/view/MotionEvent;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PreviewGestures;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    return-object v0
.end method

.method private cancelPie()V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 562
    return-void
.end method

.method private checkClickable(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 217
    iget-object v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mUnclickableAreas:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 218
    const-string v3, "CAM_gestures"

    const-string v4, "checkClickable, mUnclickableAreas!=null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mUnclickableAreas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 220
    .local v1, "v":Landroid/view/View;
    const-string v3, "CAM_gestures"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkClickable, v="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-direct {p0, p1, v1}, Lcom/lenovo/scg/camera/PreviewGestures;->isInside(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    const-string v3, "CAM_gestures"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkClickable, isInside, v="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    .line 228
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PreviewGestures;->isNotInsidePreview(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 229
    const-string v3, "CAM_gestures"

    const-string v4, "isNotInsidePreview!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PreviewGestures;->isNotInsidePreview(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 236
    const-string v3, "CAM_gestures"

    const-string v4, "isNotInsidePreview!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 239
    :cond_4
    const-string v3, "CAM_gestures"

    const-string v4, "checkClickable, mUnclickableAreas=null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v3, v4}, Lcom/lenovo/scg/camera/PreviewGestures;->isIn1B1MaskView(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 246
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkReceivers(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 457
    iget-object v2, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mReceivers:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 458
    iget-object v2, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mReceivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 459
    .local v1, "receiver":Landroid/view/View;
    invoke-direct {p0, p1, v1}, Lcom/lenovo/scg/camera/PreviewGestures;->isInside(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    const/4 v2, 0x1

    .line 464
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "receiver":Landroid/view/View;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSwipeDirection(Landroid/view/MotionEvent;)I
    .locals 6
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, "dx":F
    const/4 v1, 0x0

    .line 471
    .local v1, "dy":F
    iget v2, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 489
    :goto_0
    cmpg-float v2, v0, v4

    if-gez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    neg-float v3, v0

    div-float/2addr v2, v3

    cmpg-float v2, v2, v5

    if-gez v2, :cond_0

    const/4 v2, 0x2

    .line 492
    :goto_1
    return v2

    .line 473
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 474
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 475
    goto :goto_0

    .line 477
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    neg-float v0, v2

    .line 478
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v1, v2, v3

    .line 479
    goto :goto_0

    .line 481
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    neg-float v0, v2

    .line 482
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 483
    goto :goto_0

    .line 485
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v0, v2, v3

    .line 486
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v1, v2, v3

    goto :goto_0

    .line 490
    :cond_0
    cmpl-float v2, v0, v4

    if-lez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v0

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    .line 491
    :cond_1
    cmpl-float v2, v1, v4

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    .line 492
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 471
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private isIn1B1MaskView(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x0

    .line 250
    iget-object v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    if-nez v1, :cond_0

    .line 262
    :goto_0
    return v0

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->maskView:Lcom/lenovo/scg/camera/setting/view/SquareMaskView;

    if-nez v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v2, 0x7f10028b

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->maskView:Lcom/lenovo/scg/camera/setting/view/SquareMaskView;

    .line 256
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->maskView:Lcom/lenovo/scg/camera/setting/view/SquareMaskView;

    if-nez v1, :cond_2

    .line 257
    const-string v1, "CAM_gestures"

    const-string v2, "isIn1B1MaskView() : maskView == null && return false;"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->maskView:Lcom/lenovo/scg/camera/setting/view/SquareMaskView;

    const/16 v2, 0xa0

    invoke-virtual {v1, p1, p2, v2}, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->isInMaskArea(III)Z

    move-result v0

    .line 261
    .local v0, "in":Z
    const-string v1, "CAM_gestures"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIn1B1MaskView() : in = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isInside(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 11
    .param p1, "evt"    # Landroid/view/MotionEvent;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    const/16 v10, 0xb4

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 497
    if-nez p2, :cond_1

    .line 498
    const-string v5, "CAM_gestures"

    const-string v7, "isInside, v = null!!"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 527
    :cond_0
    :goto_0
    return v5

    .line 502
    :cond_1
    iget-object v7, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mLocation:[I

    invoke-virtual {p2, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 504
    invoke-virtual {p2}, Landroid/view/View;->getRotationY()F

    move-result v7

    float-to-int v7, v7

    if-ne v7, v10, :cond_2

    .line 505
    iget-object v7, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mLocation:[I

    aget v8, v7, v6

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    aput v8, v7, v6

    .line 508
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getRotationX()F

    move-result v7

    float-to-int v7, v7

    if-ne v7, v10, :cond_3

    .line 509
    iget-object v7, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mLocation:[I

    aget v8, v7, v5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    aput v8, v7, v5

    .line 513
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    iget v8, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mFocusIndicatorRadius:I

    add-int v1, v7, v8

    .line 514
    .local v1, "x1":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    iget v8, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mFocusIndicatorRadius:I

    sub-int v2, v7, v8

    .line 515
    .local v2, "x2":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iget v8, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mFocusIndicatorRadius:I

    add-int v3, v7, v8

    .line 516
    .local v3, "y1":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iget v8, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mFocusIndicatorRadius:I

    sub-int v4, v7, v8

    .line 517
    .local v4, "y2":I
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_5

    move v0, v5

    .line 519
    .local v0, "visible":Z
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v7

    const v8, 0x7f10015b

    if-ne v7, v8, :cond_6

    .line 522
    if-eqz v0, :cond_4

    iget-object v7, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mLocation:[I

    aget v7, v7, v5

    if-gt v3, v7, :cond_0

    :cond_4
    move v5, v6

    goto :goto_0

    .end local v0    # "visible":Z
    :cond_5
    move v0, v6

    .line 517
    goto :goto_1

    .line 527
    .restart local v0    # "visible":Z
    :cond_6
    if-eqz v0, :cond_7

    iget-object v7, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mLocation:[I

    aget v7, v7, v6

    if-lt v1, v7, :cond_7

    iget-object v7, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mLocation:[I

    aget v7, v7, v6

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    if-ge v2, v7, :cond_7

    iget-object v7, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mLocation:[I

    aget v7, v7, v5

    if-lt v3, v7, :cond_7

    iget-object v7, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mLocation:[I

    aget v7, v7, v5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    if-lt v4, v7, :cond_0

    :cond_7
    move v5, v6

    goto/16 :goto_0
.end method

.method private isNotInsidePreview(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "evt"    # Landroid/view/MotionEvent;

    .prologue
    .line 535
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 536
    .local v0, "screenRect":Landroid/graphics/Rect;
    const-string v1, "CAM_gestures"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNotInsidePreview, screen left="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", top="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", right="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bottom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const-string v1, "CAM_gestures"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNotInsidePreview, x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mFocusIndicatorRadius="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mFocusIndicatorRadius:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mFocusIndicatorRadius:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mFocusIndicatorRadius:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mFocusIndicatorRadius:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mFocusIndicatorRadius:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 2
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 550
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 551
    .local v0, "c":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 552
    return-object v0
.end method

.method private openPie()V
    .locals 3

    .prologue
    .line 556
    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/RenderOverlay;->getWindowPositionX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/RenderOverlay;->getWindowPositionY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 558
    return-void
.end method

.method private sendToPie(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 565
    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/RenderOverlay;->getWindowPositionX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/RenderOverlay;->getWindowPositionY()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 566
    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mPie:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RenderOverlay;->directDispatchTouch(Landroid/view/MotionEvent;Lcom/lenovo/scg/camera/ui/RenderOverlay$Renderer;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addTouchReceiver(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mReceivers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mReceivers:Ljava/util/List;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mReceivers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    return-void
.end method

.method public addUnclickableArea(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mUnclickableAreas:Ljava/util/List;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mUnclickableAreas:Ljava/util/List;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mUnclickableAreas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    return-void
.end method

.method public cancelActivityTouchHandling(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 546
    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PreviewGestures;->makeCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 547
    return-void
.end method

.method public clearTouchReceivers()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mReceivers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mReceivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 207
    :cond_0
    return-void
.end method

.method public clearUnclickableAreas()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mUnclickableAreas:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mUnclickableAreas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 213
    :cond_0
    return-void
.end method

.method public dispatchTouch(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 273
    const-string v3, "CAM_gestures"

    const-string v4, "dispatchTouch()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-boolean v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mEnabled:Z

    if-nez v3, :cond_1

    .line 275
    const-string v1, "CAM_gestures"

    const-string v2, "dispatchTouch() : !mEnabled : return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 452
    :cond_0
    :goto_0
    return v1

    .line 278
    :cond_1
    iput-object p1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mCurrent:Landroid/view/MotionEvent;

    .line 279
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_7

    .line 280
    const-string v1, "CAM_gestures"

    const-string v3, "dispatchTouch: ACTION_DOWN"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PreviewGestures;->checkReceivers(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 282
    const-string v1, "CAM_gestures"

    const-string v2, "dispatchTouch: ACTION_DOWN: checkReceivers(m) is TRUE : mMode = MODE_MODULE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iput v6, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mMode:I

    .line 284
    iget-object v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 286
    :cond_2
    const-string v1, "CAM_gestures"

    const-string v3, "dispatchTouch: ACTION_DOWN: checkReceivers(m) is false : mMode = MODE_ALL"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v1, 0x4

    iput v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mMode:I

    .line 288
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    .line 289
    iget-object v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mPie:Lcom/lenovo/scg/camera/ui/PieRenderer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mPie:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->showsItems()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 290
    const-string v1, "CAM_gestures"

    const-string v3, "dispatchTouch: ACTION_DOWN: checkReceivers(m) is false : mPie.showsItems() : mMode = MODE_PIE"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iput v2, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mMode:I

    .line 292
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PreviewGestures;->sendToPie(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 294
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mPie:Lcom/lenovo/scg/camera/ui/PieRenderer;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mZoomOnly:Z

    if-nez v1, :cond_4

    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PreviewGestures;->checkClickable(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 295
    const-string v1, "CAM_gestures"

    const-string v3, "dispatchTouch: ACTION_DOWN: checkReceivers(m) is false : checkClickable() send msg pie"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 298
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mZoom:Lcom/lenovo/scg/camera/ui/ZoomRenderer;

    if-eqz v1, :cond_5

    .line 299
    const-string v1, "CAM_gestures"

    const-string v2, "dispatchTouch: ACTION_DOWN: mZoom != null && mScale.onTouchEvent(m)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 303
    :cond_5
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PreviewGestures;->checkClickable(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 304
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->onActionDown(Landroid/view/MotionEvent;)V

    .line 307
    :cond_6
    const-string v1, "CAM_gestures"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchTouch, mMode222="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 312
    :cond_7
    iget v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mMode:I

    if-nez v3, :cond_8

    .line 313
    const-string v2, "CAM_gestures"

    const-string v3, "dispatchTouch: mMode == MODE_NONE return false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 315
    :cond_8
    iget v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mMode:I

    if-ne v3, v7, :cond_a

    .line 316
    const-string v1, "CAM_gestures"

    const-string v3, "dispatchTouch: mMode == MODE_SWIPE"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v2, v1, :cond_9

    .line 318
    const-string v1, "CAM_gestures"

    const-string v3, "dispatchTouch: ACTION_UP: mMode == MODE_SWIPE : mSwipeListener.onSwipe()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mSwipeListener:Lcom/lenovo/scg/camera/PreviewGestures$SwipeListener;

    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PreviewGestures;->getSwipeDirection(Landroid/view/MotionEvent;)I

    move-result v3

    invoke-interface {v1, v3}, Lcom/lenovo/scg/camera/PreviewGestures$SwipeListener;->onSwipe(I)V

    :cond_9
    move v1, v2

    .line 321
    goto/16 :goto_0

    .line 322
    :cond_a
    iget v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mMode:I

    if-ne v3, v2, :cond_d

    .line 323
    const-string v1, "CAM_gestures"

    const-string v3, "dispatchTouch: mMode == MODE_PIE "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v7, v1, :cond_c

    .line 328
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->onActionPointerDown(Landroid/view/MotionEvent;)V

    .line 330
    const-string v1, "CAM_gestures"

    const-string v3, "dispatchTouch: ACTION_POINTER_DOWN: mMode == MODE_PIE : sendToPie()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PreviewGestures;->makeCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/PreviewGestures;->sendToPie(Landroid/view/MotionEvent;)Z

    .line 332
    iget-object v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mZoom:Lcom/lenovo/scg/camera/ui/ZoomRenderer;

    if-eqz v1, :cond_b

    .line 333
    const-string v1, "CAM_gestures"

    const-string v3, "dispatchTouch: ACTION_POINTER_DOWN: mMode == MODE_PIE : onScaleBegin()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/PreviewGestures;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    :cond_b
    move v1, v2

    .line 342
    goto/16 :goto_0

    .line 339
    :cond_c
    const-string v1, "CAM_gestures"

    const-string v2, "dispatchTouch: not ACTION_POINTER_DOWN: mMode == MODE_PIE : sendToPie()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PreviewGestures;->sendToPie(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 343
    :cond_d
    iget v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mMode:I

    if-ne v3, v5, :cond_f

    .line 344
    const-string v3, "CAM_gestures"

    const-string v4, "dispatchTouch: mMode == MODE_ZOOM "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 346
    iget-object v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v3

    if-nez v3, :cond_e

    const/4 v3, 0x6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v3, v4, :cond_e

    .line 347
    const-string v3, "CAM_gestures"

    const-string v4, "dispatchTouch: ACTION_POINTER_UP: mMode == MODE_ZOOM: set mMode AS  MODE_NONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iput v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mMode:I

    .line 349
    iget-object v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/PreviewGestures;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    :cond_e
    move v1, v2

    .line 351
    goto/16 :goto_0

    .line 352
    :cond_f
    iget v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mMode:I

    if-ne v3, v6, :cond_10

    .line 354
    const-string v1, "CAM_gestures"

    const-string v2, "dispatchTouch:  mMode == MODE_MODULE: return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 359
    :cond_10
    iget-object v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    if-nez v3, :cond_11

    .line 360
    const-string v1, "CAM_gestures"

    const-string v3, "dispatchTouch:  else: mDown == null : return"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 361
    goto/16 :goto_0

    .line 364
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v7, v3, :cond_15

    .line 366
    const-string v3, "CAM_gestures"

    const-string v4, "dispatchTouch:  else: ACTION_POINTER_DOWN : "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-boolean v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mZoomOnly:Z

    if-nez v3, :cond_12

    .line 368
    const-string v3, "CAM_gestures"

    const-string v4, "dispatchTouch:  else: ACTION_POINTER_DOWN : cancelPie()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PreviewGestures;->cancelPie()V

    .line 370
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PreviewGestures;->makeCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/PreviewGestures;->sendToPie(Landroid/view/MotionEvent;)Z

    .line 372
    :cond_12
    iget-object v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mZoom:Lcom/lenovo/scg/camera/ui/ZoomRenderer;

    if-eqz v3, :cond_13

    .line 373
    const-string v3, "CAM_gestures"

    const-string v4, "dispatchTouch:  else: ACTION_POINTER_DOWN : onScaleBegin()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 375
    iget-object v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/PreviewGestures;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    .line 378
    :cond_13
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->onActionPointerDown(Landroid/view/MotionEvent;)V

    .line 404
    :cond_14
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v2, v3, :cond_17

    .line 406
    const-string v1, "CAM_gestures"

    const-string v3, "dispatchTouch:  else: ACTION_UP : cancelPie()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PreviewGestures;->cancelPie()V

    .line 410
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->onActionUp(Landroid/view/MotionEvent;)V

    .line 413
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-object v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mTapTimeout:I

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-gez v1, :cond_16

    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PreviewGestures;->checkClickable(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 414
    const-string v1, "CAM_gestures"

    const-string v3, "dispatchTouch:  else: ACTION_UP : onSingleTapUp() && return"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/PreviewGestures;->cancelActivityTouchHandling(Landroid/view/MotionEvent;)V

    .line 416
    const-string v1, "CAM_gestures"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSingleTapUp, x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", overlayX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/ui/RenderOverlay;->getWindowPositionX()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",overlayY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/ui/RenderOverlay;->getWindowPositionY()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mTapListener:Lcom/lenovo/scg/camera/PreviewGestures$SingleTapListener;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/ui/RenderOverlay;->getWindowPositionX()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/ui/RenderOverlay;->getWindowPositionY()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-interface {v1, v3, v4, v5}, Lcom/lenovo/scg/camera/PreviewGestures$SingleTapListener;->onSingleTapUp(Landroid/view/View;II)V

    move v1, v2

    .line 419
    goto/16 :goto_0

    .line 380
    :cond_15
    const/4 v3, 0x6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v3, v4, :cond_14

    .line 382
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->onActionPointerUp(Landroid/view/MotionEvent;)V

    .line 385
    iget v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mMode:I

    if-ne v3, v5, :cond_14

    iget-object v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v3

    if-nez v3, :cond_14

    .line 386
    const-string v3, "CAM_gestures"

    const-string v4, "dispatchTouch:  else: ACTION_POINTER_UP : onScaleEnd()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 388
    iget-object v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/PreviewGestures;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    goto/16 :goto_1

    .line 422
    :cond_16
    const-string v1, "CAM_gestures"

    const-string v2, "dispatchTouch:  else: ACTION_UP : not sigleTapup & not LongPressup && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 427
    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v5, v3, :cond_0

    .line 430
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PreviewGestures;->checkClickable(Landroid/view/MotionEvent;)Z

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->onActionMove(Landroid/view/MotionEvent;Z)Z

    move-result v3

    if-eqz v3, :cond_18

    move v1, v2

    .line 431
    goto/16 :goto_0

    .line 434
    :cond_18
    const-string v2, "CAM_gestures"

    const-string v3, "dispatchTouch:  else: ACTION_MOVE :"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_19

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 438
    :cond_19
    const-string v2, "CAM_gestures"

    const-string v3, "dispatchTouch:  else: ACTION_MOVE : moved & cancelPie()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PreviewGestures;->cancelPie()V

    .line 440
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PreviewGestures;->getSwipeDirection(Landroid/view/MotionEvent;)I

    move-result v0

    .line 441
    .local v0, "dir":I
    if-ne v0, v5, :cond_1a

    .line 442
    const-string v1, "CAM_gestures"

    const-string v2, "dispatchTouch:  else: ACTION_MOVE : dir == DIR_LEFT : set mMode AS MODE_MODULE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iput v6, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mMode:I

    .line 444
    iget-object v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 446
    :cond_1a
    const-string v2, "CAM_gestures"

    const-string v3, "dispatchTouch:  else: ACTION_MOVE : dir != DIR_LEFT : set mMode AS MODE_NONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/PreviewGestures;->cancelActivityTouchHandling(Landroid/view/MotionEvent;)V

    .line 448
    iput v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mMode:I

    goto/16 :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 571
    const-string v0, "CAM_gestures:zoom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScale mIsScaleSupported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mIsScaleSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mIsScaleSupported:Z

    if-nez v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mCurrent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 577
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mZoom:Lcom/lenovo/scg/camera/ui/ZoomRenderer;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v3, 0x2

    .line 582
    const-string/jumbo v0, "zoom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScaleBegin, ActionMasked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mCurrent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-static {}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getInstance()Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->creat()V

    .line 588
    iget v0, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mMode:I

    if-eq v0, v3, :cond_0

    .line 589
    iput v3, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mMode:I

    .line 590
    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mCurrent:Landroid/view/MotionEvent;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/PreviewGestures;->cancelActivityTouchHandling(Landroid/view/MotionEvent;)V

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mCurrent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 593
    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mZoom:Lcom/lenovo/scg/camera/ui/ZoomRenderer;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    .line 595
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 601
    const-string/jumbo v0, "zoom"

    const-string/jumbo v1, "onScaleEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mCurrent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 603
    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mZoom:Lcom/lenovo/scg/camera/ui/ZoomRenderer;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 605
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mMode:I

    .line 606
    return-void
.end method

.method public removeTouchReceiver(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mReceivers:Ljava/util/List;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mReceivers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PreviewGestures;->clearTouchReceivers()V

    .line 267
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PreviewGestures;->clearUnclickableAreas()V

    .line 268
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 173
    const-string v0, "CAM_gestures"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTouch setEnabled ----> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mEnabled:Z

    .line 175
    if-nez p1, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PreviewGestures;->cancelPie()V

    .line 178
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 169
    iput p1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mOrientation:I

    .line 170
    return-void
.end method

.method public setRenderOverlay(Lcom/lenovo/scg/camera/ui/RenderOverlay;)V
    .locals 0
    .param p1, "overlay"    # Lcom/lenovo/scg/camera/ui/RenderOverlay;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    .line 166
    return-void
.end method

.method public setScaleSupported(Z)V
    .locals 3
    .param p1, "support"    # Z

    .prologue
    .line 617
    const-string v0, "CAM_gestures:zoom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScaleSupported : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mIsScaleSupported:Z

    .line 620
    return-void
.end method

.method public setZoomOnly(Z)V
    .locals 0
    .param p1, "zoom"    # Z

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/PreviewGestures;->mZoomOnly:Z

    .line 182
    return-void
.end method
