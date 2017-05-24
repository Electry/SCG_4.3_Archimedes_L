.class public Lcom/lenovo/scg/photos/views/GalleryThumbnailView;
.super Landroid/view/ViewGroup;
.source "GalleryThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/photos/views/GalleryThumbnailView$1;,
        Lcom/lenovo/scg/photos/views/GalleryThumbnailView$AdapterDataSetObserver;,
        Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;,
        Lcom/lenovo/scg/photos/views/GalleryThumbnailView$LayoutParams;,
        Lcom/lenovo/scg/photos/views/GalleryThumbnailView$GalleryThumbnailAdapter;
    }
.end annotation


# static fields
.field private static final ASPECT_RATIO:F

.field private static final LAND_UNITS:I = 0x2

.field private static final PORT_UNITS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GalleryThumbnailView"

.field private static final TOUCH_MODE_DRAGGING:I = 0x1

.field private static final TOUCH_MODE_FLINGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Lcom/lenovo/scg/photos/views/GalleryThumbnailView$GalleryThumbnailAdapter;

.field private mDataChanged:Z

.field private mFirstPosition:I

.field private mFlingVelocity:I

.field private mHasStableIds:Z

.field private mInLayout:Z

.field private mItemCount:I

.field private mLargeColumnUnitCount:I

.field private mLargeColumnWidth:I

.field private mLastTouchX:F

.field private final mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mMaximumVelocity:I

.field private final mObserver:Lcom/lenovo/scg/photos/views/GalleryThumbnailView$AdapterDataSetObserver;

.field private mOldItemCount:I

.field private mPopulating:Z

.field private final mRecycler:Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;

.field private final mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private final mScroller:Landroid/widget/OverScroller;

.field private mSmallColumnUnitCount:I

.field private mSmallColumnWidth:I

.field private mTouchMode:I

.field private mTouchRemainderX:F

