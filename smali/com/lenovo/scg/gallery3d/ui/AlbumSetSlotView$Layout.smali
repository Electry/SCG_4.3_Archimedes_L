.class public Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;
.super Ljava/lang/Object;
.source "AlbumSetSlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Layout"
.end annotation


# instance fields
.field private mBgAndSlotGap:I

.field private mContentLength:I

.field private mHeight:I

.field private mHorizontalPadding:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$IntegerAnimation;

.field private mScrollPosition:I

.field private mSlotCount:I

.field private mSlotGap:I

.field private mSlotHeight:I

.field private mSlotWidth:I

.field private mSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;

.field private mUnitCount:I

.field private mVerticalPadding:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$IntegerAnimation;

.field private mVisibleEnd:I

.field private mVisibleStart:I

.field private mWidth:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 600
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$IntegerAnimation;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$IntegerAnimation;-><init>(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mVerticalPadding:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$IntegerAnimation;

    .line 630
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$IntegerAnimation;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$IntegerAnimation;-><init>(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mHorizontalPadding:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$IntegerAnimation;

    return-void
.end method

.method static synthetic access$102(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;
    .param p1, "x1"    # I

    .prologue
    .line 600
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotGap:I

    return p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    .prologue
    .line 600
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    .prologue
    .line 600
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mVisibleEnd:I

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    .prologue
    .line 600
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mVisibleStart:I

    return v0
.end method

.method private initLayoutParameters()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 736
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;->slotWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 737
    iput v7, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotGap:I

    .line 738
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;->slotWidth:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotWidth:I

    .line 739
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;->slotHeight:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotHeight:I

    .line 760
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$700(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$700(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mUnitWidth:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$1400(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mUnitHeight:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$900(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->onSlotSizeChanged(II)V

    .line 765
    :cond_0
    const/4 v0, 0x2

    new-array v5, v0, [I

    .line 771
    .local v5, "padding":[I
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mHeight:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mWidth:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotHeight:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotWidth:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->initLayoutParameters(IIII[I)V

    .line 772
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mVerticalPadding:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$IntegerAnimation;

    aget v1, v5, v8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$IntegerAnimation;->startAnimateTo(I)V

    .line 773
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mHorizontalPadding:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$IntegerAnimation;

    aget v1, v5, v7

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$IntegerAnimation;->startAnimateTo(I)V

    .line 775
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->updateVisibleSlotRange()V

    .line 776
    return-void

    .line 741
    .end local v5    # "padding":[I
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mWidth:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mHeight:I

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;

    iget v6, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;->rowsLand:I

    .line 743
    .local v6, "rows":I
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 744
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$1300(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090473

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotGap:I

    .line 749
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mWidth:I

    add-int/lit8 v1, v6, 0x1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotGap:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/2addr v0, v6

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotWidth:I

    .line 750
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mUnitHeight:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$900(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotHeight:I

    goto :goto_0

    .line 741
    .end local v6    # "rows":I
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;

    iget v6, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;->rowsPort:I

    goto :goto_1
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

    .line 691
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotGap:I

    add-int/2addr v4, p2

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotGap:I

    add-int/2addr v5, p4

    div-int v2, v4, v5

    .line 692
    .local v2, "unitCount":I
    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 693
    :cond_0
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mUnitCount:I

    .line 696
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mUnitCount:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotCount:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 697
    .local v0, "availableUnits":I
    mul-int v4, v0, p4

    add-int/lit8 v5, v0, -0x1

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotGap:I

    mul-int/2addr v5, v6

    add-int v3, v4, v5

    .line 698
    .local v3, "usedMinorLength":I
    sub-int v4, p2, v3

    div-int/lit8 v4, v4, 0x2

    aput v4, p5, v9

    .line 701
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotCount:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mUnitCount:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mUnitCount:I

    div-int v1, v4, v5

    .line 709
    .local v1, "count":I
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotCount:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mUnitCount:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mUnitCount:I

    div-int/2addr v4, v5

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mUnitHeight:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$900(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)I

    move-result v5

    mul-int/2addr v4, v5

    add-int/lit8 v5, v1, 0x1

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotGap:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$1000(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getBottomMenuBarHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$700(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v5

    iget v5, v5, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudBgTextureHeight:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mPaddings:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$600(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mBgPadding:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$800(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mContentLength:I

    .line 720
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$1200(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->getScrollLimit()I

    move-result v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    move-result-object v6

    iget v6, v6, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mWidth:I

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;

    move-result-object v7

    iget v7, v7, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mHeight:I

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$1000(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getBottomMenuBarHeight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->init(III)V

    .line 729
    const/4 v4, 0x1

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mContentLength:I

    sub-int v5, p1, v5

    div-int/lit8 v5, v5, 0x2

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    aput v5, p5, v4

    .line 732
    return-void
.end method

.method private setVisibleRange(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 811
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mVisibleStart:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mVisibleEnd:I

    if-ne p2, v0, :cond_1

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 812
    :cond_1
    if-ge p1, p2, :cond_2

    .line 813
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mVisibleStart:I

    .line 814
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mVisibleEnd:I

    .line 818
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$700(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$700(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mVisibleStart:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mVisibleEnd:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->onVisibleRangeChanged(II)V

    goto :goto_0

    .line 816
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mVisibleEnd:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mVisibleStart:I

    goto :goto_1
.end method

.method private updateVisibleSlotRange()V
    .locals 8

    .prologue
    .line 785
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mScrollPosition:I

    .line 794
    .local v2, "position":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$700(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v5

    iget v5, v5, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudBgTextureHeight:I

    sub-int v5, v2, v5

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotHeight:I

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mBgAndSlotGap:I

    add-int/2addr v6, v7

    div-int/2addr v5, v6

    add-int/lit8 v4, v5, -0x1

    .line 795
    .local v4, "startRow":I
    const/4 v5, 0x0

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mUnitCount:I

    mul-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 796
    .local v3, "start":I
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mHeight:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mBgAndSlotGap:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotHeight:I

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mBgAndSlotGap:I

    add-int/2addr v6, v7

    div-int v1, v5, v6

    .line 797
    .local v1, "endRow":I
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotCount:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mUnitCount:I

    mul-int/2addr v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 799
    .local v0, "end":I
    const-string/jumbo v5, "wwf5"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "start = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " end = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-direct {p0, v3, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->setVisibleRange(II)V

    .line 802
    return-void
.end method


# virtual methods
.method public advanceAnimation(J)Z
    .locals 3
    .param p1, "animTime"    # J

    .prologue
    .line 889
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mVerticalPadding:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$IntegerAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$IntegerAnimation;->calculate(J)Z

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mHorizontalPadding:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$IntegerAnimation;

    invoke-virtual {v1, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$IntegerAnimation;->calculate(J)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getScrollLimit()I
    .locals 3

    .prologue
    .line 883
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mContentLength:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mHeight:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mPaddings:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$600(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)I

    move-result v2

    sub-int v0, v1, v2

    .line 884
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
    .line 673
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotHeight:I

    return v0
.end method

.method public getSlotIndexByPosition(FF)I
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v5, -0x1

    .line 841
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/lit8 v0, v6, 0x0

    .line 842
    .local v0, "absoluteX":I
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mScrollPosition:I

    add-int v1, v6, v7

    .line 846
    .local v1, "absoluteY":I
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mPaddings:I
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$600(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)I

    move-result v6

    sub-int/2addr v0, v6

    .line 848
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mPaddings:I
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$600(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)I

    move-result v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$700(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v7

    iget v7, v7, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudBgTextureHeight:I

    add-int/2addr v6, v7

    sub-int/2addr v1, v6

    .line 851
    if-ltz v0, :cond_0

    if-gez v1, :cond_1

    .line 878
    :cond_0
    :goto_0
    return v5

    .line 855
    :cond_1
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotWidth:I

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    div-int v2, v0, v6

    .line 856
    .local v2, "columnIdx":I
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotHeight:I

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mBgAndSlotGap:I

    add-int/2addr v6, v7

    div-int v4, v1, v6

    .line 858
    .local v4, "rowIdx":I
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mUnitCount:I

    if-ge v2, v6, :cond_0

    .line 866
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotWidth:I

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    rem-int v6, v0, v6

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotWidth:I

    if-ge v6, v7, :cond_0

    .line 870
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotHeight:I

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mBgAndSlotGap:I

    add-int/2addr v6, v7

    rem-int v6, v1, v6

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotHeight:I

    if-ge v6, v7, :cond_0

    .line 874
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mUnitCount:I

    mul-int/2addr v6, v4

    add-int v3, v6, v2

    .line 878
    .local v3, "index":I
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotCount:I

    if-ge v3, v6, :cond_0

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$700(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->checkSync(II)I

    move-result v5

    goto :goto_0
.end method

.method public getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "index"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 655
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mUnitCount:I

    div-int v1, p1, v4

    .line 656
    .local v1, "row":I
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mUnitCount:I

    mul-int/2addr v4, v1

    sub-int v0, p1, v4

    .line 659
    .local v0, "col":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mPaddings:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$600(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)I

    move-result v4

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotWidth:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v0

    add-int v2, v4, v5

    .line 661
    .local v2, "x":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$700(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v4

    iget v4, v4, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudBgTextureHeight:I

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mPaddings:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$600(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotHeight:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mBgAndSlotGap:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v1

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mBgPadding:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$800(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)I

    move-result v5

    add-int v3, v4, v5

    .line 664
    .local v3, "y":I
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotWidth:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotHeight:I

    add-int/2addr v5, v3

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 665
    return-object p2
.end method

.method public getSlotWidth()I
    .locals 1

    .prologue
    .line 669
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotWidth:I

    return v0
.end method

.method public getVisibleEnd()I
    .locals 1

    .prologue
    .line 828
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mVisibleEnd:I

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .prologue
    .line 824
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mVisibleStart:I

    return v0
.end method

.method public isPressCloud(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 833
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/lit8 v0, v2, 0x0

    .line 834
    .local v0, "absoluteX":I
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mScrollPosition:I

    add-int v1, v2, v3

    .line 835
    .local v1, "absoluteY":I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isCloudSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$700(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v2

    iget v2, v2, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureX:I

    if-lt v0, v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$700(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v2

    iget v2, v2, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureX:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$700(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v3

    iget v3, v3, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureWidth:I

    add-int/2addr v2, v3

    if-gt v0, v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$700(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v2

    iget v2, v2, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureY:I

    if-lt v1, v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$700(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v2

    iget v2, v2, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureY:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->access$700(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v3

    iget v3, v3, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mCloudTextureHeight:I

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setScrollPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 805
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mScrollPosition:I

    if-ne v0, p1, :cond_0

    .line 808
    :goto_0
    return-void

    .line 806
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mScrollPosition:I

    .line 807
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->updateVisibleSlotRange()V

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 779
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mWidth:I

    .line 780
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mHeight:I

    .line 781
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->initLayoutParameters()V

    .line 782
    return-void
.end method

.method public setSlotCount(I)Z
    .locals 5
    .param p1, "slotCount"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 637
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotCount:I

    if-ne p1, v4, :cond_1

    .line 646
    :cond_0
    :goto_0
    return v2

    .line 638
    :cond_1
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotCount:I

    if-eqz v4, :cond_2

    .line 639
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mHorizontalPadding:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$IntegerAnimation;

    invoke-virtual {v4, v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$IntegerAnimation;->setEnabled(Z)V

    .line 640
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mVerticalPadding:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$IntegerAnimation;

    invoke-virtual {v4, v3}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$IntegerAnimation;->setEnabled(Z)V

    .line 642
    :cond_2
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSlotCount:I

    .line 643
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mHorizontalPadding:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$IntegerAnimation;->getTarget()I

    move-result v0

    .line 644
    .local v0, "hPadding":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mVerticalPadding:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$IntegerAnimation;->getTarget()I

    move-result v1

    .line 645
    .local v1, "vPadding":I
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->initLayoutParameters()V

    .line 646
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mVerticalPadding:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$IntegerAnimation;->getTarget()I

    move-result v4

    if-ne v1, v4, :cond_3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mHorizontalPadding:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$IntegerAnimation;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$IntegerAnimation;->getTarget()I

    move-result v4

    if-eq v0, v4, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public setSlotSpec(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;)V
    .locals 0
    .param p1, "spec"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;

    .prologue
    .line 633
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$Spec;

    .line 634
    return-void
.end method
