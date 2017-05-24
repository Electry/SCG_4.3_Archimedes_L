.class public Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;
.super Ljava/lang/Object;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Layout"
.end annotation


# instance fields
.field private mContentLength:I

.field private mHeight:I

.field private mHorizontalPadding:Lcom/lenovo/scg/gallery3d/ui/SlotView$IntegerAnimation;

.field private mScrollPosition:I

.field private mSlotCount:I

.field private mSlotGap:I

.field private mSlotHeight:I

.field private mSlotWidth:I

.field private mSpec:Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;

.field private mUnitCount:I

.field private mVerticalPadding:Lcom/lenovo/scg/gallery3d/ui/SlotView$IntegerAnimation;

.field private mVisibleEnd:I

.field private mVisibleStart:I

.field private mWidth:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/SlotView;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/ui/SlotView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 526
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SlotView$IntegerAnimation;-><init>(Lcom/lenovo/scg/gallery3d/ui/SlotView$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/lenovo/scg/gallery3d/ui/SlotView$IntegerAnimation;

    .line 554
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SlotView$IntegerAnimation;-><init>(Lcom/lenovo/scg/gallery3d/ui/SlotView$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/lenovo/scg/gallery3d/ui/SlotView$IntegerAnimation;

    return-void
.end method

.method static synthetic access$102(Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;
    .param p1, "x1"    # I

    .prologue
    .line 526
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    .prologue
    .line 526
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    .prologue
    .line 526
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    .prologue
    .line 526
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    .prologue
    .line 526
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    .prologue
    .line 526
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    return v0
.end method

.method private initLayoutParameters()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 666
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;->slotWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 667
    iput v7, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    .line 668
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;->slotWidth:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    .line 669
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;->slotHeight:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    .line 693
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->access$1200(Lcom/lenovo/scg/gallery3d/ui/SlotView;)Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->access$1200(Lcom/lenovo/scg/gallery3d/ui/SlotView;)Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;->onSlotSizeChanged(II)V

    .line 697
    :cond_0
    const/4 v0, 0x2

    new-array v5, v0, [I

    .line 708
    .local v5, "padding":[I
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mHeight:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mWidth:I

    if-eqz v0, :cond_1

    .line 709
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mHeight:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mWidth:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->initLayoutParameters(IIII[I)V

    .line 710
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/lenovo/scg/gallery3d/ui/SlotView$IntegerAnimation;

    const/4 v1, 0x1

    aget v1, v5, v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SlotView$IntegerAnimation;->startAnimateTo(I)V

    .line 711
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/lenovo/scg/gallery3d/ui/SlotView$IntegerAnimation;

    aget v1, v5, v7

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SlotView$IntegerAnimation;->startAnimateTo(I)V

    .line 715
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->updateVisibleSlotRange()V

    .line 716
    return-void

    .line 671
    .end local v5    # "padding":[I
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mWidth:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mHeight:I

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;

    iget v6, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;->rowsLand:I

    .line 672
    .local v6, "rows":I
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;->slotGap:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    .line 673
    const-string v0, "hwj"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSlotGap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mWidth:I

    if-nez v0, :cond_4

    .line 682
    iput v7, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    .line 690
    :goto_2
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    goto :goto_0

    .line 671
    .end local v6    # "rows":I
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;

    iget v6, v0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;->rowsPort:I

    goto :goto_1

    .line 686
    .restart local v6    # "rows":I
    :cond_4
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mWidth:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SlotView;->mWidthPadding:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->access$800(Lcom/lenovo/scg/gallery3d/ui/SlotView;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;->slotGap:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    goto :goto_2
.end method

.method private initLayoutParameters(IIII[I)V
    .locals 10
    .param p1, "majorLength"    # I
    .param p2, "minorLength"    # I
    .param p3, "majorUnitSize"    # I
    .param p4, "minorUnitSize"    # I
    .param p5, "padding"    # [I

    .prologue
    const/4 v9, 0x0

    .line 630
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v4, p2

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v5, p4

    div-int v2, v4, v5

    .line 631
    .local v2, "unitCount":I
    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 632
    :cond_0
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    .line 635
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 636
    .local v0, "availableUnits":I
    mul-int v4, v0, p4

    add-int/lit8 v5, v0, -0x1

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    mul-int/2addr v5, v6

    add-int v3, v4, v5

    .line 637
    .local v3, "usedMinorLength":I
    sub-int v4, p2, v3

    div-int/lit8 v4, v4, 0x2

    aput v4, p5, v9

    .line 640
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    div-int v1, v4, v5

    .line 644
    .local v1, "count":I
    mul-int v4, v1, p3

    add-int/lit8 v5, v1, 0x1

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;

    iget v5, v5, Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;->bottomMenuBarHeight:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SlotView;->mPadding:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->access$900(Lcom/lenovo/scg/gallery3d/ui/SlotView;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mContentLength:I

    .line 650
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SlotView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/SlotView;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->access$1000(Lcom/lenovo/scg/gallery3d/ui/SlotView;)Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->access$1000(Lcom/lenovo/scg/gallery3d/ui/SlotView;)Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    move-result-object v6

    iget v6, v6, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mWidth:I

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->access$1000(Lcom/lenovo/scg/gallery3d/ui/SlotView;)Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;

    move-result-object v7

    iget v7, v7, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mHeight:I

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;

    iget v8, v8, Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;->bottomMenuBarHeight:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->init(III)V

    .line 659
    const/4 v4, 0x1

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mContentLength:I

    sub-int v5, p1, v5

    div-int/lit8 v5, v5, 0x2

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    aput v5, p5, v4

    .line 662
    return-void
.end method

.method private setVisibleRange(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 750
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    if-ne p2, v0, :cond_1

    .line 760
    :cond_0
    :goto_0
    return-void

    .line 751
    :cond_1
    if-ge p1, p2, :cond_2

    .line 752
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    .line 753
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    .line 757
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->access$1200(Lcom/lenovo/scg/gallery3d/ui/SlotView;)Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->access$1200(Lcom/lenovo/scg/gallery3d/ui/SlotView;)Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SlotView$SlotRenderer;->onVisibleRangeChanged(II)V

    goto :goto_0

    .line 755
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    goto :goto_1
.end method

.method private updateVisibleSlotRange()V
    .locals 8

    .prologue
    .line 725
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mScrollPosition:I

    .line 734
    .local v2, "position":I
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    div-int v5, v2, v5

    add-int/lit8 v4, v5, -0x1

    .line 735
    .local v4, "startRow":I
    const/4 v5, 0x0

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 736
    .local v3, "start":I
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mHeight:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    div-int v1, v5, v6

    .line 737
    .local v1, "endRow":I
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 739
    .local v0, "end":I
    invoke-direct {p0, v3, v0}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->setVisibleRange(II)V

    .line 741
    return-void
.end method


# virtual methods
.method public advanceAnimation(J)Z
    .locals 3
    .param p1, "animTime"    # J

    .prologue
    .line 815
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/lenovo/scg/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/SlotView$IntegerAnimation;->calculate(J)Z

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/lenovo/scg/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v1, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/SlotView$IntegerAnimation;->calculate(J)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getScrollLimit()I
    .locals 3

    .prologue
    .line 809
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mContentLength:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mHeight:I

    sub-int v0, v1, v2

    .line 810
    .local v0, "limit":I
    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .end local v0    # "limit":I
    :cond_0
    return v0
.end method

.method public getSlotHeight()I
    .locals 1

    .prologue
    .line 612
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    return v0
.end method

.method public getSlotIndexByPosition(FF)I
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v5, -0x1

    .line 771
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/lit8 v0, v6, 0x0

    .line 772
    .local v0, "absoluteX":I
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mScrollPosition:I

    add-int v1, v6, v7

    .line 777
    .local v1, "absoluteY":I
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    sub-int/2addr v0, v6

    .line 778
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    sub-int/2addr v1, v6

    .line 780
    if-ltz v0, :cond_0

    if-gez v1, :cond_1

    .line 805
    :cond_0
    :goto_0
    return v5

    .line 784
    :cond_1
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    div-int v2, v0, v6

    .line 785
    .local v2, "columnIdx":I
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    div-int v4, v1, v6

    .line 787
    .local v4, "rowIdx":I
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    if-ge v2, v6, :cond_0

    .line 795
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    rem-int v6, v0, v6

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    if-ge v6, v7, :cond_0

    .line 799
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    rem-int v6, v1, v6

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    if-ge v6, v7, :cond_0

    .line 803
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v6, v4

    add-int v3, v6, v2

    .line 805
    .local v3, "index":I
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    if-lt v3, v6, :cond_2

    move v3, v5

    .end local v3    # "index":I
    :cond_2
    move v5, v3

    goto :goto_0
.end method

.method public getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "index"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 594
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    div-int v1, p1, v4

    .line 595
    .local v1, "row":I
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v4, v1

    sub-int v0, p1, v4

    .line 600
    .local v0, "col":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SlotView;->mWidthPadding:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->access$800(Lcom/lenovo/scg/gallery3d/ui/SlotView;)I

    move-result v4

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v0

    add-int v2, v4, v5

    .line 602
    .local v2, "x":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/SlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SlotView;->mPadding:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/SlotView;->access$900(Lcom/lenovo/scg/gallery3d/ui/SlotView;)I

    move-result v4

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v1

    add-int v3, v4, v5

    .line 603
    .local v3, "y":I
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    add-int/2addr v5, v3

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 604
    return-object p2
.end method

.method public getSlotWidth()I
    .locals 1

    .prologue
    .line 608
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    return v0
.end method

.method public getVisibleEnd()I
    .locals 1

    .prologue
    .line 767
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .prologue
    .line 763
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    return v0
.end method

.method public setScrollPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 744
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mScrollPosition:I

    if-ne v0, p1, :cond_0

    .line 747
    :goto_0
    return-void

    .line 745
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mScrollPosition:I

    .line 746
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->updateVisibleSlotRange()V

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 719
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mWidth:I

    .line 720
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mHeight:I

    .line 721
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->initLayoutParameters()V

    .line 722
    return-void
.end method

.method public setSlotCount(I)Z
    .locals 5
    .param p1, "slotCount"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 561
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    if-ne p1, v4, :cond_1

    .line 570
    :cond_0
    :goto_0
    return v2

    .line 562
    :cond_1
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    if-eqz v4, :cond_2

    .line 563
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/lenovo/scg/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4, v3}, Lcom/lenovo/scg/gallery3d/ui/SlotView$IntegerAnimation;->setEnabled(Z)V

    .line 564
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/lenovo/scg/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4, v3}, Lcom/lenovo/scg/gallery3d/ui/SlotView$IntegerAnimation;->setEnabled(Z)V

    .line 566
    :cond_2
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    .line 567
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/lenovo/scg/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/SlotView$IntegerAnimation;->getTarget()I

    move-result v0

    .line 568
    .local v0, "hPadding":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/lenovo/scg/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/SlotView$IntegerAnimation;->getTarget()I

    move-result v1

    .line 569
    .local v1, "vPadding":I
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->initLayoutParameters()V

    .line 570
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mVerticalPadding:Lcom/lenovo/scg/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/SlotView$IntegerAnimation;->getTarget()I

    move-result v4

    if-ne v1, v4, :cond_3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:Lcom/lenovo/scg/gallery3d/ui/SlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/SlotView$IntegerAnimation;->getTarget()I

    move-result v4

    if-eq v0, v4, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public setSlotSpec(Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;)V
    .locals 0
    .param p1, "spec"    # Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;

    .prologue
    .line 557
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/SlotView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/SlotView$Spec;

    .line 558
    return-void
.end method
