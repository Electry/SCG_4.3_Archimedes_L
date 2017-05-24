.class public Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;
.super Ljava/lang/Object;
.source "LocalTimeSlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Layout"
.end annotation


# instance fields
.field private mContentLength:I

.field private mHeight:I

.field private mHorizontalPadding:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;

.field private mScrollPosition:I

.field private mSlotCount:I

.field private mSlotGap:I

.field private mSlotHeight:I

.field private mSlotWidth:I

.field private mSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;

.field private mUnitCount:I

.field private mVerticalPadding:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;

.field private mVisibleEnd:I

.field private mVisibleStart:I

.field private mWidth:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 848
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 874
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;-><init>(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mVerticalPadding:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;

    .line 876
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;-><init>(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mHorizontalPadding:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;

    return-void
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    .prologue
    .line 848
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotWidth:I

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    .prologue
    .line 848
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    .prologue
    .line 848
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    .prologue
    .line 848
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mVisibleEnd:I

    return v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    .prologue
    .line 848
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mVisibleStart:I

    return v0
.end method

.method private initLayoutParameters()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1011
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;->slotWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1012
    iput v7, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotGap:I

    .line 1013
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;->slotWidth:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotWidth:I

    .line 1014
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;->slotHeight:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotHeight:I

    .line 1022
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1600(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1600(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotWidth:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotHeight:I

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;->onSlotSizeChanged(II)V

    .line 1026
    :cond_0
    const/4 v0, 0x2

    new-array v5, v0, [I

    .line 1027
    .local v5, "padding":[I
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mHeight:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mWidth:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotHeight:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotWidth:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->initLayoutParameters(IIII[I)V

    .line 1028
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mVerticalPadding:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;

    aget v1, v5, v8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;->startAnimateTo(I)V

    .line 1029
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mHorizontalPadding:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;

    aget v1, v5, v7

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;->startAnimateTo(I)V

    .line 1030
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->updateVisibleRange()V

    .line 1031
    return-void

    .line 1016
    .end local v5    # "padding":[I
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mWidth:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mHeight:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;

    iget v6, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;->rowsLand:I

    .line 1017
    .local v6, "rows":I
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;->slotGap:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotGap:I

    .line 1018
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mWidth:I

    add-int/lit8 v1, v6, -0x1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotGap:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/2addr v0, v6

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotHeight:I

    .line 1019
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotHeight:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotWidth:I

    goto :goto_0

    .line 1016
    .end local v6    # "rows":I
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;

    iget v6, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;->rowsPort:I

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
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 979
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotGap:I

    add-int/2addr v5, p2

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotGap:I

    add-int/2addr v6, p4

    div-int v3, v5, v6

    .line 980
    .local v3, "unitCount":I
    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 981
    :cond_0
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mUnitCount:I

    .line 984
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mUnitCount:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotCount:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 985
    .local v0, "availableUnits":I
    mul-int v5, v0, p4

    add-int/lit8 v6, v0, -0x1

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotGap:I

    mul-int/2addr v6, v7

    add-int v4, v5, v6

    .line 986
    .local v4, "usedMinorLength":I
    sub-int v5, p2, v4

    div-int/lit8 v5, v5, 0x2

    aput v5, p5, v8

    .line 991
    const/4 v1, 0x0

    .line 992
    .local v1, "bottomMenuBarHeight":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mGalleryActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$000(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    instance-of v5, v5, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    if-eqz v5, :cond_1

    .line 993
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mGalleryActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$000(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getBottomMenuBarHeight()I

    move-result v1

    .line 995
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 996
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    .line 997
    .local v2, "lastNode":Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->getY()I

    move-result v5

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mContentLength:I

    .line 1002
    .end local v2    # "lastNode":Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;
    :goto_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1500(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1400(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->getScrollLimit()I

    move-result v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1400(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1400(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->getHeight()I

    move-result v8

    sub-int/2addr v8, v1

    invoke-virtual {v5, v6, v7, v8}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->init(III)V

    .line 1006
    aput v9, p5, v9

    .line 1007
    return-void

    .line 999
    :cond_2
    iput v8, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mContentLength:I

    goto :goto_0
.end method

.method private setVisibleContentRange(II)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v3, 0x0

    .line 1054
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mVisibleStart:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mVisibleEnd:I

    if-ne p2, v2, :cond_0

    .line 1073
    :goto_0
    return-void

    .line 1055
    :cond_0
    if-ge p1, p2, :cond_2

    .line 1056
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mVisibleStart:I

    .line 1057
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mVisibleEnd:I

    .line 1061
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1600(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1062
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mVisibleEnd:I

    if-lez v2, :cond_3

    .line 1065
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mVisibleStart:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->getContent()Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Content;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;->getIndex()I

    move-result v1

    .line 1066
    .local v1, "startIndex":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mVisibleEnd:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->getContent()Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Content;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;->getIndex()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 1067
    .local v0, "endIndex":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1600(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;->onVisibleRangeChanged(II)V

    .line 1072
    .end local v0    # "endIndex":I
    .end local v1    # "startIndex":I
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mVisibleStart:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mVisibleEnd:I

    # invokes: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->updateAnimatoionNodeList(II)V
    invoke-static {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1900(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;II)V

    goto :goto_0

    .line 1059
    :cond_2
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mVisibleEnd:I

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mVisibleStart:I

    goto :goto_1

    .line 1069
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1600(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;

    move-result-object v2

    invoke-interface {v2, v3, v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SlotRenderer;->onVisibleRangeChanged(II)V

    goto :goto_2
.end method

.method private updateVisibleRange()V
    .locals 7

    .prologue
    .line 1046
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mScrollPosition:I

    .line 1047
    .local v1, "position":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotHeight:I

    sub-int v4, v1, v4

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotGap:I

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    # invokes: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->getStartNodeIndex(I)I
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1700(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;I)I

    move-result v2

    .line 1049
    .local v2, "start":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mHeight:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotHeight:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    # invokes: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->getEndNodeIndex(I)I
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1800(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;I)I

    move-result v0

    .line 1050
    .local v0, "end":I
    invoke-direct {p0, v2, v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->setVisibleContentRange(II)V

    .line 1051
    return-void
.end method


# virtual methods
.method public advanceAnimation(J)Z
    .locals 3
    .param p1, "animTime"    # J

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mVerticalPadding:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;->calculate(J)Z

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mHorizontalPadding:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;

    invoke-virtual {v1, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;->calculate(J)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getGridAbsRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "gridIndex"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 929
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 930
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->getType()Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node$Type;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node$Type;->ALBUM_SET_GRID_NODE:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node$Type;

    if-ne v1, v2, :cond_1

    .line 931
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_1

    .line 932
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    iget v2, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mX:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    iget v3, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mY:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    iget v4, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mX:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mWidth:I

    add-int/2addr v4, v1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    iget v5, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mY:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mHeight:I

    add-int/2addr v1, v5

    invoke-virtual {p2, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 937
    :cond_0
    return-object p2

    .line 929
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getGridRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "gridIndex"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 915
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 916
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->getType()Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node$Type;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node$Type;->ALBUM_SET_GRID_NODE:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node$Type;

    if-ne v1, v2, :cond_1

    .line 917
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_1

    .line 919
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    iget v2, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mX:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mY:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScrollY:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1200(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)I

    move-result v3

    sub-int v3, v1, v3

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    iget v4, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mX:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mWidth:I

    add-int/2addr v4, v1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mY:I

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mScrollY:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1300(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)I

    move-result v5

    sub-int v5, v1, v5

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mHeight:I

    add-int/2addr v1, v5

    invoke-virtual {p2, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 925
    :cond_0
    return-object p2

    .line 915
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 957
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mHeight:I

    return v0
.end method

.method public getScrollLimit()I
    .locals 3

    .prologue
    .line 1128
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mContentLength:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mHeight:I

    sub-int v0, v1, v2

    .line 1129
    .local v0, "limit":I
    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .end local v0    # "limit":I
    :cond_0
    return v0
.end method

.method public getSlotGap()I
    .locals 1

    .prologue
    .line 949
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotGap:I

    return v0
.end method

.method public getSlotHeight()I
    .locals 1

    .prologue
    .line 945
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotHeight:I

    return v0
.end method

.method public getSlotIndexByPosition(FF)I
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, -0x1

    .line 1100
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/lit8 v0, v3, 0x0

    .line 1101
    .local v0, "absoluteX":I
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mScrollPosition:I

    add-int v1, v3, v5

    .line 1109
    .local v1, "absoluteY":I
    if-ltz v0, :cond_0

    if-gez v1, :cond_1

    :cond_0
    move v3, v4

    .line 1124
    :goto_0
    return v3

    .line 1113
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1114
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    iget v3, v3, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mY:I

    if-gt v3, v1, :cond_3

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    iget v5, v3, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mY:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    iget v3, v3, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mHeight:I

    add-int/2addr v3, v5

    if-le v3, v1, :cond_3

    .line 1115
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    iget v3, v3, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mX:I

    if-gt v3, v0, :cond_3

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    iget v5, v3, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mX:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    iget v3, v3, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->mWidth:I

    add-int/2addr v3, v5

    if-le v3, v0, :cond_3

    .line 1116
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->getType()Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node$Type;

    move-result-object v3

    sget-object v5, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node$Type;->ALBUM_SET_GRID_NODE:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node$Type;

    if-ne v3, v5, :cond_2

    .line 1117
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->getContent()Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Content;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;->getIndex()I

    move-result v3

    goto/16 :goto_0

    :cond_2
    move v3, v4

    .line 1119
    goto/16 :goto_0

    .line 1113
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_4
    move v3, v4

    .line 1124
    goto/16 :goto_0
.end method

.method public getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2
    .param p1, "index"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 906
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 907
    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 911
    :goto_0
    return-object p2

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->getRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getSlotSpec()Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;

    return-object v0
.end method

.method public getSlotWidth()I
    .locals 1

    .prologue
    .line 941
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotWidth:I

    return v0
.end method

.method public getUnitCount()I
    .locals 1

    .prologue
    .line 961
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mUnitCount:I

    return v0
.end method

.method public getVisibleDataEnd()I
    .locals 2

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mVisibleEnd:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mVisibleEnd:I

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mVisibleEnd:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->getContent()Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Content;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;->getIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1095
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVisibleDataStart()I
    .locals 2

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mVisibleStart:I

    if-le v0, v1, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->mList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mVisibleStart:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Node;->getContent()Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/Content;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/AlbumSetContent;->getIndex()I

    move-result v0

    .line 1087
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVisibleEnd()I
    .locals 1

    .prologue
    .line 1080
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mVisibleEnd:I

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .prologue
    .line 1076
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mVisibleStart:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 953
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mWidth:I

    return v0
.end method

.method public setScrollPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1040
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mScrollPosition:I

    if-ne v0, p1, :cond_0

    .line 1043
    :goto_0
    return-void

    .line 1041
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mScrollPosition:I

    .line 1042
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->updateVisibleRange()V

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1034
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mWidth:I

    .line 1035
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mHeight:I

    .line 1036
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->initLayoutParameters()V

    .line 1037
    return-void
.end method

.method public setSlotCount(I)Z
    .locals 4
    .param p1, "slotCount"    # I

    .prologue
    const/4 v2, 0x1

    .line 888
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotCount:I

    if-eqz v3, :cond_0

    .line 889
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mHorizontalPadding:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;->setEnabled(Z)V

    .line 890
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mVerticalPadding:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;->setEnabled(Z)V

    .line 892
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSlotCount:I

    .line 893
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mHorizontalPadding:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;->getTarget()I

    move-result v0

    .line 894
    .local v0, "hPadding":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mVerticalPadding:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;->getTarget()I

    move-result v1

    .line 895
    .local v1, "vPadding":I
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->initLayoutParameters()V

    .line 896
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mVerticalPadding:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;->getTarget()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mHorizontalPadding:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$IntegerAnimation;->getTarget()I

    move-result v3

    if-eq v0, v3, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setSlotSpec(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;)V
    .locals 0
    .param p1, "spec"    # Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;

    .prologue
    .line 879
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$Spec;

    .line 880
    return-void
.end method