.field private mTouchSlop:I

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->ASPECT_RATIO:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance v1, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;

    invoke-direct {v1, p0, v3}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;-><init>(Lcom/lenovo/scg/photos/views/GalleryThumbnailView;Lcom/lenovo/scg/photos/views/GalleryThumbnailView$1;)V

    iput-object v1, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mRecycler:Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;

    .line 63
    new-instance v1, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$AdapterDataSetObserver;

    invoke-direct {v1, p0, v3}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$AdapterDataSetObserver;-><init>(Lcom/lenovo/scg/photos/views/GalleryThumbnailView;Lcom/lenovo/scg/photos/views/GalleryThumbnailView$1;)V

    iput-object v1, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mObserver:Lcom/lenovo/scg/photos/views/GalleryThumbnailView$AdapterDataSetObserver;

    .line 99
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 111
    const/16 v1, 0x8

    iput v1, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mLargeColumnUnitCount:I

    .line 113
    const/16 v1, 0xa

    iput v1, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mSmallColumnUnitCount:I

    .line 126
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 127
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mTouchSlop:I

    .line 128
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mMaximumVelocity:I

    .line 129
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mFlingVelocity:I

    .line 130
    new-instance v1, Landroid/widget/OverScroller;

    invoke-direct {v1, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mScroller:Landroid/widget/OverScroller;

    .line 132
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, p1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 133
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, p1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 134
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->setWillNotDraw(Z)V

    .line 135
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->setClipToPadding(Z)V

    .line 136
    return-void
.end method

.method static synthetic access$202(Lcom/lenovo/scg/photos/views/GalleryThumbnailView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/photos/views/GalleryThumbnailView;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mDataChanged:Z

    return p1
.end method

.method static synthetic access$302(Lcom/lenovo/scg/photos/views/GalleryThumbnailView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/photos/views/GalleryThumbnailView;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mOldItemCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/photos/views/GalleryThumbnailView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/views/GalleryThumbnailView;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mItemCount:I

    return v0
.end method

.method static synthetic access$402(Lcom/lenovo/scg/photos/views/GalleryThumbnailView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/photos/views/GalleryThumbnailView;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mItemCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/lenovo/scg/photos/views/GalleryThumbnailView;)Lcom/lenovo/scg/photos/views/GalleryThumbnailView$GalleryThumbnailAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/views/GalleryThumbnailView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mAdapter:Lcom/lenovo/scg/photos/views/GalleryThumbnailView$GalleryThumbnailAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/photos/views/GalleryThumbnailView;)Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/views/GalleryThumbnailView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mRecycler:Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/photos/views/GalleryThumbnailView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/photos/views/GalleryThumbnailView;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mHasStableIds:Z

    return v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/photos/views/GalleryThumbnailView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/photos/views/GalleryThumbnailView;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->recycleAllViews()V

    return-void
.end method

.method private clearAllState()V
    .locals 1

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->removeAllViews()V

    .line 681
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mFirstPosition:I

    .line 684
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mRecycler:Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;

    invoke-virtual {v0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->clear()V

    .line 685
    return-void
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 499
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getChildCount()I

    move-result v0

    .line 500
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 503
    :cond_0
    :goto_0
    return v1

    .line 501
    :cond_1
    iget v3, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mItemCount:I

    if-eq v0, v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 503
    :cond_2
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getPaddingLeft()I

    move-result v4

    if-lt v3, v4, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private fillLeft(II)I
    .locals 4
    .param p1, "pos"    # I
    .param p2, "overhang"    # I

    .prologue
    const/4 v3, 0x0

    .line 531
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getPaddingLeft()I

    move-result v2

    sub-int v0, v2, p2

    .line 533
    .local v0, "end":I
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 534
    .local v1, "nextRight":I
    :goto_0
    if-le v1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 535
    invoke-direct {p0, p1, v1, v3}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->makeAndAddColumn(IIZ)I

    move-result v2

    sub-int/2addr p1, v2

    .line 536
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0

    .line 539
    :cond_0
    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mFirstPosition:I

    .line 540
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    return v2
.end method

.method private fillRight(II)I
    .locals 5
    .param p1, "pos"    # I
    .param p2, "overhang"    # I

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    add-int v0, v3, p2

    .line 521
    .local v0, "end":I
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 522
    .local v2, "nextLeft":I
    :goto_0
    if-ge v2, v0, :cond_1

    iget v3, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mItemCount:I

    if-ge p1, v3, :cond_1

    .line 523
    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->makeAndAddColumn(IIZ)I

    move-result v3

    add-int/2addr p1, v3

    .line 524
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v2

    goto :goto_0

    .line 521
    .end local v2    # "nextLeft":I
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v2

    goto :goto_0

    .line 526
    .restart local v2    # "nextLeft":I
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getPaddingRight()I

    move-result v4

    sub-int v1, v3, v4

    .line 527
    .local v1, "gridRight":I
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v1

    return v3
.end method

.method private makeAndAddColumn(IIZ)I
    .locals 14
    .param p1, "startPosition"    # I
    .param p2, "x"    # I
    .param p3, "forward"    # Z

    .prologue
    .line 257
    iget v3, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mLargeColumnWidth:I

    .line 258
    .local v3, "columnWidth":I
    const/4 v0, 0x0

    .line 259
    .local v0, "addViews":I
    iget v9, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mLargeColumnUnitCount:I

    .local v9, "remaining":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-lez v9, :cond_3

    add-int v11, p1, v6

    if-ltz v11, :cond_3

    add-int v11, p1, v6

    iget v12, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mItemCount:I

    if-ge v11, v12, :cond_3

    .line 260
    iget-object v11, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mAdapter:Lcom/lenovo/scg/photos/views/GalleryThumbnailView$GalleryThumbnailAdapter;

    add-int v12, p1, v6

    invoke-interface {v11, v12}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$GalleryThumbnailAdapter;->getIntrinsicAspectRatio(I)F

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_1

    .line 262
    add-int/lit8 v9, v9, -0x2

    .line 259
    :cond_0
    :goto_1
    if-eqz p3, :cond_2

    const/4 v11, 0x1

    :goto_2
    add-int/2addr v6, v11

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_1
    add-int/lit8 v9, v9, -0x3

    .line 266
    if-gez v9, :cond_0

    .line 267
    iget v11, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mSmallColumnUnitCount:I

    iget v12, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mLargeColumnUnitCount:I

    sub-int/2addr v11, v12

    add-int/2addr v9, v11

    .line 268
    iget v3, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mSmallColumnWidth:I

    goto :goto_1

    .line 259
    :cond_2
    const/4 v11, -0x1

    goto :goto_2

    .line 272
    :cond_3
    const/4 v7, 0x0

    .line 273
    .local v7, "nextTop":I
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v0, :cond_b

    .line 274
    if-eqz p3, :cond_5

    move v11, v6

    :goto_4
    add-int v8, p1, v11

    .line 275
    .local v8, "position":I
    const/4 v11, 0x0

    invoke-direct {p0, v8, v11}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->obtainView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 276
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-eq v11, p0, :cond_4

    .line 277
    iget-boolean v11, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mInLayout:Z

    if-eqz v11, :cond_7

    .line 278
    if-eqz p3, :cond_6

    const/4 v11, -0x1

    :goto_5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    invoke-virtual {p0, v1, v11, v12}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 283
    :cond_4
    :goto_6
    const/high16 v12, 0x3f000000    # 0.5f

    iget-object v11, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mAdapter:Lcom/lenovo/scg/photos/views/GalleryThumbnailView$GalleryThumbnailAdapter;

    invoke-interface {v11, v8}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$GalleryThumbnailAdapter;->getIntrinsicAspectRatio(I)F

    move-result v11

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v11, v11, v13

    if-ltz v11, :cond_9

    int-to-float v11, v3

    sget v13, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->ASPECT_RATIO:F

    div-float/2addr v11, v13

    :goto_7
    add-float/2addr v11, v12

    float-to-int v4, v11

    .line 284
    .local v4, "heightSize":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 285
    .local v5, "heightSpec":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 286
    .local v10, "widthSpec":I
    invoke-virtual {v1, v10, v5}, Landroid/view/View;->measure(II)V

    .line 287
    if-eqz p3, :cond_a

    move/from16 v2, p2

    .line 288
    .local v2, "childLeft":I
    :goto_8
    add-int v11, v2, v3

    add-int v12, v7, v4

    invoke-virtual {v1, v2, v7, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 289
    add-int/2addr v7, v4

    .line 273
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 274
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childLeft":I
    .end local v4    # "heightSize":I
    .end local v5    # "heightSpec":I
    .end local v8    # "position":I
    .end local v10    # "widthSpec":I
    :cond_5
    neg-int v11, v6

    goto :goto_4

    .line 278
    .restart local v1    # "child":Landroid/view/View;
    .restart local v8    # "position":I
    :cond_6
    const/4 v11, 0x0

    goto :goto_5

    .line 280
    :cond_7
    if-eqz p3, :cond_8

    const/4 v11, -0x1

    :goto_9
    invoke-virtual {p0, v1, v11}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->addView(Landroid/view/View;I)V

    goto :goto_6

    :cond_8
    const/4 v11, 0x0

    goto :goto_9

    .line 283
    :cond_9
    int-to-float v11, v3

    sget v13, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->ASPECT_RATIO:F

    mul-float/2addr v11, v13

    goto :goto_7

    .line 287
    .restart local v4    # "heightSize":I
    .restart local v5    # "heightSpec":I
    .restart local v10    # "widthSpec":I
    :cond_a
    sub-int v2, p2, v3

    goto :goto_8

    .line 291
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "heightSize":I
    .end local v5    # "heightSpec":I
    .end local v8    # "position":I
    .end local v10    # "widthSpec":I
    :cond_b
    return v0
.end method

.method private final obtainView(ILandroid/view/View;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "optScrap"    # Landroid/view/View;

    .prologue
    .line 613
    iget-object v7, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mRecycler:Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;

    invoke-virtual {v7, p1}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v5

    .line 614
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_0

    move-object v6, v5

    .line 645
    .end local v5    # "view":Landroid/view/View;
    .local v6, "view":Landroid/view/View;
    :goto_0
    return-object v6

    .line 619
    .end local v6    # "view":Landroid/view/View;
    .restart local v5    # "view":Landroid/view/View;
    :cond_0
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$LayoutParams;

    iget v1, v7, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$LayoutParams;->viewType:I

    .line 620
    .local v1, "optType":I
    :goto_1
    iget-object v7, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mAdapter:Lcom/lenovo/scg/photos/views/GalleryThumbnailView$GalleryThumbnailAdapter;

    invoke-interface {v7, p1}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$GalleryThumbnailAdapter;->getItemViewType(I)I

    move-result v2

    .line 621
    .local v2, "positionViewType":I
    if-ne v1, v2, :cond_5

    move-object v3, p2

    .line 623
    .local v3, "scrap":Landroid/view/View;
    :goto_2
    iget-object v7, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mAdapter:Lcom/lenovo/scg/photos/views/GalleryThumbnailView$GalleryThumbnailAdapter;

    invoke-interface {v7, p1, v3, p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$GalleryThumbnailAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 625
    if-eq v5, v3, :cond_1

    if-eqz v3, :cond_1

    .line 627
    iget-object v7, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mRecycler:Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;

    invoke-virtual {v7, v3}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 630
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 632
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eq v7, p0, :cond_3

    .line 633
    if-nez v0, :cond_6

    .line 634
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->generateDefaultLayoutParams()Lcom/lenovo/scg/photos/views/GalleryThumbnailView$LayoutParams;

    move-result-object v0

    .line 638
    :cond_2
    :goto_3
    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    move-object v4, v0

    .line 641
    check-cast v4, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$LayoutParams;

    .line 642
    .local v4, "sglp":Lcom/lenovo/scg/photos/views/GalleryThumbnailView$LayoutParams;
    iput p1, v4, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$LayoutParams;->position:I

    .line 643
    iput v2, v4, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$LayoutParams;->viewType:I

    move-object v6, v5

    .line 645
    .end local v5    # "view":Landroid/view/View;
    .restart local v6    # "view":Landroid/view/View;
    goto :goto_0

    .line 619
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "optType":I
    .end local v2    # "positionViewType":I
    .end local v3    # "scrap":Landroid/view/View;
    .end local v4    # "sglp":Lcom/lenovo/scg/photos/views/GalleryThumbnailView$LayoutParams;
    .end local v6    # "view":Landroid/view/View;
    .restart local v5    # "view":Landroid/view/View;
    :cond_4
    const/4 v1, -0x1

    goto :goto_1

    .line 621
    .restart local v1    # "optType":I
    .restart local v2    # "positionViewType":I
    :cond_5
    iget-object v7, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mRecycler:Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;

    invoke-virtual {v7, v2}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v3

    goto :goto_2

    .line 635
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v3    # "scrap":Landroid/view/View;
    :cond_6
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 636
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/lenovo/scg/photos/views/GalleryThumbnailView$LayoutParams;

    move-result-object v0

    goto :goto_3
.end method

.method private populate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mPopulating:Z

    .line 205
    iget-boolean v0, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mDataChanged:Z

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->layoutChildren(Z)V

    .line 206
    iget v0, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v2}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->fillRight(II)I

    .line 207
    iget v0, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mFirstPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v2}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->fillLeft(II)I

    .line 208
    iput-boolean v2, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mPopulating:Z

    .line 209
    iput-boolean v2, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mDataChanged:Z

    goto :goto_0
.end method

.method private recycleAllViews()V
    .locals 3

    .prologue
    .line 507
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 508
    iget-object v1, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mRecycler:Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 507
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 511
    :cond_0
    iget-boolean v1, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mInLayout:Z

    if-eqz v1, :cond_1

    .line 512
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->removeAllViewsInLayout()V

    .line 516
    :goto_1
    return-void

    .line 514
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->removeAllViews()V

    goto :goto_1
.end method

.method private recycleOffscreenViews()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 451
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getHeight()I

    move-result v3

    .line 452
    .local v3, "height":I
    const/4 v1, 0x0

    .line 453
    .local v1, "clearAbove":I
    move v2, v3

    .line 454
    .local v2, "clearBelow":I
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getChildCount()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_0

    .line 455
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 456
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-gt v5, v2, :cond_2

    .line 471
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 472
    invoke-virtual {p0, v6}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 473
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ltz v5, :cond_4

    .line 488
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void

    .line 462
    .restart local v0    # "child":Landroid/view/View;
    :cond_2
    iget-boolean v5, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mInLayout:Z

    if-eqz v5, :cond_3

    .line 463
    invoke-virtual {p0, v4, v7}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->removeViewsInLayout(II)V

    .line 468
    :goto_2
    iget-object v5, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mRecycler:Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;

    invoke-virtual {v5, v0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 454
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 465
    :cond_3
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->removeViewAt(I)V

    goto :goto_2

    .line 479
    :cond_4
    iget-boolean v5, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mInLayout:Z

    if-eqz v5, :cond_5

    .line 480
    invoke-virtual {p0, v6, v7}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->removeViewsInLayout(II)V

    .line 485
    :goto_3
    iget-object v5, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mRecycler:Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;

    invoke-virtual {v5, v0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 486
    iget v5, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mFirstPosition:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mFirstPosition:I

    goto :goto_1

    .line 482
    :cond_5
    invoke-virtual {p0, v6}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->removeViewAt(I)V

    goto :goto_3
.end method

.method private trackMotionScroll(IZ)Z
    .locals 12
    .param p1, "deltaX"    # I
    .param p2, "allowOverScroll"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 403
    invoke-direct {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->contentFits()Z

    move-result v1

    .line 404
    .local v1, "contentFits":Z
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 408
    .local v0, "allowOverhang":I
    if-nez v1, :cond_5

    .line 411
    iput-boolean v10, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mPopulating:Z

    .line 412
    if-lez p1, :cond_3

    .line 413
    iget v8, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mFirstPosition:I

    add-int/lit8 v8, v8, -0x1

    invoke-direct {p0, v8, v0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->fillLeft(II)I

    move-result v6

    .line 414
    .local v6, "overhang":I
    const/4 v7, 0x1

    .line 419
    .local v7, "up":Z
    :goto_0
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 420
    .local v3, "movedBy":I
    if-eqz v7, :cond_4

    move v8, v3

    :goto_1
    invoke-virtual {p0, v8}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->offsetChildren(I)V

    .line 421
    invoke-direct {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->recycleOffscreenViews()V

    .line 422
    iput-boolean v9, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mPopulating:Z

    .line 423
    sub-int v5, v0, v6

    .line 429
    .end local v6    # "overhang":I
    .end local v7    # "up":Z
    .local v5, "overScrolledBy":I
    :goto_2
    if-eqz p2, :cond_1

    .line 430
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v4

    .line 432
    .local v4, "overScrollMode":I
    if-eqz v4, :cond_0

    if-ne v4, v10, :cond_1

    if-nez v1, :cond_1

    .line 434
    :cond_0
    if-lez v5, :cond_1

    .line 435
    if-lez p1, :cond_6

    iget-object v2, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 436
    .local v2, "edge":Landroid/support/v4/widget/EdgeEffectCompat;
    :goto_3
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v8, v11

    invoke-virtual {v2, v8}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    .line 437
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 442
    .end local v2    # "edge":Landroid/support/v4/widget/EdgeEffectCompat;
    .end local v4    # "overScrollMode":I
    :cond_1
    if-eqz p1, :cond_2

    if-eqz v3, :cond_7

    :cond_2
    move v8, v10

    :goto_4
    return v8

    .line 416
    .end local v3    # "movedBy":I
    .end local v5    # "overScrolledBy":I
    :cond_3
    iget v8, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getChildCount()I

    move-result v11

    add-int/2addr v8, v11

    invoke-direct {p0, v8, v0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->fillRight(II)I

    move-result v6

    .line 417
    .restart local v6    # "overhang":I
    const/4 v7, 0x0

    .restart local v7    # "up":Z
    goto :goto_0

    .line 420
    .restart local v3    # "movedBy":I
    :cond_4
    neg-int v8, v3

    goto :goto_1

    .line 425
    .end local v3    # "movedBy":I
    .end local v6    # "overhang":I
    .end local v7    # "up":Z
    :cond_5
    move v5, v0

    .line 426
    .restart local v5    # "overScrolledBy":I
    const/4 v3, 0x0

    .restart local v3    # "movedBy":I
    goto :goto_2

    .line 435
    .restart local v4    # "overScrollMode":I
    :cond_6
    iget-object v2, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    goto :goto_3

    .end local v4    # "overScrollMode":I
    :cond_7
    move v8, v9

    .line 442
    goto :goto_4
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 699
    instance-of v0, p1, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$LayoutParams;

    return v0
.end method

.method public computeScroll()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 545
    iget-object v6, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 546
    iget-object v6, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v4

    .line 547
    .local v4, "x":I
    int-to-float v6, v4

    iget v7, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mLastTouchX:F

    sub-float/2addr v6, v7

    float-to-int v0, v6

    .line 548
    .local v0, "dx":I
    int-to-float v6, v4

    iput v6, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mLastTouchX:F

    .line 549
    invoke-direct {p0, v0, v5}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->trackMotionScroll(IZ)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v3, 0x1

    .line 551
    .local v3, "stopped":Z
    :goto_0
    if-nez v3, :cond_2

    iget-object v6, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 552
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 571
    .end local v0    # "dx":I
    .end local v3    # "stopped":Z
    .end local v4    # "x":I
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "dx":I
    .restart local v4    # "x":I
    :cond_1
    move v3, v5

    .line 549
    goto :goto_0

    .line 554
    .restart local v3    # "stopped":Z
    :cond_2
    if-eqz v3, :cond_4

    .line 555
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v2

    .line 556
    .local v2, "overScrollMode":I
    const/4 v6, 0x2

    if-eq v2, v6, :cond_3

    .line 558
    if-lez v0, :cond_5

    .line 559
    iget-object v1, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 563
    .local v1, "edge":Landroid/support/v4/widget/EdgeEffectCompat;
    :goto_2
    iget-object v6, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 564
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 566
    .end local v1    # "edge":Landroid/support/v4/widget/EdgeEffectCompat;
    :cond_3
    iget-object v6, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 568
    .end local v2    # "overScrollMode":I
    :cond_4
    iput v5, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mTouchMode:I

    goto :goto_1

    .line 561
    .restart local v2    # "overScrollMode":I
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .restart local v1    # "edge":Landroid/support/v4/widget/EdgeEffectCompat;
    goto :goto_2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 575
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 577
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1

    .line 578
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 579
    .local v1, "restoreCount":I
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 581
    .local v0, "height":I
    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 582
    neg-int v3, v0

    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 583
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getWidth()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 584
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 585
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->postInvalidateOnAnimation()V

    .line 587
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 589
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    .line 590
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 591
    .restart local v1    # "restoreCount":I
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getWidth()I

    move-result v2

    .line 592
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 594
    .restart local v0    # "height":I
    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 595
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getPaddingTop()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 596
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, v0, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 597
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 598
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->postInvalidateOnAnimation()V

    .line 600
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 602
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    .end local v2    # "width":I
    :cond_3
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->generateDefaultLayoutParams()Lcom/lenovo/scg/photos/views/GalleryThumbnailView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/lenovo/scg/photos/views/GalleryThumbnailView$LayoutParams;
    .locals 2

    .prologue
    .line 689
    new-instance v0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 704
    new-instance v0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$LayoutParams;

    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/lenovo/scg/photos/views/GalleryThumbnailView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/lenovo/scg/photos/views/GalleryThumbnailView$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 694
    new-instance v0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAdapter()Lcom/lenovo/scg/photos/views/GalleryThumbnailView$GalleryThumbnailAdapter;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mAdapter:Lcom/lenovo/scg/photos/views/GalleryThumbnailView$GalleryThumbnailAdapter;

    return-object v0
.end method

.method final layoutChildren(Z)V
    .locals 0
    .param p1, "queryAdapter"    # Z

    .prologue
    .line 243
    return-void
.end method

.method final offsetChildren(I)V
    .locals 7
    .param p1, "offset"    # I

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getChildCount()I

    move-result v1

    .line 492
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 493
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 494
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    add-int/2addr v5, p1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 492
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 496
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 296
    iget-object v7, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v0, v7, 0xff

    .line 298
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v5, v6

    .line 331
    :goto_0
    return v5

    .line 300
    :pswitch_1
    iget-object v7, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

    .line 301
    iget-object v7, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v7}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mLastTouchX:F

    .line 303
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    iput v7, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mActivePointerId:I

    .line 304
    const/4 v7, 0x0

    iput v7, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mTouchRemainderX:F

    .line 305
    iget v7, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mTouchMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 307
    iput v5, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mTouchMode:I

    goto :goto_0

    .line 313
    :pswitch_2
    iget v7, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mActivePointerId:I

    invoke-static {p1, v7}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 314
    .local v3, "index":I
    if-gez v3, :cond_1

    .line 315
    const-string v5, "GalleryThumbnailView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onInterceptTouchEvent could not find pointer with id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mActivePointerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - did StaggeredGridView receive an inconsistent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "event stream?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 317
    goto :goto_0

    .line 319
    :cond_1
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 320
    .local v4, "x":F
    iget v7, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mLastTouchX:F

    sub-float v7, v4, v7

    iget v8, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mTouchRemainderX:F

    add-float v2, v7, v8

    .line 321
    .local v2, "dx":F
    float-to-int v1, v2

    .line 322
    .local v1, "deltaY":I
    int-to-float v7, v1

    sub-float v7, v2, v7

    iput v7, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mTouchRemainderX:F

    .line 324
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 325
    iput v5, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mTouchMode:I

    goto :goto_0

    .line 298
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 171
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mInLayout:Z

    .line 172
    invoke-direct {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->populate()V

    .line 173
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mInLayout:Z

    .line 175
    sub-int v1, p4, p2

    .line 176
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 177
    .local v0, "height":I
    iget-object v2, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 178
    iget-object v2, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 179
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 147
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 148
    .local v4, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 149
    .local v1, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 150
    .local v5, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 152
    .local v2, "heightSize":I
    if-eq v4, v9, :cond_0

    .line 153
    const-string v6, "GalleryThumbnailView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onMeasure: must have an exact width or match_parent! Using fallback spec of EXACTLY "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    if-eq v1, v9, :cond_1

    .line 156
    const-string v6, "GalleryThumbnailView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onMeasure: must have an exact height or match_parent! Using fallback spec of EXACTLY "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_1
    invoke-virtual {p0, v5, v2}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->setMeasuredDimension(II)V

    .line 161
    iget v6, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mLargeColumnUnitCount:I

    div-int/lit8 v6, v6, 0x3

    int-to-float v3, v6

    .line 162
    .local v3, "portSpaces":F
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v3

    .line 163
    .local v0, "height":F
    sget v6, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->ASPECT_RATIO:F

    div-float v6, v0, v6

    float-to-int v6, v6

    iput v6, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mLargeColumnWidth:I

    .line 164
    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v3, v6

    .line 165
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v3

    .line 166
    sget v6, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->ASPECT_RATIO:F

    div-float v6, v0, v6

    float-to-int v6, v6

    iput v6, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mSmallColumnWidth:I

    .line 167
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 336
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 337
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v10, v1, 0xff

    .line 338
    .local v10, "action":I
    packed-switch v10, :pswitch_data_0

    .line 393
    :cond_0
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 340
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 342
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mLastTouchX:F

    .line 343
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mActivePointerId:I

    .line 344
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mTouchRemainderX:F

    goto :goto_0

    .line 348
    :pswitch_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v13

    .line 349
    .local v13, "index":I
    if-gez v13, :cond_1

    .line 350
    const-string v1, "GalleryThumbnailView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onInterceptTouchEvent could not find pointer with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mActivePointerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - did StaggeredGridView receive an inconsistent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "event stream?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v1, 0x0

    goto :goto_1

    .line 354
    :cond_1
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v15

    .line 355
    .local v15, "x":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mLastTouchX:F

    sub-float v1, v15, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mTouchRemainderX:F

    add-float v12, v1, v2

    .line 356
    .local v12, "dx":F
    float-to-int v11, v12

    .line 357
    .local v11, "deltaX":I
    int-to-float v1, v11

    sub-float v1, v12, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mTouchRemainderX:F

    .line 359
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 360
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mTouchMode:I

    .line 363
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mTouchMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 364
    move-object/from16 v0, p0

    iput v15, v0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mLastTouchX:F

    .line 366
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->trackMotionScroll(IZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 375
    .end local v11    # "deltaX":I
    .end local v12    # "dx":F
    .end local v13    # "index":I
    .end local v15    # "x":F
    :pswitch_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mTouchMode:I

    goto/16 :goto_0

    .line 379
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 380
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mActivePointerId:I

    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v14

    .line 381
    .local v14, "velocity":F
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mFlingVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 382
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mTouchMode:I

    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    float-to-int v4, v14

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 384
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mLastTouchX:F

    .line 385
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 387
    :cond_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mTouchMode:I

    goto/16 :goto_0

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mPopulating:Z

    if-nez v0, :cond_0

    .line 141
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 143
    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/lenovo/scg/photos/views/GalleryThumbnailView$GalleryThumbnailAdapter;)V
    .locals 3
    .param p1, "adapter"    # Lcom/lenovo/scg/photos/views/GalleryThumbnailView$GalleryThumbnailAdapter;

    .prologue
    const/4 v1, 0x0

    .line 653
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mAdapter:Lcom/lenovo/scg/photos/views/GalleryThumbnailView$GalleryThumbnailAdapter;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mAdapter:Lcom/lenovo/scg/photos/views/GalleryThumbnailView$GalleryThumbnailAdapter;

    iget-object v2, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mObserver:Lcom/lenovo/scg/photos/views/GalleryThumbnailView$AdapterDataSetObserver;

    invoke-interface {v0, v2}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$GalleryThumbnailAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 658
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->clearAllState()V

    .line 659
    iput-object p1, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mAdapter:Lcom/lenovo/scg/photos/views/GalleryThumbnailView$GalleryThumbnailAdapter;

    .line 660
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mDataChanged:Z

    .line 661
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$GalleryThumbnailAdapter;->getCount()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mItemCount:I

    iput v0, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mOldItemCount:I

    .line 662
    if-eqz p1, :cond_2

    .line 663
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mObserver:Lcom/lenovo/scg/photos/views/GalleryThumbnailView$AdapterDataSetObserver;

    invoke-interface {p1, v0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$GalleryThumbnailAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 664
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mRecycler:Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;

    invoke-interface {p1}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$GalleryThumbnailAdapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->setViewTypeCount(I)V

    .line 665
    invoke-interface {p1}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$GalleryThumbnailAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mHasStableIds:Z

    .line 669
    :goto_1
    invoke-direct {p0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->populate()V

    .line 670
    return-void

    :cond_1
    move v0, v1

    .line 661
    goto :goto_0

    .line 667
    :cond_2
    iput-boolean v1, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mHasStableIds:Z

    goto :goto_1
.end method
