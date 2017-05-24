.class public Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;
.super Landroid/widget/ScrollView;
.source "TutorialScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/tutorial/TutorialScrollView$TutorialPageChangeListener;,
        Lcom/lenovo/scg/camera/tutorial/TutorialScrollView$TutorialListener;
    }
.end annotation


# instance fields
.field private currentPage:I

.field private downY:I

.field private firstChild:Landroid/view/ViewGroup;

.field private mListener:Lcom/lenovo/scg/camera/tutorial/TutorialScrollView$TutorialListener;

.field private mPageChangeListener:Lcom/lenovo/scg/camera/tutorial/TutorialScrollView$TutorialPageChangeListener;

.field private pointList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private subChildCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 14
    iput v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->subChildCount:I

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->firstChild:Landroid/view/ViewGroup;

    .line 18
    iput v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->downY:I

    .line 20
    iput v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->currentPage:I

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->pointList:Ljava/util/ArrayList;

    .line 49
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->init()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    iput v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->subChildCount:I

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->firstChild:Landroid/view/ViewGroup;

    .line 18
    iput v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->downY:I

    .line 20
    iput v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->currentPage:I

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->pointList:Ljava/util/ArrayList;

    .line 44
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->init()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    iput v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->subChildCount:I

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->firstChild:Landroid/view/ViewGroup;

    .line 18
    iput v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->downY:I

    .line 20
    iput v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->currentPage:I

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->pointList:Ljava/util/ArrayList;

    .line 39
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->init()V

    .line 40
    return-void
.end method

.method private getPageCount()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->firstChild:Landroid/view/ViewGroup;

    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->firstChild:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->firstChild:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 81
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 54
    return-void
.end method

.method private smoothScrollToCurrent()V
    .locals 3

    .prologue
    .line 111
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->pointList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->currentPage:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->smoothScrollTo(II)V

    .line 112
    return-void
.end method

.method private smoothScrollToNextPage()V
    .locals 3

    .prologue
    .line 115
    iget v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->currentPage:I

    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 116
    iget v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->currentPage:I

    .line 117
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->pointList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->currentPage:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->smoothScrollTo(II)V

    .line 118
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->mPageChangeListener:Lcom/lenovo/scg/camera/tutorial/TutorialScrollView$TutorialPageChangeListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->mPageChangeListener:Lcom/lenovo/scg/camera/tutorial/TutorialScrollView$TutorialPageChangeListener;

    iget v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->currentPage:I

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView$TutorialPageChangeListener;->onPageChange(I)V

    .line 122
    :cond_0
    return-void
.end method

.method private smoothScrollToPrePage()V
    .locals 3

    .prologue
    .line 125
    iget v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->currentPage:I

    if-lez v0, :cond_0

    .line 126
    iget v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->currentPage:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->currentPage:I

    .line 127
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->pointList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->currentPage:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->smoothScrollTo(II)V

    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->mPageChangeListener:Lcom/lenovo/scg/camera/tutorial/TutorialScrollView$TutorialPageChangeListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->mPageChangeListener:Lcom/lenovo/scg/camera/tutorial/TutorialScrollView$TutorialPageChangeListener;

    iget v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->currentPage:I

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView$TutorialPageChangeListener;->onPageChange(I)V

    .line 132
    :cond_0
    return-void
.end method


# virtual methods
.method public arrowScroll(I)Z
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Landroid/widget/ScrollView;->computeScroll()V

    .line 167
    return-void
.end method

.method public fling(I)V
    .locals 0
    .param p1, "velocityX"    # I

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    .line 173
    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->currentPage:I

    return v0
.end method

.method public gotoPage(I)Z
    .locals 2
    .param p1, "page"    # I

    .prologue
    const/4 v1, 0x0

    .line 155
    if-lez p1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->subChildCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->pointList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->smoothScrollTo(II)V

    .line 157
    iput p1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->currentPage:I

    .line 158
    const/4 v0, 0x1

    .line 160
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public nextPage()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->smoothScrollToNextPage()V

    .line 139
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 59
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->receiveChildInfo()V

    .line 60
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 194
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 195
    const-string v0, "jiaxiaowei"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScrollChanged----l:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",t:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",oldl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",oldt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",currentPage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->currentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->mListener:Lcom/lenovo/scg/camera/tutorial/TutorialScrollView$TutorialListener;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->mListener:Lcom/lenovo/scg/camera/tutorial/TutorialScrollView$TutorialListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView$TutorialListener;->onScrollChanged(IIII)V

    .line 199
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 107
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 88
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->downY:I

    goto :goto_0

    .line 95
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->downY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->downY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->smoothScrollToPrePage()V

    .line 104
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->smoothScrollToNextPage()V

    goto :goto_2

    .line 102
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->smoothScrollToCurrent()V

    goto :goto_2

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public prePage()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->smoothScrollToPrePage()V

    .line 146
    return-void
.end method

.method public receiveChildInfo()V
    .locals 4

    .prologue
    .line 63
    const-string v2, "jiaxiaowei"

    const-string/jumbo v3, "receiveChildInfo---------"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->firstChild:Landroid/view/ViewGroup;

    .line 65
    iget-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->firstChild:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->firstChild:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->subChildCount:I

    .line 67
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->subChildCount:I

    if-ge v1, v2, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 69
    .local v0, "height":I
    iget-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->pointList:Ljava/util/ArrayList;

    mul-int v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v0    # "height":I
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->firstChild:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->subChildCount:I

    .line 74
    return-void
.end method

.method public scrollTo(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 184
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 185
    return-void
.end method

.method public setPageChangeListener(Lcom/lenovo/scg/camera/tutorial/TutorialScrollView$TutorialPageChangeListener;)V
    .locals 0
    .param p1, "mPageChangeListener"    # Lcom/lenovo/scg/camera/tutorial/TutorialScrollView$TutorialPageChangeListener;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->mPageChangeListener:Lcom/lenovo/scg/camera/tutorial/TutorialScrollView$TutorialPageChangeListener;

    .line 208
    return-void
.end method

.method public setTutorialListener(Lcom/lenovo/scg/camera/tutorial/TutorialScrollView$TutorialListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/tutorial/TutorialScrollView$TutorialListener;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/lenovo/scg/camera/tutorial/TutorialScrollView;->mListener:Lcom/lenovo/scg/camera/tutorial/TutorialScrollView$TutorialListener;

    .line 204
    return-void
.end method
