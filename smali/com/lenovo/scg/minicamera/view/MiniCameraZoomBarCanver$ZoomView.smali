.class Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;
.super Landroid/view/View;
.source "MiniCameraZoomBarCanver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ZoomView"
.end annotation


# static fields
.field private static final MSG_ZOOM_ON_ADD_STEP:I = 0x0

.field private static final MSG_ZOOM_ON_REDUCE_STEP:I = 0x1

.field private static final mAddIndicatorRadius:I = 0x13

.field private static final mLeftEdge:I = 0x82

.field private static final mLineHalfHeight:I = 0x6

.field private static final mReduceIndicatorRadius:I = 0x13

.field private static final mRightEdge:I = 0x82

.field private static final mSlideBarRadius:I = 0x1d

.field private static final mSlideBarStep:I = 0xd

.field private static final mStepTimes:I = 0x8

.field private static final mStepTimesSpace:I = 0x14


# instance fields
.field canActMove:Z

.field private isZoomChangeOnWay:Z

.field private mCurrentStepTimes:I

.field private mDownPointerX:I

.field private mHandler:Landroid/os/Handler;

.field private mHasZoomSetSlidePos:I

.field private mTouchPointerX:I

.field final synthetic this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 353
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    .line 354
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 278
    iput-boolean v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->isZoomChangeOnWay:Z

    .line 281
    iput v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mTouchPointerX:I

    .line 283
    iput v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mDownPointerX:I

    .line 286
    iput-boolean v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->canActMove:Z

    .line 298
    const/16 v0, 0x8

    iput v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mCurrentStepTimes:I

    .line 301
    iput v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mHasZoomSetSlidePos:I

    .line 307
    new-instance v0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView$1;-><init>(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mHandler:Landroid/os/Handler;

    .line 356
    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoom:I
    invoke-static {p1}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$700(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->getSlideBarFromZoom(I)I

    move-result v0

    # setter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarPos:I
    invoke-static {p1, v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$302(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;I)I

    .line 357
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    .prologue
    .line 257
    iget v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mCurrentStepTimes:I

    return v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;
    .param p1, "x1"    # I

    .prologue
    .line 257
    iput p1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mCurrentStepTimes:I

    return p1
.end method

.method static synthetic access$010(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    .prologue
    .line 257
    iget v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mCurrentStepTimes:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mCurrentStepTimes:I

    return v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;
    .param p1, "x1"    # Z

    .prologue
    .line 257
    iput-boolean p1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->isZoomChangeOnWay:Z

    return p1
.end method

.method static synthetic access$500(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->onZoomChanged()V

    return-void
.end method

.method private drawAddIndicator(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 723
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mAddDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$1500(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_0

    .line 736
    :goto_0
    return-void

    .line 729
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mScreenWidth:I
    invoke-static {v5}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$900(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v5

    add-int/lit16 v5, v5, -0x82

    add-int/lit8 v5, v5, -0x26

    add-int/lit8 v2, v5, 0x3

    .line 730
    .local v2, "l":I
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->getHeightCenter()I

    move-result v1

    .line 731
    .local v1, "centerH":I
    add-int/lit8 v4, v1, -0x13

    .line 732
    .local v4, "t":I
    add-int/lit8 v3, v2, 0x26

    .line 733
    .local v3, "r":I
    add-int/lit8 v0, v1, 0x13

    .line 734
    .local v0, "b":I
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mAddDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$1500(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v2, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 735
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mAddDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$1500(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawBlueLine(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 645
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mBlueLineDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$1200(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_1

    .line 646
    const-string v5, "ZoomBarCanver"

    const-string v6, "drawBlueLine: indicator is NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    const/16 v2, 0xa5

    .line 653
    .local v2, "l":I
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->getHeightCenter()I

    move-result v1

    .line 654
    .local v1, "centerH":I
    add-int/lit8 v4, v1, -0x6

    .line 655
    .local v4, "t":I
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarPos:I
    invoke-static {v5}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$300(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1d

    add-int/lit8 v3, v5, 0x3

    .line 656
    .local v3, "r":I
    add-int/lit8 v0, v1, 0x6

    .line 657
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

    .line 658
    sub-int v5, v3, v2

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    .line 661
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mBlueLineDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$1200(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v2, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 662
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mBlueLineDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$1200(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawReduceIndicator(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 621
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mReduceDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$1100(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_0

    .line 622
    const-string v5, "ZoomBarCanver"

    const-string v6, "drawReduceIndicator: indicator is NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :goto_0
    return-void

    .line 628
    :cond_0
    const/16 v2, 0x82

    .line 629
    .local v2, "l":I
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->getHeightCenter()I

    move-result v1

    .line 630
    .local v1, "centerH":I
    add-int/lit8 v4, v1, -0x13

    .line 631
    .local v4, "t":I
    const/16 v5, 0xa8

    add-int/lit8 v3, v5, -0x3

    .line 632
    .local v3, "r":I
    add-int/lit8 v0, v1, 0x13

    .line 633
    .local v0, "b":I
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mReduceDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$1100(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v2, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 634
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mReduceDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$1100(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawSlideBar(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 673
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$1300(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_0

    .line 686
    :goto_0
    return-void

    .line 679
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarPos:I
    invoke-static {v5}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$300(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v5

    add-int/lit8 v2, v5, -0x1d

    .line 680
    .local v2, "l":I
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->getHeightCenter()I

    move-result v1

    .line 681
    .local v1, "centerH":I
    add-int/lit8 v4, v1, -0x1d

    .line 682
    .local v4, "t":I
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarPos:I
    invoke-static {v5}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$300(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v5

    add-int/lit8 v3, v5, 0x1d

    .line 683
    .local v3, "r":I
    add-int/lit8 v0, v1, 0x1d

    .line 684
    .local v0, "b":I
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$1300(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v2, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 685
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$1300(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawWhiteLine(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 696
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mWhiteLineDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$1400(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_1

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarPos:I
    invoke-static {v5}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$300(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1d

    add-int/lit8 v2, v5, -0x3

    .line 703
    .local v2, "l":I
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->getHeightCenter()I

    move-result v1

    .line 704
    .local v1, "centerH":I
    add-int/lit8 v4, v1, -0x6

    .line 705
    .local v4, "t":I
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mScreenWidth:I
    invoke-static {v5}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$900(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v5

    add-int/lit16 v5, v5, -0x82

    add-int/lit8 v5, v5, -0x26

    add-int/lit8 v3, v5, 0x3

    .line 706
    .local v3, "r":I
    add-int/lit8 v0, v1, 0x6

    .line 707
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

    .line 708
    sub-int v5, v3, v2

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    .line 711
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mWhiteLineDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$1400(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v2, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 712
    iget-object v5, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mWhiteLineDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$1400(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawZoomIndicator(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->resetSlideBarPos()V

    .line 589
    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->drawReduceIndicator(Landroid/graphics/Canvas;)V

    .line 590
    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->drawBlueLine(Landroid/graphics/Canvas;)V

    .line 591
    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->drawSlideBar(Landroid/graphics/Canvas;)V

    .line 592
    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->drawWhiteLine(Landroid/graphics/Canvas;)V

    .line 593
    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->drawAddIndicator(Landroid/graphics/Canvas;)V

    .line 594
    return-void
.end method

.method private getHeightCenter()I
    .locals 1

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getZoomFromSlideBarPos(I)I
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->getSlideBarPosMin()I

    move-result v1

    .line 486
    .local v1, "pMin":I
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->getSlideBarPosMax()I

    move-result v0

    .line 487
    .local v0, "pMax":I
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomMax:I
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$1000(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v2

    sub-int v3, p1, v1

    mul-int/2addr v2, v3

    sub-int v3, v0, v1

    div-int/2addr v2, v3

    return v2
.end method

.method private inIndicator(II)Z
    .locals 1
    .param p1, "pos"    # I
    .param p2, "offset"    # I

    .prologue
    .line 533
    rsub-int v0, p2, 0x82

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mScreenWidth:I
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$900(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v0

    add-int/lit16 v0, v0, -0x82

    add-int/2addr v0, p2

    if-ge p1, v0, :cond_0

    .line 534
    const/4 v0, 0x1

    .line 536
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onZoomChanged()V
    .locals 3

    .prologue
    .line 511
    iget v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mHasZoomSetSlidePos:I

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarPos:I
    invoke-static {v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$300(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 512
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarPos:I
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$300(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mHasZoomSetSlidePos:I

    .line 513
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$200(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    iget v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mHasZoomSetSlidePos:I

    invoke-direct {p0, v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->getZoomFromSlideBarPos(I)I

    move-result v1

    # setter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoom:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$702(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;I)I

    .line 515
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoom:I
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$700(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    # setter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoom:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$702(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;I)I

    .line 516
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoom:I
    invoke-static {v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$700(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomMax:I
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$1000(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    # setter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoom:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$702(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;I)I

    .line 517
    const-string v0, "ZoomBarCanver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onZoomChanged: index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoom:I
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$700(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$200(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoom:I
    invoke-static {v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$700(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;->onZoomValueChanged(I)V

    .line 521
    :cond_0
    return-void
.end method

.method private resetSlideBarPos()V
    .locals 4

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->getSlideBarPosMin()I

    move-result v0

    .line 604
    .local v0, "slideLeftEnd":I
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->getSlideBarPosMax()I

    move-result v1

    .line 605
    .local v1, "slideRightEnd":I
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    iget-object v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarPos:I
    invoke-static {v3}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$300(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    # setter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarPos:I
    invoke-static {v2, v3}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$302(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;I)I

    .line 606
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    iget-object v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarPos:I
    invoke-static {v3}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$300(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    # setter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarPos:I
    invoke-static {v2, v3}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$302(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;I)I

    .line 607
    return-void
.end method

.method private zoomAddOnWay()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    .line 555
    const-string v3, "ZoomBarCanver"

    const-string/jumbo v4, "zoomAddOnWay()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-boolean v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->isZoomChangeOnWay:Z

    if-eqz v3, :cond_0

    .line 557
    const-string v2, "ZoomBarCanver"

    const-string/jumbo v3, "zoomAddOnWay() isZoomChangeOnWay && return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :goto_0
    return-void

    .line 561
    :cond_0
    iget v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mTouchPointerX:I

    iget-object v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarPos:I
    invoke-static {v4}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$300(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v4

    sub-int v0, v3, v4

    .line 562
    .local v0, "space":I
    div-int/lit8 v1, v0, 0xd

    .line 563
    .local v1, "times":I
    if-ge v1, v2, :cond_1

    .end local v1    # "times":I
    :goto_1
    iput v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mCurrentStepTimes:I

    .line 565
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->isZoomChangeOnWay:Z

    .line 566
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .restart local v1    # "times":I
    :cond_1
    move v1, v2

    .line 563
    goto :goto_1
.end method

.method private zoomReduceOnWay()V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x1

    .line 540
    const-string v3, "ZoomBarCanver"

    const-string/jumbo v4, "zoomReduceOnWay()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-boolean v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->isZoomChangeOnWay:Z

    if-eqz v3, :cond_0

    .line 542
    const-string v2, "ZoomBarCanver"

    const-string/jumbo v3, "zoomReduceOnWay() isZoomChangeOnWay && return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :goto_0
    return-void

    .line 546
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarPos:I
    invoke-static {v3}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$300(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v3

    iget v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mTouchPointerX:I

    sub-int v0, v3, v4

    .line 547
    .local v0, "space":I
    div-int/lit8 v1, v0, 0xd

    .line 548
    .local v1, "times":I
    if-ge v1, v2, :cond_1

    .end local v1    # "times":I
    :goto_1
    iput v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mCurrentStepTimes:I

    .line 550
    iput-boolean v5, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->isZoomChangeOnWay:Z

    .line 551
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .restart local v1    # "times":I
    :cond_1
    move v1, v2

    .line 548
    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 572
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 574
    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->drawZoomIndicator(Landroid/graphics/Canvas;)V

    .line 575
    return-void
.end method

.method public getSlideBarFromZoom(I)I
    .locals 4
    .param p1, "zoom"    # I

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->getSlideBarPosMin()I

    move-result v1

    .line 499
    .local v1, "pMin":I
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->getSlideBarPosMax()I

    move-result v0

    .line 500
    .local v0, "pMax":I
    sub-int v2, v0, v1

    mul-int/2addr v2, p1

    iget-object v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomMax:I
    invoke-static {v3}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$1000(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v3

    div-int/2addr v2, v3

    add-int/2addr v2, v1

    return v2
.end method

.method public getSlideBarPosMax()I
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mScreenWidth:I
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$900(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v0

    add-int/lit16 v0, v0, -0x82

    add-int/lit8 v0, v0, -0x1d

    add-int/lit8 v0, v0, -0x26

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getSlideBarPosMin()I
    .locals 1

    .prologue
    .line 463
    const/16 v0, 0xc2

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v2, 0x3a

    const/4 v3, 0x1

    .line 367
    const-string v0, "ZoomBarCanver"

    const-string/jumbo v1, "onTouchEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->isZoomChangeOnWay:Z

    if-eqz v0, :cond_1

    .line 452
    :cond_0
    :goto_0
    return v3

    .line 373
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mTouchPointerX:I

    .line 375
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 377
    :pswitch_0
    const-string v0, "ZoomBarCanver"

    const-string/jumbo v1, "onTouchEvent() --- down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mTouchPointerX:I

    iput v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mDownPointerX:I

    .line 379
    iget v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mDownPointerX:I

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarPos:I
    invoke-static {v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$300(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x57

    if-ge v0, v1, :cond_3

    .line 380
    const-string v0, "ZoomBarCanver"

    const-string/jumbo v1, "onTouchEvent() --- down : && canMove"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iput-boolean v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->canActMove:Z

    .line 382
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$200(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 383
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$200(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;->onZoomStart()V

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # invokes: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->removeDestoryMsg()V
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$800(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)V

    goto :goto_0

    .line 387
    :cond_3
    const-string v0, "ZoomBarCanver"

    const-string/jumbo v1, "onTouchEvent() --- down : && \uff01canMove"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->canActMove:Z

    goto :goto_0

    .line 392
    :pswitch_1
    const-string v0, "ZoomBarCanver"

    const-string/jumbo v1, "onTouchEvent() ---- up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->canActMove:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mDownPointerX:I

    iget v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mTouchPointerX:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v2, :cond_4

    .line 396
    const-string v0, "ZoomBarCanver"

    const-string/jumbo v1, "onTouchEvent() ---- up : do MOVE and return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$200(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$200(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;->onZoomEnd()V

    goto/16 :goto_0

    .line 404
    :cond_4
    iget v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mDownPointerX:I

    iget v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mTouchPointerX:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v2, :cond_5

    .line 405
    const-string v0, "ZoomBarCanver"

    const-string/jumbo v1, "onTouchEvent() ---- up : not same position as DOWN and return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$200(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$200(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;->onZoomEnd()V

    goto/16 :goto_0

    .line 413
    :cond_5
    iget v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mTouchPointerX:I

    const/16 v1, 0x39

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->inIndicator(II)Z

    move-result v0

    if-nez v0, :cond_6

    .line 414
    const-string v0, "ZoomBarCanver"

    const-string/jumbo v1, "onTouchEvent() ---- up : not in indicator and return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 420
    :cond_6
    iget v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mTouchPointerX:I

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mScreenWidth:I
    invoke-static {v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$900(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v1

    add-int/lit16 v1, v1, -0x82

    add-int/lit8 v1, v1, 0x39

    if-ge v0, v1, :cond_7

    iget v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mTouchPointerX:I

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mScreenWidth:I
    invoke-static {v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$900(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I

    move-result v1

    add-int/lit16 v1, v1, -0x82

    add-int/lit8 v1, v1, -0x5f

    if-le v0, v1, :cond_7

    .line 422
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->zoomAddOnWay()V

    .line 434
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$200(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$200(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;->onZoomEnd()V

    goto/16 :goto_0

    .line 423
    :cond_7
    iget v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mTouchPointerX:I

    const/16 v1, 0x49

    if-le v0, v1, :cond_8

    iget v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mTouchPointerX:I

    const/16 v1, 0xe1

    if-ge v0, v1, :cond_8

    .line 425
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->zoomReduceOnWay()V

    goto :goto_1

    .line 427
    :cond_8
    const-string v0, "ZoomBarCanver"

    const-string/jumbo v1, "up in bar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    iget v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mTouchPointerX:I

    # setter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarPos:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$302(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;I)I

    .line 429
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->resetSlideBarPos()V

    .line 430
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->invalidate()V

    .line 431
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomNumberView:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$400(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;->invalidate()V

    .line 432
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->onZoomChanged()V

    goto :goto_1

    .line 439
    :pswitch_2
    const-string v0, "ZoomBarCanver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTouchEvent() ---- move : canMove = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->canActMove:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->canActMove:Z

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # invokes: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->removeDestoryMsg()V
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$800(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)V

    .line 442
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    iget v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mTouchPointerX:I

    # setter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarPos:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$302(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;I)I

    .line 443
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->resetSlideBarPos()V

    .line 444
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->invalidate()V

    .line 445
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    # getter for: Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomNumberView:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->access$400(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;->invalidate()V

    .line 446
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->onZoomChanged()V

    goto/16 :goto_0

    .line 375
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
    .line 360
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 361
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 362
    return-void
.end method
