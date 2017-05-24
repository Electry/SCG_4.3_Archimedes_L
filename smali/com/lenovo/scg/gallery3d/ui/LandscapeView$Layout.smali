.class public Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
.super Ljava/lang/Object;
.source "LandscapeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/LandscapeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Layout"
.end annotation


# instance fields
.field private mContentLength:I

.field private mFirstRowHeight:I

.field private mHeight:I

.field private mHorizontalPadding:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$IntegerAnimation;

.field private mNormalCol:I

.field private mNormalCount:I

.field private mNormalHeight:I

.field private mNormalWidth:I

.field private mPanoramaCol:I

.field private mPanoramaCount:I

.field private mPanoramaHeight:I

.field private mPanoramaWidth:I

.field private mScrollPositionX:I

.field private mScrollPositionY:I

.field private mSlotCount:I

.field private mSlotGap:I

.field private mSlotHeight:I

.field private mSlotWidth:I

.field private mSpec:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;

.field private mUnitCount:I

.field private mVerticalPadding:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$IntegerAnimation;

.field private mVisibleEnd:I

.field private mVisibleEnd2:I

.field private mVisibleStart:I

.field private mVisibleStart2:I

.field private mWidth:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x125

    const/4 v1, 0x0

    .line 1188
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1220
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCol:I

    .line 1222
    const/16 v0, 0x16b

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaHeight:I

    .line 1224
    const/16 v0, 0x294

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaWidth:I

    .line 1226
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    .line 1228
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCol:I

    .line 1230
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalHeight:I

    .line 1232
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalWidth:I

    .line 1234
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCount:I

    .line 1236
    const/16 v0, 0x64

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mFirstRowHeight:I

    .line 1238
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$IntegerAnimation;

    invoke-direct {v0, v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$IntegerAnimation;-><init>(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVerticalPadding:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$IntegerAnimation;

    .line 1240
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$IntegerAnimation;

    invoke-direct {v0, v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$IntegerAnimation;-><init>(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mHorizontalPadding:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$IntegerAnimation;

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    .prologue
    .line 1188
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaHeight:I

    return v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    .prologue
    .line 1188
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mWidth:I

    return v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    .param p1, "x1"    # I

    .prologue
    .line 1188
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    .prologue
    .line 1188
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    .param p1, "x1"    # Z

    .prologue
    .line 1188
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->updateContentLength(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    .prologue
    .line 1188
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->updateVisibleSlotRange()V

    return-void
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    .prologue
    .line 1188
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleEnd2:I

    return v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    .prologue
    .line 1188
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleStart2:I

    return v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    .prologue
    .line 1188
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleEnd:I

    return v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    .prologue
    .line 1188
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleStart:I

    return v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    .param p1, "x1"    # I

    .prologue
    .line 1188
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaWidth:I

    return p1
.end method

.method static synthetic access$302(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    .param p1, "x1"    # I

    .prologue
    .line 1188
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCol:I

    return p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    .prologue
    .line 1188
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mFirstRowHeight:I

    return v0
.end method

.method static synthetic access$402(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    .param p1, "x1"    # I

    .prologue
    .line 1188
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mFirstRowHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    .prologue
    .line 1188
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotWidth:I

    return v0
.end method

.method static synthetic access$5002(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    .param p1, "x1"    # I

    .prologue
    .line 1188
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mScrollPositionY:I

    return p1
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    .prologue
    .line 1188
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    .prologue
    .line 1188
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    .prologue
    .line 1188
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    .prologue
    .line 1188
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCount:I

    return v0
.end method

.method private calculateNormalIndex(I)I
    .locals 6
    .param p1, "touchPos"    # I

    .prologue
    const/4 v2, 0x0

    .line 1600
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCount:I

    if-nez v3, :cond_0

    .line 1614
    :goto_0
    return v2

    .line 1602
    :cond_0
    const/4 v1, 0x0

    .line 1604
    .local v1, "index":I
    const/4 v0, 0x0

    .line 1605
    .local v0, "curRow":I
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    if-nez v3, :cond_1

    .line 1606
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalHeight:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v3, v4

    div-int v3, p1, v3

    add-int/lit8 v0, v3, -0x1

    .line 1611
    :goto_1
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCol:I

    mul-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1613
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCount:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1614
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    add-int/2addr v2, v1

    goto :goto_0

    .line 1608
    :cond_1
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaHeight:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mFirstRowHeight:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mDividedLineH:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$1900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I

    move-result v4

    add-int/2addr v3, v4

    sub-int v3, p1, v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalHeight:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v4, v5

    div-int/2addr v3, v4

    add-int/lit8 v0, v3, -0x1

    goto :goto_1
.end method

.method private calculatePanoIndex(I)I
    .locals 5
    .param p1, "touchPos"    # I

    .prologue
    const/4 v2, 0x0

    .line 1618
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    if-nez v3, :cond_0

    move v1, v2

    .line 1626
    :goto_0
    return v1

    .line 1620
    :cond_0
    const/4 v1, 0x0

    .line 1622
    .local v1, "index":I
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaHeight:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v3, v4

    div-int v0, p1, v3

    .line 1623
    .local v0, "curRow":I
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCol:I

    mul-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1625
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1626
    goto :goto_0
.end method

.method private calculatePanoramaIndex(I)I
    .locals 5
    .param p1, "touchPos"    # I

    .prologue
    const/4 v2, 0x0

    .line 1630
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    if-nez v3, :cond_0

    move v1, v2

    .line 1636
    :goto_0
    return v1

    .line 1632
    :cond_0
    const/4 v1, 0x0

    .line 1633
    .local v1, "index":I
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaWidth:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v3, v4

    div-int v0, p1, v3

    .line 1634
    .local v0, "curRow":I
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1635
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1636
    goto :goto_0
.end method

.method private getBottomBarHeight()I
    .locals 2

    .prologue
    .line 1546
    const/4 v0, 0x0

    .line 1547
    .local v0, "bottomBarHeight":I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3300(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    if-eqz v1, :cond_0

    .line 1548
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3300(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getBottomMenuBarHeight()I

    move-result v0

    .line 1550
    :cond_0
    return v0
.end method

.method private getHorizontalPanoRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "index"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 1348
    const/4 v0, 0x0

    .line 1349
    .local v0, "col":I
    const/4 v1, 0x0

    .line 1350
    .local v1, "x":I
    const/4 v2, 0x0

    .line 1352
    .local v2, "y":I
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaWidth:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v3, v4

    mul-int v0, p1, v3

    .line 1354
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPadding:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I

    move-result v3

    add-int v1, v0, v3

    .line 1355
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mFirstRowHeight:I

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoBgTopGap:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3100(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I

    move-result v4

    add-int v2, v3, v4

    .line 1357
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaWidth:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaHeight:I

    add-int/2addr v4, v2

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1359
    return-object p2
.end method

.method private getNormalIndex(II)I
    .locals 7
    .param p1, "absoluteX"    # I
    .param p2, "absoluteY"    # I

    .prologue
    const/4 v4, 0x0

    .line 1699
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCount:I

    if-nez v5, :cond_1

    move v2, v4

    .line 1712
    :cond_0
    :goto_0
    return v2

    .line 1701
    :cond_1
    const/4 v2, 0x0

    .line 1703
    .local v2, "index":I
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalHeight:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    div-int v1, p2, v5

    .line 1704
    .local v1, "curRow":I
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalWidth:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    div-int v0, p1, v5

    .line 1706
    .local v0, "curCol":I
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1708
    .local v3, "offset":I
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCol:I

    mul-int/2addr v4, v1

    add-int v2, v4, v3

    .line 1710
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCount:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1712
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCount:I

    if-lt v2, v4, :cond_0

    const/4 v2, -0x1

    goto :goto_0
.end method

.method private getNormalRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "index"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 1363
    const/4 v0, 0x0

    .line 1364
    .local v0, "col":I
    const/4 v2, 0x0

    .line 1365
    .local v2, "row":I
    const/4 v3, 0x0

    .line 1366
    .local v3, "x":I
    const/4 v4, 0x0

    .line 1368
    .local v4, "y":I
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    sub-int v5, p1, v5

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCol:I

    div-int v2, v5, v6

    .line 1369
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    sub-int v5, p1, v5

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCol:I

    mul-int/2addr v6, v2

    sub-int v0, v5, v6

    .line 1370
    const/4 v1, 0x0

    .line 1371
    .local v1, "curH":I
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalWidth:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v0

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPadding:I
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I

    move-result v6

    add-int v3, v5, v6

    .line 1372
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    if-nez v5, :cond_0

    .line 1373
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalHeight:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v2

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPadding:I
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I

    move-result v6

    add-int v4, v5, v6

    .line 1374
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalWidth:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalHeight:I

    add-int/2addr v6, v4

    invoke-virtual {p2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1381
    :goto_0
    return-object p2

    .line 1376
    :cond_0
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalHeight:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    mul-int v4, v2, v5

    .line 1378
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mFirstRowHeight:I

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoBgHeight:I
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3200(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mDividedLineH:I
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$1900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I

    move-result v6

    add-int/2addr v5, v6

    add-int v1, v5, v4

    .line 1379
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalWidth:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalHeight:I

    add-int/2addr v6, v1

    invoke-virtual {p2, v3, v1, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private getPanoIndex(II)I
    .locals 7
    .param p1, "absoluteX"    # I
    .param p2, "absoluteY"    # I

    .prologue
    const/4 v4, 0x0

    .line 1682
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    if-nez v5, :cond_1

    move v2, v4

    .line 1695
    :cond_0
    :goto_0
    return v2

    .line 1684
    :cond_1
    const/4 v2, 0x0

    .line 1686
    .local v2, "index":I
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaHeight:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    div-int v1, p2, v5

    .line 1687
    .local v1, "curRow":I
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaWidth:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    div-int v0, p1, v5

    .line 1689
    .local v0, "curCol":I
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1691
    .local v3, "offset":I
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCol:I

    mul-int/2addr v4, v1

    add-int v2, v4, v3

    .line 1693
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1695
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    if-lt v2, v4, :cond_0

    const/4 v2, -0x1

    goto :goto_0
.end method

.method private getPanoRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "index"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 1309
    const/4 v0, 0x0

    .line 1310
    .local v0, "col":I
    const/4 v1, 0x0

    .line 1311
    .local v1, "row":I
    const/4 v2, 0x0

    .line 1312
    .local v2, "x":I
    const/4 v3, 0x0

    .line 1314
    .local v3, "y":I
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCol:I

    div-int v1, p1, v4

    .line 1315
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCol:I

    mul-int/2addr v4, v1

    sub-int v0, p1, v4

    .line 1317
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaWidth:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPadding:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I

    move-result v5

    add-int v2, v4, v5

    .line 1318
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaHeight:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v1

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPadding:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I

    move-result v5

    add-int v3, v4, v5

    .line 1319
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaWidth:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaHeight:I

    add-int/2addr v5, v3

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1321
    return-object p2
.end method

.method private getPanoRectHasBar(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "index"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 1325
    const/4 v0, 0x0

    .line 1326
    .local v0, "col":I
    const/4 v1, 0x0

    .line 1327
    .local v1, "row":I
    const/4 v2, 0x0

    .line 1328
    .local v2, "x":I
    const/4 v3, 0x0

    .line 1330
    .local v3, "y":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoViewBarHeight:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3000(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I

    move-result v5

    iput v5, v4, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mFirstRowHeight:I

    .line 1332
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCol:I

    div-int v1, p1, v4

    .line 1333
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCol:I

    mul-int/2addr v4, v1

    sub-int v0, p1, v4

    .line 1335
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaWidth:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPadding:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I

    move-result v5

    add-int v2, v4, v5

    .line 1336
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mFirstRowHeight:I

    if-le v4, v5, :cond_0

    .line 1337
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaHeight:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v1

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPadding:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I

    move-result v5

    add-int v3, v4, v5

    .line 1342
    :goto_0
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaWidth:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaHeight:I

    add-int/2addr v5, v3

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1344
    return-object p2

    .line 1339
    :cond_0
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaHeight:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v1

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mFirstRowHeight:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPadding:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I

    move-result v5

    add-int v3, v4, v5

    goto :goto_0
.end method

.method private getTopBarHeight()I
    .locals 2

    .prologue
    .line 1554
    const/4 v0, 0x0

    .line 1555
    .local v0, "topBarHeight":I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3300(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    if-eqz v1, :cond_0

    .line 1556
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3300(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getTopTabHeight()I

    move-result v0

    .line 1558
    :cond_0
    return v0
.end method

.method private initLayoutParameters()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1431
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;->slotWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1432
    iput v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    .line 1433
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;->slotWidth:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotWidth:I

    .line 1434
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;->slotHeight:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotHeight:I

    .line 1442
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3500(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1443
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3500(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotRenderer;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotWidth:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotHeight:I

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotRenderer;->onSlotSizeChanged(II)V

    .line 1446
    :cond_0
    const/4 v0, 0x2

    new-array v5, v0, [I

    .line 1457
    .local v5, "padding":[I
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mHeight:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mWidth:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotHeight:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotWidth:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->initLayoutParameters(IIII[I)V

    .line 1458
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVerticalPadding:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$IntegerAnimation;

    aget v1, v5, v8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$IntegerAnimation;->startAnimateTo(I)V

    .line 1459
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mHorizontalPadding:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$IntegerAnimation;

    aget v1, v5, v7

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$IntegerAnimation;->startAnimateTo(I)V

    .line 1460
    return-void

    .line 1436
    .end local v5    # "padding":[I
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mWidth:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mHeight:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;

    iget v6, v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;->rowsLand:I

    .line 1437
    .local v6, "rows":I
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;->slotGap:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    .line 1438
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mHeight:I

    add-int/lit8 v1, v6, -0x1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/2addr v0, v6

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotHeight:I

    .line 1439
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotHeight:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotWidth:I

    goto :goto_0

    .line 1436
    .end local v6    # "rows":I
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;

    iget v6, v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;->rowsPort:I

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

    .line 1407
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v4, p2

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v5, p4

    div-int v2, v4, v5

    .line 1408
    .local v2, "unitCount":I
    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 1409
    :cond_0
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mUnitCount:I

    .line 1412
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mUnitCount:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotCount:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1413
    .local v0, "availableUnits":I
    mul-int v4, v0, p4

    add-int/lit8 v5, v0, -0x1

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    mul-int/2addr v5, v6

    add-int v3, v4, v5

    .line 1414
    .local v3, "usedMinorLength":I
    sub-int v4, p2, v3

    div-int/lit8 v4, v4, 0x2

    aput v4, p5, v9

    .line 1415
    aput v9, p5, v9

    .line 1417
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotCount:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mUnitCount:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mUnitCount:I

    div-int v1, v4, v5

    .line 1419
    .local v1, "count":I
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaHeight:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mFirstRowHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCount:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCol:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCol:I

    div-int/2addr v5, v6

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalHeight:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mDividedLineH:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$1900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mContentLength:I

    .line 1422
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3400(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getScrollLimitY()I

    move-result v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    move-result-object v6

    iget v6, v6, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mWidth:I

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    move-result-object v7

    iget v7, v7, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mHeight:I

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3300(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getBottomMenuBarHeight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->init(III)V

    .line 1426
    const/4 v4, 0x1

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mContentLength:I

    sub-int v5, p1, v5

    div-int/lit8 v5, v5, 0x2

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput v5, p5, v4

    .line 1427
    return-void
.end method

.method private updateContentLength(Z)V
    .locals 4
    .param p1, "isPano"    # Z

    .prologue
    .line 1562
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    if-nez v0, :cond_0

    .line 1564
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCount:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCol:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCol:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalHeight:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mContentLength:I

    .line 1565
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mContentLength:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getBottomBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mContentLength:I

    .line 1568
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3400(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getScrollLimitY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->setScrollHeight(I)V

    .line 1597
    :goto_0
    return-void

    .line 1572
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCount:I

    if-nez v0, :cond_1

    .line 1574
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCol:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCol:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaHeight:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mContentLength:I

    .line 1575
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mContentLength:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getBottomBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mContentLength:I

    .line 1578
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3400(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getScrollLimitY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->setScrollHeight(I)V

    goto :goto_0

    .line 1584
    :cond_1
    if-eqz p1, :cond_2

    .line 1585
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mFirstRowHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x20

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCol:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCol:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaHeight:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mContentLength:I

    .line 1594
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3400(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getScrollLimitY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->setScrollHeight(I)V

    goto :goto_0

    .line 1588
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mFirstRowHeight:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaHeight:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mDividedLineH:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$1900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCount:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCol:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCol:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalHeight:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mContentLength:I

    .line 1590
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mContentLength:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getBottomBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mContentLength:I

    goto :goto_1
.end method

.method private updateVisibleSlotRange()V
    .locals 8

    .prologue
    .line 1493
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mHeight:I

    if-nez v4, :cond_0

    sget v4, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mHeightGL:I

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mHeight:I

    .line 1494
    :cond_0
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mWidth:I

    if-nez v4, :cond_1

    sget v4, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mWidthGL:I

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mWidth:I

    .line 1496
    :cond_1
    const/4 v2, 0x0

    .line 1497
    .local v2, "start":I
    const/4 v0, 0x0

    .line 1498
    .local v0, "end":I
    const/4 v3, 0x0

    .line 1499
    .local v3, "start2":I
    const/4 v1, 0x0

    .line 1501
    .local v1, "end2":I
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    if-nez v4, :cond_2

    .line 1502
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mScrollPositionY:I

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->calculatePanoIndex(I)I

    move-result v2

    .line 1503
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mScrollPositionY:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->calculatePanoIndex(I)I

    move-result v0

    .line 1505
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mScrollPositionY:I

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->calculateNormalIndex(I)I

    move-result v3

    .line 1506
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mScrollPositionY:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalHeight:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->calculateNormalIndex(I)I

    move-result v1

    .line 1508
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCount:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCol:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCol:I

    div-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalHeight:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    mul-int/2addr v4, v5

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mContentLength:I

    .line 1539
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3400(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getScrollLimitY()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->setScrollHeight(I)V

    .line 1542
    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->setVisibleRange(IIII)V

    .line 1543
    return-void

    .line 1509
    :cond_2
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCount:I

    if-nez v4, :cond_3

    .line 1511
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mScrollPositionY:I

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->calculatePanoIndex(I)I

    move-result v2

    .line 1512
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mScrollPositionY:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->calculatePanoIndex(I)I

    move-result v0

    .line 1514
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mScrollPositionY:I

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->calculateNormalIndex(I)I

    move-result v3

    .line 1515
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mScrollPositionY:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalHeight:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->calculateNormalIndex(I)I

    move-result v1

    .line 1517
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mFirstRowHeight:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCol:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCol:I

    div-int/2addr v5, v6

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaHeight:I

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mContentLength:I

    goto :goto_0

    .line 1518
    :cond_3
    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsShowPanoView:Z
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2700()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1519
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mScrollPositionY:I

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->calculatePanoIndex(I)I

    move-result v2

    .line 1520
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mScrollPositionY:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaHeight:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->calculatePanoIndex(I)I

    move-result v0

    .line 1522
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mScrollPositionY:I

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->calculateNormalIndex(I)I

    move-result v3

    .line 1523
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mScrollPositionY:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->calculateNormalIndex(I)I

    move-result v1

    .line 1525
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mFirstRowHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x20

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCol:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCol:I

    div-int/2addr v5, v6

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaHeight:I

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mContentLength:I

    goto/16 :goto_0

    .line 1528
    :cond_4
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mScrollPositionX:I

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPadding:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->calculatePanoramaIndex(I)I

    move-result v2

    .line 1529
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mScrollPositionX:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPadding:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->calculatePanoramaIndex(I)I

    move-result v0

    .line 1530
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mScrollPositionY:I

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->calculateNormalIndex(I)I

    move-result v3

    .line 1531
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mScrollPositionY:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalHeight:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->calculateNormalIndex(I)I

    move-result v1

    .line 1533
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mFirstRowHeight:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCount:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCol:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCol:I

    div-int/2addr v5, v6

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalHeight:I

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mDividedLineH:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$1900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mContentLength:I

    .line 1535
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mContentLength:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getBottomBarHeight()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mContentLength:I

    goto/16 :goto_0
.end method


# virtual methods
.method public advanceAnimation(J)Z
    .locals 3
    .param p1, "animTime"    # J

    .prologue
    .line 1791
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVerticalPadding:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$IntegerAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$IntegerAnimation;->calculate(J)Z

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mHorizontalPadding:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$IntegerAnimation;

    invoke-virtual {v1, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$IntegerAnimation;->calculate(J)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getScrollLimitX()I
    .locals 4

    .prologue
    .line 1774
    const/4 v0, 0x0

    .line 1776
    .local v0, "limit":I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1777
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    move-result-object v3

    iget v3, v3, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPadding:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mWidth:I

    sub-int v0, v1, v2

    .line 1780
    :cond_0
    if-gtz v0, :cond_1

    const/4 v0, 0x0

    .end local v0    # "limit":I
    :cond_1
    return v0
.end method

.method public getScrollLimitY()I
    .locals 3

    .prologue
    .line 1784
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mContentLength:I

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPadding:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mHeight:I

    sub-int v0, v1, v2

    .line 1786
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
    .line 1389
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotHeight:I

    return v0
.end method

.method public getSlotIndexByPosition(FF)I
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 1716
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1717
    .local v0, "absoluteX":I
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v10

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->WIDE:Z
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3700(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v8

    :goto_0
    add-int v1, v10, v7

    .line 1719
    .local v1, "absoluteY":I
    const/4 v2, 0x0

    .line 1721
    .local v2, "clickIndex":I
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    move-result-object v7

    iget v7, v7, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mFirstRowHeight:I

    if-ge v1, v7, :cond_2

    .line 1770
    :cond_0
    :goto_1
    return v9

    .line 1717
    .end local v1    # "absoluteY":I
    .end local v2    # "clickIndex":I
    :cond_1
    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mScrollPositionY:I

    goto :goto_0

    .line 1725
    .restart local v1    # "absoluteY":I
    .restart local v2    # "clickIndex":I
    :cond_2
    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsShowPanoView:Z
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2700()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1727
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # setter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->MAYBE_WIDE:Z
    invoke-static {v7, v8}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3802(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;Z)Z

    .line 1728
    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    sub-int/2addr v0, v7

    .line 1729
    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    iget v8, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mFirstRowHeight:I

    add-int/2addr v7, v8

    sub-int/2addr v1, v7

    .line 1731
    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    .line 1734
    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getPanoIndex(II)I

    move-result v2

    move v9, v2

    .line 1735
    goto :goto_1

    .line 1739
    :cond_3
    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    if-nez v7, :cond_4

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCount:I

    if-eqz v7, :cond_4

    .line 1740
    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getNormalIndex(II)I

    move-result v2

    move v9, v2

    .line 1741
    goto :goto_1

    .line 1742
    :cond_4
    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCount:I

    if-nez v7, :cond_5

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    if-eqz v7, :cond_5

    .line 1743
    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getPanoIndex(II)I

    move-result v2

    move v9, v2

    .line 1744
    goto :goto_1

    .line 1746
    :cond_5
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->MAYBE_WIDE:Z
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1749
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    move-result-object v7

    iget v7, v7, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mFirstRowHeight:I

    if-le v1, v7, :cond_0

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    move-result-object v7

    iget v7, v7, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mFirstRowHeight:I

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    move-result-object v8

    iget v8, v8, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaHeight:I

    add-int/2addr v7, v8

    if-ge v1, v7, :cond_0

    .line 1750
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    iget v7, v7, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollX:I

    add-int/2addr v7, v0

    iget v8, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaWidth:I

    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v8, v10

    div-int v2, v7, v8

    .line 1751
    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1753
    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    if-lt v2, v7, :cond_6

    move v7, v9

    :goto_2
    move v9, v7

    goto :goto_1

    :cond_6
    move v7, v2

    goto :goto_2

    .line 1756
    :cond_7
    const/4 v5, 0x0

    .line 1757
    .local v5, "index":I
    const/4 v4, 0x0

    .line 1758
    .local v4, "curRow":I
    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaHeight:I

    sub-int v7, v1, v7

    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    mul-int/lit8 v10, v10, 0x3

    sub-int/2addr v7, v10

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mDividedLineH:I
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$1900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I

    move-result v10

    sub-int/2addr v7, v10

    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mFirstRowHeight:I

    sub-int/2addr v7, v10

    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalHeight:I

    iget v11, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v10, v11

    div-int v4, v7, v10

    .line 1760
    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalWidth:I

    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    add-int/2addr v7, v10

    div-int v3, v0, v7

    .line 1761
    .local v3, "curCol":I
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1763
    .local v6, "offset":I
    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCol:I

    mul-int/2addr v7, v4

    add-int/2addr v7, v6

    iget v8, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    add-int v5, v7, v8

    .line 1764
    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    iget v8, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCount:I

    add-int/2addr v7, v8

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1766
    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    iget v8, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCount:I

    add-int/2addr v7, v8

    if-ge v5, v7, :cond_0

    move v9, v5

    goto/16 :goto_1
.end method

.method public getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "index"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 1291
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCount:I

    if-nez v0, :cond_0

    .line 1293
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getPanoRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1304
    :goto_0
    return-object v0

    .line 1296
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    if-ge p1, v0, :cond_2

    .line 1298
    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsShowPanoView:Z
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2700()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1299
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getPanoRectHasBar(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 1301
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getHorizontalPanoRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 1304
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getNormalRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public getSlotWidth()I
    .locals 1

    .prologue
    .line 1385
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotWidth:I

    return v0
.end method

.method public getVisibleEnd()I
    .locals 1

    .prologue
    .line 1678
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleEnd:I

    return v0
.end method

.method public getVisibleEnd2()I
    .locals 1

    .prologue
    .line 1799
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleEnd2:I

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .prologue
    .line 1674
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleStart:I

    return v0
.end method

.method public getVisibleStart2()I
    .locals 1

    .prologue
    .line 1795
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleStart2:I

    return v0
.end method

.method public setDividedLineH(I)V
    .locals 1
    .param p1, "dividedHight"    # I

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # setter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mDividedLineH:I
    invoke-static {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$1902(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;I)I

    .line 1248
    return-void
.end method

.method public setPanoInfo(II)V
    .locals 2
    .param p1, "col"    # I
    .param p2, "row"    # I

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoSpec:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2000(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;

    move-result-object v0

    iput p1, v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;->colsPort:I

    .line 1252
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoSpec:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2000(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;

    move-result-object v0

    iput p2, v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;->rowsPort:I

    .line 1253
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCol:I

    .line 1254
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mSysWidth:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2100(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mSysHeight:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2200(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->setSlotSize(II)V

    .line 1255
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->setPanoBarPos()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2300(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)V

    .line 1256
    return-void
.end method

.method public setScrollPositionX(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1662
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mScrollPositionX:I

    if-ne v0, p1, :cond_0

    .line 1665
    :goto_0
    return-void

    .line 1663
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mScrollPositionX:I

    .line 1664
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->updateVisibleSlotRange()V

    goto :goto_0
.end method

.method public setScrollPositionY(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1668
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mScrollPositionY:I

    if-ne v0, p1, :cond_0

    .line 1671
    :goto_0
    return-void

    .line 1669
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mScrollPositionY:I

    .line 1670
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->updateVisibleSlotRange()V

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1463
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mWidth:I

    .line 1464
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mHeight:I

    .line 1466
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mWidth:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->setSlotSize(II)V

    .line 1467
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->initLayoutParameters()V

    .line 1469
    sput p1, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mWidthGL:I

    .line 1470
    sput p2, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mHeightGL:I

    .line 1471
    return-void
.end method

.method public setSlotCount(II)Z
    .locals 6
    .param p1, "normalCount"    # I
    .param p2, "panoCount"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1259
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    .line 1260
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCount:I

    .line 1262
    add-int v1, p2, p1

    .line 1263
    .local v1, "totalCount":I
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotCount:I

    if-ne v1, v5, :cond_1

    .line 1287
    :cond_0
    :goto_0
    return v3

    .line 1264
    :cond_1
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotCount:I

    if-eqz v5, :cond_2

    .line 1265
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mHorizontalPadding:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$IntegerAnimation;

    invoke-virtual {v5, v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$IntegerAnimation;->setEnabled(Z)V

    .line 1266
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVerticalPadding:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$IntegerAnimation;

    invoke-virtual {v5, v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$IntegerAnimation;->setEnabled(Z)V

    .line 1268
    :cond_2
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotCount:I

    .line 1269
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mHorizontalPadding:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$IntegerAnimation;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$IntegerAnimation;->getTarget()I

    move-result v0

    .line 1270
    .local v0, "hPadding":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVerticalPadding:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$IntegerAnimation;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$IntegerAnimation;->getTarget()I

    move-result v2

    .line 1272
    .local v2, "vPadding":I
    if-ltz p1, :cond_4

    if-ltz p2, :cond_4

    .line 1273
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    .line 1274
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCount:I

    .line 1279
    :goto_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->setNormalCountText(I)V
    invoke-static {v5, p1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2400(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;I)V

    .line 1280
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->setPanoCountText(I)V
    invoke-static {v5, p2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2500(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;I)V

    .line 1281
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->setPanoBarPos()V
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2300(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)V

    .line 1282
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->setBackBarPos()V
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2600(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)V

    .line 1284
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->initLayoutParameters()V

    .line 1286
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->updateVisibleSlotRange()V

    .line 1287
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVerticalPadding:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$IntegerAnimation;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$IntegerAnimation;->getTarget()I

    move-result v5

    if-ne v2, v5, :cond_3

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mHorizontalPadding:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$IntegerAnimation;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$IntegerAnimation;->getTarget()I

    move-result v5

    if-eq v0, v5, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0

    .line 1276
    :cond_4
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotCount:I

    iput v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    goto :goto_1
.end method

.method public setSlotSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const v3, 0x7f090463

    .line 1474
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1475
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3600(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaHeight:I

    .line 1476
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3600(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090464

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaWidth:I

    .line 1479
    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCol:I

    if-ne v0, v1, :cond_1

    .line 1482
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mSysWidth:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2100(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPadding:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaWidth:I

    .line 1487
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPadding:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;->slotGap:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCol:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCol:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalWidth:I

    .line 1488
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalWidth:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalHeight:I

    .line 1489
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;->slotGap:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotGap:I

    .line 1490
    return-void

    .line 1484
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$2900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3600(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaHeight:I

    goto :goto_0
.end method

.method public setSlotSpec(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;)V
    .locals 0
    .param p1, "spec"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;

    .prologue
    .line 1243
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSpec:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;

    .line 1244
    return-void
.end method

.method public setVisibleRange(IIII)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "start2"    # I
    .param p4, "end2"    # I

    .prologue
    const/4 v1, 0x0

    .line 1640
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleStart:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleEnd:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleStart2:I

    if-ne p3, v0, :cond_1

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleEnd2:I

    if-ne p4, v0, :cond_1

    .line 1659
    :cond_0
    :goto_0
    return-void

    .line 1641
    :cond_1
    if-ge p1, p2, :cond_2

    .line 1642
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleStart:I

    .line 1643
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleEnd:I

    .line 1648
    :goto_1
    if-ge p3, p4, :cond_3

    .line 1649
    iput p3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleStart2:I

    .line 1650
    iput p4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleEnd2:I

    .line 1656
    :goto_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3500(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1657
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->this$0:Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->access$3500(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotRenderer;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleStart:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleEnd:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleStart2:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleEnd2:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotRenderer;->onVisibleRangeChanged(IIIII)V

    goto :goto_0

    .line 1645
    :cond_2
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleEnd:I

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleStart:I

    goto :goto_1

    .line 1651
    :cond_3
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCount:I

    if-nez v0, :cond_4

    .line 1652
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleEnd2:I

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleStart2:I

    goto :goto_2

    .line 1654
    :cond_4
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleEnd2:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleStart2:I

    goto :goto_2
.end method
