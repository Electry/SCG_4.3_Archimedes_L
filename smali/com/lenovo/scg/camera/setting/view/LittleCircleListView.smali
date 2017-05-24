.class public Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;
.super Landroid/widget/ListView;
.source "LittleCircleListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$OnItemScrollListener;,
        Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$OnItemCenteredListener;,
        Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$CenterRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCROLL_DURATION:I = 0x1f4

.field public static final DEFAULT_SELECTION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LittleCircleListView"


# instance fields
.field private final mCenterRunnable:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$CenterRunnable;

.field private mIsForceCentering:Z

.field private mOnItemCenteredListener:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$OnItemCenteredListener;

.field private mOnItemScrollListener:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$OnItemScrollListener;

.field private mScrollDuration:I

.field private mViewModifier:Lcom/lenovo/scg/camera/setting/view/CircularViewModifier;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$CenterRunnable;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$CenterRunnable;-><init>(Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->mCenterRunnable:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$CenterRunnable;

    .line 26
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->mScrollDuration:I

    .line 35
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 37
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 38
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 39
    return-void
.end method

.method static synthetic access$002(Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->mIsForceCentering:Z

    return p1
.end method


# virtual methods
.method public findViewAt(II)Landroid/view/View;
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->getChildCount()I

    move-result v0

    .line 159
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 160
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 161
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 162
    .local v3, "x0":I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    .line 163
    .local v5, "y0":I
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int v4, v7, v3

    .line 164
    .local v4, "x1":I
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int v6, v7, v5

    .line 166
    .local v6, "y1":I
    if-lt p1, v3, :cond_0

    if-gt p1, v4, :cond_0

    if-lt p2, v5, :cond_0

    if-gt p2, v6, :cond_0

    .line 171
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "x0":I
    .end local v4    # "x1":I
    .end local v5    # "y0":I
    .end local v6    # "y1":I
    :goto_1
    return-object v2

    .line 159
    .restart local v2    # "v":Landroid/view/View;
    .restart local v3    # "x0":I
    .restart local v4    # "x1":I
    .restart local v5    # "y0":I
    .restart local v6    # "y1":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "x0":I
    .end local v4    # "x1":I
    .end local v5    # "y0":I
    .end local v6    # "y1":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public findViewAtCenter()Landroid/view/View;
    .locals 2

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->findViewAt(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 43
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->setSelection(I)V

    .line 46
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 142
    const-string v0, "LittleCircleListView"

    const-string/jumbo v1, "onScroll()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->mOnItemScrollListener:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$OnItemScrollListener;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->mOnItemScrollListener:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$OnItemScrollListener;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->findViewAtCenter()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$OnItemScrollListener;->onItemScroll(Landroid/view/View;)V

    .line 146
    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 5
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onScrollChanged(IIII)V

    .line 52
    const-string v3, "LittleCircleListView"

    const-string/jumbo v4, "onScrollChanged()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->mViewModifier:Lcom/lenovo/scg/camera/setting/view/CircularViewModifier;

    if-eqz v3, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->getChildCount()I

    move-result v0

    .line 57
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 58
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 59
    .local v2, "v":Landroid/view/View;
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->mViewModifier:Lcom/lenovo/scg/camera/setting/view/CircularViewModifier;

    invoke-virtual {v3, v2, p0}, Lcom/lenovo/scg/camera/setting/view/CircularViewModifier;->applyToView(Landroid/view/View;Landroid/widget/AbsListView;)V

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 108
    if-nez p2, :cond_1

    .line 110
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->mIsForceCentering:Z

    if-nez v1, :cond_1

    .line 113
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->mIsForceCentering:Z

    .line 115
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->findViewAtCenter()Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, "childView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 119
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->mOnItemCenteredListener:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$OnItemCenteredListener;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->mOnItemCenteredListener:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$OnItemCenteredListener;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$OnItemCenteredListener;->onItemCentered(Landroid/view/View;)V

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->mCenterRunnable:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$CenterRunnable;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$CenterRunnable;->setView(Landroid/view/View;)V

    .line 124
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->mCenterRunnable:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$CenterRunnable;

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 128
    .end local v0    # "childView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->mCenterRunnable:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$CenterRunnable;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->mIsForceCentering:Z

    .line 137
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnItemCenteredListener(Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$OnItemCenteredListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$OnItemCenteredListener;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->mOnItemCenteredListener:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$OnItemCenteredListener;

    .line 84
    return-void
.end method

.method public setOnItemScrollListener(Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$OnItemScrollListener;)V
    .locals 0
    .param p1, "mOnItemScrollListener"    # Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$OnItemScrollListener;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->mOnItemScrollListener:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$OnItemScrollListener;

    .line 213
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setViewModifier(Lcom/lenovo/scg/camera/setting/view/CircularViewModifier;)V
    .locals 0
    .param p1, "modifier"    # Lcom/lenovo/scg/camera/setting/view/CircularViewModifier;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->mViewModifier:Lcom/lenovo/scg/camera/setting/view/CircularViewModifier;

    .line 74
    return-void
.end method

.method public smoothScrollToView(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    add-float v2, v3, v4

    .line 96
    .local v2, "y":F
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v1, v3, v5

    .line 97
    .local v1, "halfHeight":F
    sub-float v3, v2, v1

    float-to-int v0, v3

    .line 99
    .local v0, "distance":I
    iget v3, p0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->mScrollDuration:I

    invoke-virtual {p0, v0, v3}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->smoothScrollBy(II)V

    .line 100
    return-void
.end method
