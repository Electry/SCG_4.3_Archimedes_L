.class Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;
.super Landroid/view/View;
.source "ZoomBarCanver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/ui/ZoomBarCanver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ZoomView"
.end annotation


# static fields
.field private static final MSG_ZOOM_ON_ADD_STEP:I = 0x0

.field private static final MSG_ZOOM_ON_REDUCE_STEP:I = 0x1

.field private static final mStepTimes:I = 0x8

.field private static final mStepTimesSpace:I = 0x14


# instance fields
.field canActMove:Z

.field private isZoomChangeOnWay:Z

.field private mAddIndicatorRadius:I

.field private mCurrentStepTimes:I

.field private mDownPointerX:I

.field private mHandler:Landroid/os/Handler;

.field private mHasZoomSetSlidePos:I

.field private mLeftEdge:I

.field private mLineHalfHeight:I

.field private mReduceIndicatorRadius:I

.field private mRightEdge:I

.field private mSlideBarRadius:I

.field private mSlideBarStep:I

.field private mTouchPointerX:I

.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 443
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    .line 444
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 350
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit8 v0, v0, 0x1d

    div-int/lit16 v0, v0, 0x438

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mSlideBarRadius:I

    .line 353
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit16 v0, v0, 0x82

    div-int/lit16 v0, v0, 0x438

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mLeftEdge:I

    .line 356
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit16 v0, v0, 0x82

    div-int/lit16 v0, v0, 0x438

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mRightEdge:I

    .line 359
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit8 v0, v0, 0x13

    div-int/lit16 v0, v0, 0x438

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mAddIndicatorRadius:I

    .line 362
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit8 v0, v0, 0x13

    div-int/lit16 v0, v0, 0x438

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mReduceIndicatorRadius:I

    .line 365
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit8 v0, v0, 0x6

    div-int/lit16 v0, v0, 0x438

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mLineHalfHeight:I

    .line 368
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->isZoomChangeOnWay:Z

    .line 371
    iput v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mTouchPointerX:I

    .line 373
    iput v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mDownPointerX:I

    .line 376
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->canActMove:Z

    .line 379
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit8 v0, v0, 0xd

    div-int/lit16 v0, v0, 0x438

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mSlideBarStep:I

    .line 388
    const/16 v0, 0x8

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mCurrentStepTimes:I

    .line 391
    iput v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mHasZoomSetSlidePos:I

    .line 397
    new-instance v0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView$1;-><init>(Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mHandler:Landroid/os/Handler;

    .line 446
    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoom:I
    invoke-static {p1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$800(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->getSlideBarFromZoom(I)I

    move-result v0

    # setter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I
    invoke-static {p1, v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$302(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;I)I

    .line 447
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    .prologue
    .line 347
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mCurrentStepTimes:I

    return v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;
    .param p1, "x1"    # I

    .prologue
    .line 347
    iput p1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mCurrentStepTimes:I

    return p1
.end method

.method static synthetic access$010(Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    .prologue
    .line 347
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mCurrentStepTimes:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mCurrentStepTimes:I

    return v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;
    .param p1, "x1"    # Z

    .prologue
    .line 347
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->isZoomChangeOnWay:Z

    return p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    .prologue
    .line 347
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mSlideBarStep:I

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->onZoomChanged()V

    return-void
.end method

.method private drawAddIndicator(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 873
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mAddDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$1800(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_0

    .line 886
    :goto_0
    return-void

    .line 879
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mScreenWidth:I
    invoke-static {v5}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$1100(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v5

    iget v6, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mRightEdge:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mAddIndicatorRadius:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    add-int/lit8 v2, v5, 0x3

    .line 880
    .local v2, "l":I
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->getHeightCenter()I

    move-result v1

    .line 881
    .local v1, "centerH":I
    iget v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mAddIndicatorRadius:I

    sub-int v4, v1, v5

    .line 882
    .local v4, "t":I
    iget v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mAddIndicatorRadius:I

    mul-int/lit8 v5, v5, 0x2

    add-int v3, v2, v5

    .line 883
    .local v3, "r":I
    iget v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mAddIndicatorRadius:I

    add-int v0, v1, v5

    .line 884
    .local v0, "b":I
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mAddDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$1800(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v2, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 885
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mAddDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$1800(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawBlueLine(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 795
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mBlueLineDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$1500(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_1

    .line 796
    const-string v5, "ZoomBarCanver"

    const-string v6, "drawBlueLine: indicator is NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 802
    :cond_1
    iget v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mLeftEdge:I

    iget v6, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mReduceIndicatorRadius:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v2, v5, -0x3

    .line 803
    .local v2, "l":I
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->getHeightCenter()I

    move-result v1

    .line 804
    .local v1, "centerH":I
    iget v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mLineHalfHeight:I

    sub-int v4, v1, v5

    .line 805
    .local v4, "t":I
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I
    invoke-static {v5}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$300(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v5

    iget v6, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mSlideBarRadius:I

    sub-int/2addr v5, v6

    add-int/lit8 v3, v5, 0x3

    .line 806
    .local v3, "r":I
    iget v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mLineHalfHeight:I

    add-int v0, v1, v5

    .line 807
    .local v0, "b":I
    const-string v5, "ZoomBarCanver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drawBlueLine: length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-int v7, v3, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    sub-int v5, v3, v2

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    .line 811
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mBlueLineDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$1500(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v2, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 812
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mBlueLineDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$1500(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawReduceIndicator(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 770
    iget-object v6, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoom:I
    invoke-static {v6}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$800(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mReduceZeroDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v6}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$1300(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 771
    .local v4, "reduceDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-nez v4, :cond_1

    .line 772
    const-string v6, "ZoomBarCanver"

    const-string v7, "drawReduceIndicator: indicator is NULL"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :goto_1
    return-void

    .line 770
    .end local v4    # "reduceDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mReduceDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v6}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$1400(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 778
    .restart local v4    # "reduceDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mLeftEdge:I

    .line 779
    .local v2, "l":I
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->getHeightCenter()I

    move-result v1

    .line 780
    .local v1, "centerH":I
    iget v6, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mReduceIndicatorRadius:I

    sub-int v5, v1, v6

    .line 781
    .local v5, "t":I
    iget v6, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mReduceIndicatorRadius:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v2

    add-int/lit8 v3, v6, -0x3

    .line 782
    .local v3, "r":I
    iget v6, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mReduceIndicatorRadius:I

    add-int v0, v1, v6

    .line 783
    .local v0, "b":I
    invoke-virtual {v4, v2, v5, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 784
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method private drawSlideBar(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 823
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$1600(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_0

    .line 836
    :goto_0
    return-void

    .line 829
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I
    invoke-static {v5}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$300(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v5

    iget v6, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mSlideBarRadius:I

    sub-int v2, v5, v6

    .line 830
    .local v2, "l":I
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->getHeightCenter()I

    move-result v1

    .line 831
    .local v1, "centerH":I
    iget v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mSlideBarRadius:I

    sub-int v4, v1, v5

    .line 832
    .local v4, "t":I
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I
    invoke-static {v5}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$300(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v5

    iget v6, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mSlideBarRadius:I

    add-int v3, v5, v6

    .line 833
    .local v3, "r":I
    iget v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mSlideBarRadius:I

    add-int v0, v1, v5

    .line 834
    .local v0, "b":I
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$1600(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v2, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 835
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$1600(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawWhiteLine(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 846
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mWhiteLineDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$1700(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_1

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 852
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I
    invoke-static {v5}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$300(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v5

    iget v6, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mSlideBarRadius:I

    add-int/2addr v5, v6

    add-int/lit8 v2, v5, -0x3

    .line 853
    .local v2, "l":I
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->getHeightCenter()I

    move-result v1

    .line 854
    .local v1, "centerH":I
    iget v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mLineHalfHeight:I

    sub-int v4, v1, v5

    .line 855
    .local v4, "t":I
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mScreenWidth:I
    invoke-static {v5}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$1100(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v5

    iget v6, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mRightEdge:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mAddIndicatorRadius:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    add-int/lit8 v3, v5, 0x3

    .line 856
    .local v3, "r":I
    iget v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mLineHalfHeight:I

    add-int v0, v1, v5

    .line 857
    .local v0, "b":I
    const-string v5, "ZoomBarCanver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drawWhiteLine: length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-int v7, v3, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    sub-int v5, v3, v2

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    .line 861
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mWhiteLineDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$1700(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v2, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 862
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mWhiteLineDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$1700(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawZoomIndicator(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 737
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->resetSlideBarPos()V

    .line 738
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->drawReduceIndicator(Landroid/graphics/Canvas;)V

    .line 739
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->drawBlueLine(Landroid/graphics/Canvas;)V

    .line 740
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->drawSlideBar(Landroid/graphics/Canvas;)V

    .line 741
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->drawWhiteLine(Landroid/graphics/Canvas;)V

    .line 742
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->drawAddIndicator(Landroid/graphics/Canvas;)V

    .line 743
    return-void
.end method

.method private getHeightCenter()I
    .locals 1

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getZoomFromSlideBarPos(I)I
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->getSlideBarPosMin()I

    move-result v1

    .line 637
    .local v1, "pMin":I
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->getSlideBarPosMax()I

    move-result v0

    .line 638
    .local v0, "pMax":I
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomMax:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$1200(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v2

    sub-int v3, p1, v1

    mul-int/2addr v2, v3

    sub-int v3, v0, v1

    div-int/2addr v2, v3

    return v2
.end method

.method private inIndicator(II)Z
    .locals 2
    .param p1, "pos"    # I
    .param p2, "offset"    # I

    .prologue
    .line 684
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mLeftEdge:I

    sub-int/2addr v0, p2

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mScreenWidth:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$1100(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mRightEdge:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    if-ge p1, v0, :cond_0

    .line 685
    const/4 v0, 0x1

    .line 687
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onZoomChanged()V
    .locals 3

    .prologue
    .line 662
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mHasZoomSetSlidePos:I

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$300(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 663
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$300(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mHasZoomSetSlidePos:I

    .line 664
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$200(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    iget v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mHasZoomSetSlidePos:I

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->getZoomFromSlideBarPos(I)I

    move-result v1

    # setter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoom:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$802(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;I)I

    .line 666
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoom:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$800(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    # setter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoom:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$802(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;I)I

    .line 667
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoom:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$800(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomMax:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$1200(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    # setter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoom:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$802(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;I)I

    .line 668
    const-string v0, "ZoomBarCanver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onZoomChanged: index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoom:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$800(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$200(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoom:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$800(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;->onZoomValueChanged(I)V

    .line 672
    :cond_0
    return-void
.end method

.method private resetSlideBarPos()V
    .locals 4

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->getSlideBarPosMin()I

    move-result v0

    .line 753
    .local v0, "slideLeftEnd":I
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->getSlideBarPosMax()I

    move-result v1

    .line 754
    .local v1, "slideRightEnd":I
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$300(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    # setter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$302(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;I)I

    .line 755
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$300(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    # setter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$302(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;I)I

    .line 756
    return-void
.end method

.method private zoomAddOnWay()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    .line 706
    const-string v3, "ZoomBarCanver"

    const-string/jumbo v4, "zoomAddOnWay()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-boolean v3, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->isZoomChangeOnWay:Z

    if-eqz v3, :cond_0

    .line 708
    const-string v2, "ZoomBarCanver"

    const-string/jumbo v3, "zoomAddOnWay() isZoomChangeOnWay && return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :goto_0
    return-void

    .line 712
    :cond_0
    iget v3, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mTouchPointerX:I

    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$300(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v4

    sub-int v0, v3, v4

    .line 713
    .local v0, "space":I
    iget v3, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mSlideBarStep:I

    div-int v1, v0, v3

    .line 714
    .local v1, "times":I
    if-ge v1, v2, :cond_1

    .end local v1    # "times":I
    :goto_1
    iput v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mCurrentStepTimes:I

    .line 716
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->isZoomChangeOnWay:Z

    .line 717
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .restart local v1    # "times":I
    :cond_1
    move v1, v2

    .line 714
    goto :goto_1
.end method

.method private zoomReduceOnWay()V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x1

    .line 691
    const-string v3, "ZoomBarCanver"

    const-string/jumbo v4, "zoomReduceOnWay()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-boolean v3, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->isZoomChangeOnWay:Z

    if-eqz v3, :cond_0

    .line 693
    const-string v2, "ZoomBarCanver"

    const-string/jumbo v3, "zoomReduceOnWay() isZoomChangeOnWay && return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :goto_0
    return-void

    .line 697
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$300(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v3

    iget v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mTouchPointerX:I

    sub-int v0, v3, v4

    .line 698
    .local v0, "space":I
    iget v3, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mSlideBarStep:I

    div-int v1, v0, v3

    .line 699
    .local v1, "times":I
    if-ge v1, v2, :cond_1

    .end local v1    # "times":I
    :goto_1
    iput v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mCurrentStepTimes:I

    .line 701
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->isZoomChangeOnWay:Z

    .line 702
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .restart local v1    # "times":I
    :cond_1
    move v1, v2

    .line 699
    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 723
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 725
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->drawZoomIndicator(Landroid/graphics/Canvas;)V

    .line 726
    return-void
.end method

.method public getSlideBarFromZoom(I)I
    .locals 4
    .param p1, "zoom"    # I

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->getSlideBarPosMin()I

    move-result v1

    .line 650
    .local v1, "pMin":I
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->getSlideBarPosMax()I

    move-result v0

    .line 651
    .local v0, "pMax":I
    sub-int v2, v0, v1

    mul-int/2addr v2, p1

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomMax:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$1200(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v3

    div-int/2addr v2, v3

    add-int/2addr v2, v1

    return v2
.end method

.method public getSlideBarPosMax()I
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mScreenWidth:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$1100(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mRightEdge:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mSlideBarRadius:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mAddIndicatorRadius:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getSlideBarPosMin()I
    .locals 2

    .prologue
    .line 614
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mLeftEdge:I

    iget v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mReduceIndicatorRadius:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mSlideBarRadius:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x3

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v8, 0x32

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 457
    const-string v4, "ZoomBarCanver"

    const-string/jumbo v5, "onTouchEvent()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$900(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v4

    const v5, 0x3e99999a    # 0.3f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 463
    const-string v3, "ZoomBarCanver"

    const-string/jumbo v4, "onTouchEvent() alpha < 0.3f && return false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :goto_0
    return v2

    .line 467
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mTouchPointerX:I

    .line 469
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_1
    move v2, v3

    .line 603
    goto :goto_0

    .line 471
    :pswitch_0
    const-string v4, "ZoomBarCanver"

    const-string/jumbo v5, "onTouchEvent() --- down"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mTouchPointerX:I

    iput v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mDownPointerX:I

    .line 473
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    # setter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mTimeActionDown:J
    invoke-static {v4, v6, v7}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$1002(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;J)J

    .line 474
    iget v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mDownPointerX:I

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I
    invoke-static {v5}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$300(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mSlideBarRadius:I

    mul-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_3

    .line 475
    const-string v2, "ZoomBarCanver"

    const-string/jumbo v4, "onTouchEvent() --- down : && canMove"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->canActMove:Z

    .line 477
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;
    invoke-static {v2}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$200(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 478
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;
    invoke-static {v2}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$200(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;->onZoomStart()V

    .line 480
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->removeDestoryMsg()V

    goto :goto_1

    .line 482
    :cond_3
    const-string v4, "ZoomBarCanver"

    const-string/jumbo v5, "onTouchEvent() --- down : && \uff01canMove"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->canActMove:Z

    goto :goto_1

    .line 487
    :pswitch_1
    const-string v4, "ZoomBarCanver"

    const-string/jumbo v5, "onTouchEvent() ---- up"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 490
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->isZoomChangeOnWay:Z

    .line 491
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 493
    :cond_4
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 494
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->isZoomChangeOnWay:Z

    .line 495
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 497
    :cond_5
    iput v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mCurrentStepTimes:I

    .line 500
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->canActMove:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mDownPointerX:I

    iget v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mTouchPointerX:I

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mSlideBarRadius:I

    mul-int/lit8 v4, v4, 0x2

    if-le v2, v4, :cond_7

    .line 501
    const-string v2, "ZoomBarCanver"

    const-string/jumbo v4, "onTouchEvent() ---- up : do MOVE and return"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;
    invoke-static {v2}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$200(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 503
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;
    invoke-static {v2}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$200(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;->onZoomEnd()V

    :cond_6
    move v2, v3

    .line 505
    goto/16 :goto_0

    .line 509
    :cond_7
    iget v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mDownPointerX:I

    iget v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mTouchPointerX:I

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mSlideBarRadius:I

    mul-int/lit8 v4, v4, 0x2

    if-le v2, v4, :cond_9

    .line 510
    const-string v2, "ZoomBarCanver"

    const-string/jumbo v4, "onTouchEvent() ---- up : not same position as DOWN and return"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;
    invoke-static {v2}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$200(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 512
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;
    invoke-static {v2}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$200(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;->onZoomEnd()V

    :cond_8
    move v2, v3

    .line 514
    goto/16 :goto_0

    .line 518
    :cond_9
    iget v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mTouchPointerX:I

    iget v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mAddIndicatorRadius:I

    mul-int/lit8 v4, v4, 0x3

    invoke-direct {p0, v2, v4}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->inIndicator(II)Z

    move-result v2

    if-nez v2, :cond_a

    .line 519
    const-string v2, "ZoomBarCanver"

    const-string/jumbo v4, "onTouchEvent() ---- up : not in indicator and return"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 520
    goto/16 :goto_0

    .line 525
    :cond_a
    iget v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mTouchPointerX:I

    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mScreenWidth:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$1100(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v4

    iget v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mRightEdge:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mAddIndicatorRadius:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_b

    iget v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mTouchPointerX:I

    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mScreenWidth:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$1100(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v4

    iget v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mRightEdge:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mAddIndicatorRadius:I

    mul-int/lit8 v5, v5, 0x5

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_b

    .line 527
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->zoomAddOnWay()V

    .line 539
    :goto_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;
    invoke-static {v2}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$200(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 540
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;
    invoke-static {v2}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$200(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;->onZoomEnd()V

    goto/16 :goto_1

    .line 528
    :cond_b
    iget v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mTouchPointerX:I

    iget v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mLeftEdge:I

    iget v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mReduceIndicatorRadius:I

    mul-int/lit8 v5, v5, 0x3

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_c

    iget v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mTouchPointerX:I

    iget v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mLeftEdge:I

    iget v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mReduceIndicatorRadius:I

    mul-int/lit8 v5, v5, 0x5

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_c

    .line 530
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->zoomReduceOnWay()V

    goto :goto_2

    .line 532
    :cond_c
    const-string v2, "ZoomBarCanver"

    const-string/jumbo v4, "up in bar"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    iget v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mTouchPointerX:I

    # setter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I
    invoke-static {v2, v4}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$302(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;I)I

    .line 534
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->resetSlideBarPos()V

    .line 535
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->invalidate()V

    .line 536
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomNumberView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$500(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->invalidate()V

    .line 537
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->onZoomChanged()V

    goto :goto_2

    .line 544
    :pswitch_2
    const-string v4, "ZoomBarCanver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onTouchEvent() ---- move : canMove = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->canActMove:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mDownPointerX:I

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mAddIndicatorRadius:I

    mul-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_e

    .line 551
    const-string v4, "ZoomBarCanver"

    const-string/jumbo v5, "onTouchEvent() ---- move : the same pos as down"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 554
    .local v0, "time":J
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mTimeActionDown:J
    invoke-static {v4}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$1000(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_e

    .line 557
    const-string v4, "ZoomBarCanver"

    const-string/jumbo v5, "onTouchEvent() ---- move : is long press action"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mTouchPointerX:I

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mScreenWidth:I
    invoke-static {v5}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$1100(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v5

    iget v6, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mRightEdge:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mAddIndicatorRadius:I

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_d

    iget v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mTouchPointerX:I

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mScreenWidth:I
    invoke-static {v5}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$1100(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I

    move-result v5

    iget v6, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mRightEdge:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mAddIndicatorRadius:I

    mul-int/lit8 v6, v6, 0x5

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_d

    .line 564
    const-string v4, "ZoomBarCanver"

    const-string/jumbo v5, "onTouchEvent() ---- move : is long press action ++++"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->removeDestoryMsg()V

    .line 569
    iput v8, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mCurrentStepTimes:I

    .line 570
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 571
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 574
    :cond_d
    iget v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mTouchPointerX:I

    iget v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mLeftEdge:I

    iget v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mReduceIndicatorRadius:I

    mul-int/lit8 v5, v5, 0x3

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_e

    iget v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mTouchPointerX:I

    iget v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mLeftEdge:I

    iget v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mReduceIndicatorRadius:I

    mul-int/lit8 v5, v5, 0x5

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_e

    .line 578
    const-string v2, "ZoomBarCanver"

    const-string/jumbo v4, "onTouchEvent() ---- move : is long press action ----"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->removeDestoryMsg()V

    .line 582
    iput v8, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mCurrentStepTimes:I

    .line 583
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 584
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 591
    .end local v0    # "time":J
    :cond_e
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->canActMove:Z

    if-eqz v2, :cond_1

    .line 592
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->removeDestoryMsg()V

    .line 593
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    iget v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mTouchPointerX:I

    # setter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I
    invoke-static {v2, v4}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$302(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;I)I

    .line 594
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->resetSlideBarPos()V

    .line 595
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->invalidate()V

    .line 596
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    # getter for: Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomNumberView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->access$500(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->invalidate()V

    .line 597
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->onZoomChanged()V

    goto/16 :goto_1

    .line 469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public removeMsg()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 451
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 452
    return-void
.end method
